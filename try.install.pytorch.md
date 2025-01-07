

- install pytorch
```bash
cd /data1/tools/python
python3.m.venv pytorch
source  pytorch/bin/activate
#pip install --upgrade pip
pip3 install --upgrade pip
pip3 install wheel torch
#pip3 install wheel pytorch
#pip install pytorch
```

- reference : https://pytorch.org/resources/
- reference : https://pytorch.apachecn.org/

- reference : Setting Up ExecuTorch
  - https://pytorch.org/executorch/stable/getting-started-setup.html
```bash

pip install executorch

## reference: https://pytorch.ac.cn/executorch-overview
## reference: https://pytorch.ac.cn/executorch/stable/getting-started-setup.html
## reference: https://pytorch.org/executorch-overview
## reference: https://pytorch.org/executorch/stable/getting-started-setup.html

#### Create and activate a conda environment named "executorch"
#conda create -p /data1/work/tinyml/conda-pytorch -yn executorch python=3.10.0
conda create -p /data1/work/tinyml/conda-pytorch python=3.10.0 numpy=1.26.0
# conda activate executorch
conda activate /data1/work/tinyml/conda-pytorch

#### Clone and install ExecuTorch requirements
# Clone the ExecuTorch repo from GitHub
git clone -b release/0.4 https://github.com/pytorch/executorch.git
cd executorch

# Update and pull submodules
git submodule sync
git submodule update --init

# Install ExecuTorch pip package and its dependencies, as well as
# development tools like CMake.
# If developing on a Mac, make sure to install the Xcode Command Line Tools first.
pip3 install pyyaml
#pip3 install --upgrade numpy
conda search numpy
#conda install numpy=2.0.1
#conda install numpy=1.21.3
#conda install numpy=1.23.2
#worked#conda install numpy=1.23.4
# tensorflow 2.18.0 requires numpy<2.1.0,>=1.26.0, but you have numpy 1.21.3 which is incompatible.
#tensorboard 2.18.0 requires markdown>=2.6.8, which is not installed.
#tensorflow 2.18.0 requires numpy<2.1.0,>=1.26.0, but you have numpy 1.21.3 which is incompatible.
#tflite-runtime 2.14.0 requires numpy>=1.23.2, but you have numpy 1.21.3 which is incompatible
conda install markdown
conda install numpy=1.26.0
./install_requirements.sh

# Use the --pybind flag to install with pybindings and dependencies for other backends.
# ./install_requirements.sh --pybind <coreml | mps | xnnpack>

#### Create an ExecuTorch program


### [good]reference : https://pytorch.ac.cn/executorch/stable/executorch-arm-delegate-tutorial.html
cd examples/arm/
./setup.sh --i-agree-to-the-contained-eula
# [main] success!

./run.sh
#issue# cmake --build /data1/work/tinyml/executorch/cmake-out -j-1 --target install --config Release
# cmake --build /data1/work/tinyml/executorch/cmake-out -j 2 --target install --config Release
#
# done#_PMU_AXI1_RD_DATA_BEAT_RECEIVED, ETHOSU_PMU_AXI0_WR_DATA_BEAT_WRITTEN, ETHOSU_PMU_NPU_IDLE]
# done#I [executorch:arm_executor_runner.cpp:383] Model executed successfully.
# done#I [executorch:arm_executor_runner.cpp:387] 1 outputs: 
# done#Output[0][0]: -0.640891
# ...
# Output[0][999]: 1.319481
# done# I [executorch:arm_executor_runner.cpp:424] Program complete, exiting.
# done# I [executorch:arm_executor_runner.cpp:428]
# done# Info: /OSCI/SystemC: Simulation stopped by user.
# done# [warning ][main@0][5645437 ns] Simulation stopped by user
# done# [run_fvp Simulation complete, 0

```
