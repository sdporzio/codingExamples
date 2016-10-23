#!/bin/bash

# Connect to different ssh addresses

case ${1} in
  "uboone")       	if [ -z "$2" ]; then
				echo "> ssh -X -Y sporzio@uboonegpvm03.fnal.gov"
                  		ssh -X -Y sporzio@uboonegpvm03.fnal.gov
			else
				echo "> ssh -X -Y sporzio@uboonegpvm0${2}.fnal.gov"
                  		ssh -X -Y sporzio@uboonegpvm0${2}.fnal.gov 
			fi;;
  "manchester")   	echo "> ssh -X -Y davide@higgs.hep.manchester.ac.uk"
                  	ssh -X -Y davide@higgs.hep.manchester.ac.uk ;;
  "database")     	echo "> ssh -X -Y uboonedb@ppdhcp120.hep.manchester.ac.uk"
                  	ssh -X -Y uboonedb@ppdhcp120.hep.manchester.ac.uk ;;
  "database_socket")   echo "> ssh -L 8080:127.0.0.1:5432 uboonedb@ppdhcp120.hep.manchester.ac.uk"
                  	ssh -L 8080:127.0.0.1:5432 uboonedb@ppdhcp120.hep.manchester.ac.uk ;;
  "cambridge")    	echo "> ssh -X -Y uboone04@pclv.hep.phy.cam.ac.uk"
                  	ssh -X -Y uboone04@pclv.hep.phy.cam.ac.uk ;;
  *)              	echo "> ssh -X -Y davide@${1}.hep.manchester.ac.uk"
                  	ssh -X -Y davide@${1}.hep.manchester.ac.uk ;;
esac
