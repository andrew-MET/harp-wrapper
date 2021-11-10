#!/bin/bash
#SBATCH --get-user-env
#SBATCH --qos=express
#SBATCH --job-name=v3_vobs2sqlite


date 

# Modules
module load proj4
module load R/4.0.4

# Environment variables
export R_LIBS_USER=$HOME/lib/R

# Run harp
export TZ="GMT"
R --no-save --no-restore --slave < ./vobs2sqlite.R

date 
