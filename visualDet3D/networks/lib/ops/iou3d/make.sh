export CUDA_HOME=/usr/lib/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/cuda
export CUDA_TOOLKIT_ROOT_DIR=$CUDA_HOME
export LD_LIBRARY_PATH="$CUDA_HOME/extras/CUPTI/lib64:$LD_LIBRARY_PATH"
export LIBRARY_PATH=$CUDA_HOME/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
export CFLAGS="-fopenmp -I$CUDA_HOME/include $CFLAGS"
python3 setup.py build_ext --inplace
