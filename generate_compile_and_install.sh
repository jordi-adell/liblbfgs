
lbfgs_dir=`dirname $0`;
lbfgs_dir=`readlink -m $lbfgs_dir`;

curr_dir=$PWD

trap "cd $curr_dir" EXIT

cd ${lbfgs_dir}
./autogen.sh 
./configure
make -j 2
make install

# cd swig/python/
# ./prepare.sh
# python setup.py build_ext
# python setup.py install
