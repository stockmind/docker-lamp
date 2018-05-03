FROM mattrayner/lamp:latest-1604

# Install memcached for Laravel/Lumen support
RUN apt-get update && \
	 apt-get -y install php-memcached memcached && \
	 rm -rf /var/lib/apt/lists/*
	 
RUN apt-get update && \
	 apt-get -y install php5.6-ldap && \
	 rm -rf /var/lib/apt/lists/*

CMD ["/run.sh"]
