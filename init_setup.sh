echo [$(date)]: "START"
export _VERSION_=3.7
echo [$(date)] : "Creating environment with python version ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "Curl gitignore for python"
curl https://raw.githubusercontent.com/aibi10/pytorch-CNN/main/.gitignore > .gitignore
echo "# ${PWD}" > README.md
conda env export > conda.yaml