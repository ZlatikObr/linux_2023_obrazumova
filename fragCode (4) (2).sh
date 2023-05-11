
Это фрагмент в котором видны особенности установки для fedora. 
Прикол в том, что OS X использует clang (компилятор для яз. С и С++),  а у fedorы есть альтернатива GCC. 

Обратите внимание, что в строчке 11 написано, что плохо работает с GCC версией, так что придется искать обходные пути для установки. Сама не пользуюсь fedora. 


# If we're on OS X, use clang
if [[ `uname` == "Darwin" ]]; then
    # make sure that we build with Clang. CUDA's compiler nvcc
    # does not play nice with any recent GCC version.
    export CC=clang
    export CXX=clang++
fi
