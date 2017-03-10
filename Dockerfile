FROM debian:jessie-slim

RUN apt-get -y -q update && apt-get install -y libglib2.0-0 libmysqlclient-dev && apt-get clean && apt-get autoclean
ADD $PWD/target/my* /usr/bin/

CMD ["/bin/bash"]
