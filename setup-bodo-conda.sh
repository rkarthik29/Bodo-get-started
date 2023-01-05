if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        echo "Installing conda for linux"
        wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
	echo "Install conda for mac"
        curl https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -L -o miniconda.sh
else
    echo "can't detect os"
fi
chmod +x miniconda.sh
./miniconda.sh -b -p ./miniconda3
./miniconda3/bin/conda config --set auto_activate_base false
./miniconda3/bin/conda create --name Bodo python=3.9 mamba -c conda-forge -y
source ./miniconda3/bin/activate Bodo
mamba install bodo bodosql jupyterlab snowflake-sqlalchemy -c bodo.ai -c conda-forge -y
pip install bodo-platform-ipyparallel-kernel
python -m bodo_platform_ipyparallel_kernel.install --sys-prefix
mkdir -p ~/.ipython/profile_default
cp ipcluster_config.py ~/.ipython/profile_default
