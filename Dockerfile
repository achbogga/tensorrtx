FROM nvcr.io/nvidia/tensorrt:22.03-py3
RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qq -y --no-install-recommends \
    build-essential cmake git pkg-config libgtk-3-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev libjpeg-dev libpng-dev libtiff-dev ffmpeg \
    gfortran openexr libatlas-base-dev python3-dev python3-numpy \
    libtbb2 libtbb-dev libdc1394-22-dev unzip wget vim
#
RUN cd \
    && wget https://github.com/opencv/opencv/archive/4.5.0.zip \
    && unzip 4.5.0.zip \
    && cd opencv-4.5.0 \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make -j8 \
    && make install \
    && cd \
    && rm 4.5.0.zip