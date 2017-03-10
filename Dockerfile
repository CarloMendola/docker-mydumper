FROM mysqlboy/docker-mydumper:build

ADD $PWD/target/my* /usr/bin/

CMD ["bash"]
