#clang++ -std=c++11 -stdlib=libc++ $1 -o $(basename $1)
g++ -std=c++0x $1 -o $(basename $1 .cpp)
