# lisp-on-docker
use `clisp` 

## setup
```sh
$ docker-compose build
$ docker-compose up -d
```

## exec lisp
### REPL
```sh
$ docker-compose exec clisp clisp
```

### exec script
```sh
$ docker-compose exec clisp ash
$ clisp /app/src/binary-search.lisp 50
```
