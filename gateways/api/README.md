# API Gateway

- Gateway to all the services.

## Installation

- You need postgresql installed on your machine.
- Mac users may encounter problems and should install using;

```sh
which pg_config
```

using the pg_config value above, replace after the equal sign below

```sh
env ARCHFLAGS="-arch x86_64" gem install pg -- --with-pg-config=/opt/homebrew/Cellar/postgresql/14.3/bin/pg_config
or
bundle config build.pg --with-pg-config=/opt/homebrew/Cellar/postgresql/14.3/bin/pg_config
bundle install
```

### Running locally

- Use;

```sh
bundle exec rerun config.ru
```

### Using Activerecord

- Refer to [this article](https://github.com/sinatra/sinatra-recipes/blob/master/databases/postgresql-activerecord.md) to learn more.
