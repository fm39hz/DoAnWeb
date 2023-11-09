# to build local image from PowerShell (e.g. when you're authoring this dockerfile):
# docker build -f ./dockerfile . --build-arg APP_ENV=dev

# build backend
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS service-build

# copy backend files into 'service' folder in prep for dotnet commands
COPY service /service

# ensure tests are passing
ARG ASPNETCORE_ENVIRONMENT
WORKDIR /service/WebService.API
# build the service separately to generate the typescript client with better error output
RUN dotnet build 
# skip build on test since it was just done previously
RUN dotnet test --no-build

# setup frontend
FROM node:9.2.0 AS client-build
ARG APP_ENV
RUN echo APP_ENV = ${APP_ENV}
RUN npm config set unsafe-perm true
COPY client /client

# build frontend
WORKDIR /client
RUN npm ci
ENV REACT_APP_ENV=${APP_ENV}
RUN npm run build

# copy our frontend into published app's wwwroot folder
FROM service-build AS publisher
COPY --from=client-build /client/build /app/wwwroot/

# build & publish our API
RUN dotnet publish /service/WebService.API/WebService.csproj -c Release -o /app

# build runtime image (contains full stack)
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=publisher /app ./
# run as non-privileged user
RUN groupadd -g 1000 appuser && \
    useradd -r -u 1000 -g appuser appuser && \
    chown -R appuser:appuser /app && \
    chmod -R 755 /app    
USER appuser
# use non-privileged port
ENV ASPNETCORE_URLS="http://+:8080"
EXPOSE 8080
ENTRYPOINT ["dotnet", "WebService.API.dll"]