FROM debian:buster-slim

RUN apt-get -y -q update && apt-get install -y libglib2.0-0 libmariadb-dev-compat libmariadb-dev && apt-get clean && apt-get autoclean
ADD $PWD/target/my* /usr/bin/

CMD ["/bin/bash"]
