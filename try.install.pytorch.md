

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

#### Create and activate a conda environment named "executorch"
conda create -p /data1/work/tinyml -yn executorch python=3.10.0
conda activate executorch

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
./install_requirements.sh

# Use the --pybind flag to install with pybindings and dependencies for other backends.
# ./install_requirements.sh --pybind <coreml | mps | xnnpack>

#### Create an ExecuTorch program




```
