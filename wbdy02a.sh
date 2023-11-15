#!/bin/bash
#SBATCH --job-name=wbdy02a          # Job name
#SBATCH --mail-type=ALL              # Mail events (NONE, BEGIN, END, FAIL, ALL)
##SBATCH --mail-user=mspall@whoi.edu  # Where to send mail	
##SBATCH --cpus-per-task=1           # Number of cores per MPI rank 
#SBATCH --nodes=8                    # Number of nodes
#SBATCH --ntasks-per-node=36         # How many tasks on each node
#SBATCH --mem=192000
#SBATCH --output=mitgcm_%j.log     # Standard output and error log
 
 
module load pgi openmpi/pgi
 
mpirun ./mitsrc
 
date
