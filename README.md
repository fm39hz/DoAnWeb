# Website bán linh kiện điện tử

Đồ án công nghệ thiết kế web nâng cao nhóm 5

## Thành viên

- Phạm Danh Hiển (Trưởng nhóm): BackEnd, Database
- Ngô Tiến long: FrontEnd
- Nguyễn Thạc Trung Hiếu: FrontEnd, Document

## Công nghệ sử dụng

- FrontEnd
  - [Vite](https://vitejs.dev)
  - [ReactJS](https://reactjs.org)
  - [TypeScript](https://www.typescriptlang.org)
  - [Vitest](https://vitest.dev)
  - [Testing Library](https://testing-library.com)
  - [Tailwindcss](https://tailwindcss.com)
  - [Eslint](https://eslint.org)
  - [Prettier](https://prettier.io)
  - [HeroIcons](https://heroicons.com/)
- BackEnd
  - [ASP.net](https://asp.net)
  - [EFCore](https://github.com/dotnet/efcore)
  - [SQLServer2022](https://www.microsoft.com/en-us/sql-server/)
- Deploying
  - [Docker](https://docker.com)

## Triển khai

### Setup Project

- Clone Project về

  - HTTPS:

  ```bash
  git clone https://github.com/fm39hz/DoAnWeb.git
  ```

  - SSH:

  ```bash
  git clone git@github.com:fm39hz/DoAnWeb.git
  ```

- Clone Submodule

  ```bash
  git submodule init
  git submodule sync
  git submodule update
  ```

### Cài đặt server

#### Thiết lập Db

- Cài đặt [Docker Desktop](https://docker.com)
- Compose Image

  ```bash
  docker-compose build
  ```

- Khởi tạo db

  ```bash
  docker exec -it mssql opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P '@VeryComplexPassword1thTime'
  ```

  ```sql server
  use master
  create database WebData
  go;
  exit
  ```

- Import db

  ```bash
  docker exec -it mssql mkdir /var/opt/mssql/backup && docker cp WebData/WebData.sql mssql:/var/opt/mssql/backup/WebData.sql
  ```

  ```bash
  docker exec -it mssql opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P '@VeryComplexPassword1thTime' -i '/var/opt/mssql/backup/WebData.sql'
  ```

#### Triển khai

- Di chuyển tới folder DoAnWeb

  ```bash
  cd DoAnWeb
  ```

- Khởi chạy

  ```bash
  docker-compose up
  ```
