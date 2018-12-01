FROM ubuntu:16.04
WORKDIR /home/
RUN apt-get update
RUN apt-get install -y build-essential checkinstall \
  libx11-dev libxext-dev zlib1g-dev libpng12-dev \
  libjpeg-dev libfreetype6-dev libxml2-dev libmagick++-dev
ADD https://www.imagemagick.org/download/ImageMagick.tar.gz /home/
RUN tar xzvf ImageMagick.tar.gz
RUN cd /home/ImageMagick-7.0.7-26/
RUN /home/ImageMagick-7.0.7-26/configure '--with-png=yes' '--with-jpeg=yes'
RUN make
RUN make install
RUN ldconfig /usr/local/lib
