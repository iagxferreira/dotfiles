# Construindo a imagem docker

```shell
$ docker build -t <nome da imagem> <diretório da dockerfile>
```

# Rodando a imagem docker

```shell
$ docker run -p <porta interna>:<porta externa> -d <nome da imagem>
```


### Alternativa

```shell
$ docker-compose up
```