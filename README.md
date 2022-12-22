# Get started with Bodo. 
This repository will help you to 

 - Setup Bodo
 - Run a simple Bodo application
 - Run Bodo interactively
 - Introduce you to  basic concepts of Bodo

# Introduction to Bodo
Bodo is a distributed data analytics solution, that will enable you to effortlessly process large data problems by scaling/ distributing them across multiple cores. Bodo is similar to solutions like Spark, Hadoop and Dask. But, unlike Spark or Hadoop or Dask, does not rely on map reduce for distributed processing. Bodo is based on a more efficient MPI  model. The Message Passing Interface (MPI) is an Application Program Interface that defines a model of parallel computing where each parallel process has its own local memory, and data must be explicitly shared by passing messages between processes.  The MPI model is the ideal way for doing parallel and distributed data processing and hence is much faster, reliable and linearly scalable compared to Map Reduce.

# Setup Bodo
Bodo requires python 3.7 or higher. This document assumes pip is installed and available. Bodo is OS agnostic and should work on Linux, MacOS or Windows, we recommend trying Bodo on Linux or MacOS. Follow the process below to get Bodo setup on your system. We will use virtualenv and pip for the setup. This repository has all the scripts and helper commands to make the setup as smooth and simple as possible.

Before starting to setup bodo, please clone this repository using the command below

    git clone https://github.com/rkarthik29/Bodo-get-started.git

Run the command below to setup the repository

    ./setup-bodo-conda.sh


# Run your first bodo application
Once the setup is run successfully, you should be ready to run your first Bodo Application. 

    ./bodo-run-conda.sh -n 2 examples/pi.py
The above command will run the job pi.py on two cores. You can change the value for the -n argument to run on more cores. Community lets you go upto 8.

# Run Bodo interactively

To try and run bodo in an interactive manner, lets launch a jupyter environment by running the command below. This will bring up jupyter in a browser. Go ahead and play with the examples in the notebooks folder.

    ./start-jupyter-conda.sh
    
