echo "Install virtual env"
pip3 install virtualenv
echo "creating new virtua env"
virtualenv venv
echo "activatign virtual env"
source venv/bin/activate
echo "installing bodo and required libraries"
pip3 install  bodo bodosql bodo-platform-ipyparallel-kernel jupyterlab snowflake-sqlalchemy
echo "installing bodo kernel"
python -m bodo_platform_ipyparallel_kernel.install
echo "done"
