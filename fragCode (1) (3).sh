
Это фрагмент в котором видны особенности установки для manjaro os

# If we're on Arch linux, use gcc v5
if [[ `uname -a` == *"ARCH"* ]]; then
    path_to_gcc5=$(which gcc-5)
    if [ -x "$path_to_gcc5" ]; then
      export CC="$path_to_gcc5"
    else
      echo "Warning: GCC v5 not found. CUDA v8 is incompatible with GCC v6, if installation fails, consider running \$ pacman -S gcc5"
    fi
fi

