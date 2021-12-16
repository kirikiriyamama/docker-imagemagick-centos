FROM centos:8

RUN yum install -y epel-release
RUN yum install -y \
      cairo \
      fftw \
      fontconfig \
      freetype \
      ghostscript \
      ilmbase \
      lcms2 \
      libpng \
      libraqm \
      LibRaw \
      librsvg2 \
      libtiff \
      libtool-ltdl \
      libwebp \
      libwmf-lite \
      libX11 \
      libXext \
      libXt \
      OpenEXR-libs \
      pango

ENV IMAGEMAGICK_VERSION 7.1.0-17
RUN rpm -i https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-libs-${IMAGEMAGICK_VERSION}.x86_64.rpm && \
    rpm -i https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-${IMAGEMAGICK_VERSION}.x86_64.rpm

WORKDIR /root
