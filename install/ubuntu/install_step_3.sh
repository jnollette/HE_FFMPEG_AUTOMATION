
mkdir ~/ffmpeg_sources;
cd ~/ffmpeg_sources
wget http://ffmpeg.org/releases/ffmpeg-3.3.tar.xz;
#tar xjvf ffmpeg-3.3.tar.xz;
tar -xvf ffmpeg-3.3.tar.xz;
cd ffmpeg-3.3;
PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
--prefix="$HOME/ffmpeg_build" \
--pkg-config-flags="--static" \
--extra-cflags="-I$HOME/ffmpeg_build/include" \
--extra-ldflags="-L$HOME/ffmpeg_build/lib" \
--bindir="$HOME/bin" \
--enable-gpl \
--enable-libass \
--enable-libfdk-aac \
--enable-libfreetype \
--enable-libmp3lame \
--enable-libopus \
--enable-libtheora \
--enable-libvorbis \
--enable-libvpx \
--enable-libx264 \
--enable-libx265 \
--enable-nonfree
PATH="$HOME/bin:$PATH" make
make install
make distclean
