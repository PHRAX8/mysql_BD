# mysql_BD
## instruções
- Criação da rede para relacionar o banco de dados à interface:
docker network create mysql-network
- Instalação do MySQL:
Puxar a Imagem do MySQL no Docker Hub:
docker pull mysql:latest
- Persistência dos dados:
mkdir -p $HOME/docker/volumes/mysqldb
- Criar e executar o contêiner do MySQL:
docker run -d --name mysql-server \
  --network mysql-network \
  -e MYSQL_ROOT_PASSWORD=password \
  -v $HOME/docker/volumes/mysqldb:/var/lib/mysql \
  mysql:latest
- instalação do phpMyAdmin:
- Puxar a Imagem do phpMyAdmin no Docker Hub:
  docker pull phpmyadmin:latest
- Criar e executar o contêiner do phpMyAdmin:
  docker run -d --name phpmyadmin \
  --network mysql-network \
  -p 8080:80 \
  -e PMA_HOST=mysql-server \
  -e PMA_PORT=3306 \
  phpmyadmin:latest

