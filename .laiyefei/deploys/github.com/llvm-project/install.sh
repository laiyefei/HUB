mkdir _installed && cd _installed

mkdir -p $LAIYEFEI_PRODUCTS/github.com/llvm-project

cmake -D CMAKE_INSTALL_PREFIX=$LAIYEFEI_PRODUCTS/github.com/llvm-project -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" $LAIYEFEI_PROJECTS/github.com/llvm-project/llvm

make DESTDIR=$LAIYEFEI_PRODUCTS/github.com/llvm-project install

echo 'export PATH=$LAIYEFEI_PRODUCTS/github.com/llvm-project/usr/local/bin:$PATH' >>~/.bash_profile

source ~/.bash_profile

cd .. 
