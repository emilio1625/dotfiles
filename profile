# Path obliviously
export PATH=$PATH:/opt/altera/13.0sp1/modelsim_ase/linuxaloem
export PATH=$PATH:/opt/altera/13.0sp1/quartus/bin
export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export QUARTUS_64BIT=1

# Development enviroment
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_RUN_PATH=$LD_RUN_PATH:/usr/local/lib
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
export GTAGSLABEL=ctags
export MANPATH="/usr/local/man:~/.local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Gstreamer environment
# export GST_PLUGIN_PATH_1_0=/home/emilio1625/omx/lib/gstreamer-1.0/
# export GST_OMX_CONFIG_DIR=/home/emilio1625/omx/etc/xdg/
# export LD_LIBRARY_PATH=/home/emilio1625/omx/lib/gstreamer-1.0/

# i3 enviroment
export TERMINAL=sakura
export XKB_DEFAULT_LAYOUT=latam
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export ECORE_IMF_MODULE=ibus
export XMODIFIERS=@im=ibus
# export GDK_BACKEND=wayland
# export CLUTTER_BACKEND=wayland
# export QT_QPA_PLATFORM=wayland-egl
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

# ROS enviroment
source /opt/ros/indigo/setup.zsh
if [[ -a ~/catkin_ws/devel/setup.zsh ]]; then
    source ~/catkin_ws/devel/setup.zsh
fi

