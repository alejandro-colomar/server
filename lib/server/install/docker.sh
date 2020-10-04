################################################################################
##      Copyright (C) 2020        Alejandro Colomar Andrés                    ##
##      SPDX-License-Identifier:  GPL-2.0-only                                ##
################################################################################


################################################################################
##	source								      ##
################################################################################


################################################################################
##	definitions							      ##
################################################################################


################################################################################
##	functions							      ##
################################################################################
function install_docker()
{

	apt-get purge --yes						\
			docker						\
			docker-engine					\
			docker.io					\
			containerd					\
			runc;

	curl https://get.docker.com | bash				&& \
	usermod -a -G docker ubuntu;
}


################################################################################
##	end of file							      ##
################################################################################
