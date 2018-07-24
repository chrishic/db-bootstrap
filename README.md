# db-bootstrap

## Building and Running Locally

### Configuration

When running via `docker-compose`, you'll need a `.env` file with the following variables:

```
# App environment
APP_ENV=local
RESTORE_FROM_PROD=1
```

### Building
```
$ docker-compose down --rmi all
$ docker-compose build
```

### Running
```
$ docker-compose up db
```

### Verification
Connect to Postgres instance on localhost:32099
