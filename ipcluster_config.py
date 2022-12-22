import psutil
import os


cores_per_node = psutil.cpu_count(logical=False)
c.Cluster.n = min(cores_per_node,8)

print(f"total cores {cores_per_node}")
mpi_args = ["-ppn", "1"]  ## For round-robin placement
# mpi_args = ["-ppn", f"{cores_per_node}"]  ## For block-placement
c.MPIEngineSetLauncher.mpi_args = mpi_args

c.Cluster.controller_ip = "*"
c.Cluster.controller_args = ["--nodb"]

