FROM mattrayner/lamp:latest-1604

# Install memcached for Laravel/Lumen support
RUN apt-get update && \
	 apt-get -y install php-memcached memcached && \
	 rm -rf /var/lib/apt/lists/*
	 
RUN apt-get update && \
	 apt-get -y install php7.2-common php7.2-mbstring php7.2-xml php7.2-ldap libapache2-mod-php7.2 && \
	 rm -rf /var/lib/apt/lists/*
	 
RUN ln -sfn /usr/bin/php7.2 /etc/alternatives/php	 

CMD ["/run.sh"]
