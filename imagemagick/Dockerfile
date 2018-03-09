FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y build-essential checkinstall \
  libx11-dev libxext-dev zlib1g-dev libpng12-dev \
  libjpeg-dev libfreetype6-dev libxml2-dev
ADD https://www.imagemagick.org/download/ImageMagick.tar.gz ./
RUN tar xzvf ImageMagick.tar.gz
RUN /ImageMagick-7.0.7-25/configure '--with-png=yes' '--with-jpeg=yes'
RUN cd /ImageMagick-7.0.7-25/
RUN make
RUN make install
RUN ldconfig /usr/local/lib
