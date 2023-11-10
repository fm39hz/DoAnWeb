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

## Triển khai

### Setup Project

- Clone Project về

  - HTTPS:

    ```bash
    git clone https://github.com/fm39hz/DoAnWeb.git
    ```

  - SSH:

    ```bash
    git clone git@github.com:fm39hz/  DoAnWeb.git
    ```

- Clone Submodule về

  ```bash
  git submodule init
  git submodule sync
  git submodule update
  ```

### Client side

#### Cài đặt

- Di chuyển tới Thư mục chứa client

  ```bash
  cd WebClient
  ```

- Cài đặt dependencies

  ```bash
  npm install
  ```

#### Build

```bash
npm run build
```

#### Khởi chạy client

- Khởi chạy tại <http://localhost:5173>.

  ```bash
  npm run dev
  ```

#### Chạy Test

- Test bằng terminal

  ```bash
  npm run test
  ```

- Test bằng ui

  ```bash
  npm run test:ui
  ```

### Service side

#### Cài đặt

- Di chuyển tới Thư mục chứa service

  ```bash
  cd WebService
  ```

- Cài đặt package

  ```bash
  dotnet restore
  ```

#### Build

```bash
dotnet build
```

#### Chạy Service

- Service sẽ chạy với url <http://localhost:5234/api/>

  ```bash
  dotnet run
  ```

#### Test

```bash
dotnet test
```
