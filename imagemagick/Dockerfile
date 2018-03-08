FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y build-essential checkinstall
ADD https://www.imagemagick.org/download/ImageMagick.tar.gz ./
RUN tar xzvf ImageMagick.tar.gz
RUN /ImageMagick-7.0.7-25/configure
RUN cd /ImageMagick-7.0.7-25/
RUN make
RUN make install
