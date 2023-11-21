# ITProg

## Description
Веб-приложение, позволяющее просматривать статьи на интересующие 
вас темы.

## Running in development mode
* Ruby 3.2.2
* PostgreSQL
* Node.js

Fill credentials in `.env` file as:
```
IT_PROG_DEV_DATABASE_USERNAME=your_postgres_username
IT_PROG_DEV_DATABASE_PASSWORD=your_postgres_password
```

Install dependencies:
```bash
bundle install
npm install
```

Run the frontend dev build:
```bash
foreman start -f Procfile.dev
```

Run the web server from IDE or terminal with:
```bash
rails s
```

## Features
