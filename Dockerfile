FROM centos:7

RUN yum install -y \
      cairo \
      fftw \
      fontconfig \
      freetype \
      ghostscript \
      lcms2 \
      libpng \
      libtiff \
      libtool-ltdl \
      libwmf-lite \
      libX11 \
      libXext \
      libXt \
      pango

ENV IMAGEMAGICK_VERSION 7.0.7-14
RUN rpm -i https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-libs-${IMAGEMAGICK_VERSION}.x86_64.rpm && \
    rpm -i https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-${IMAGEMAGICK_VERSION}.x86_64.rpm

WORKDIR /root
