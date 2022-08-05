FROM centos:7
LABEL Name=developer-agri Version=0.0.1

RUN yum update -y && yum install -y \
	epel-release \
	vim 

#node10
COPY "$pwd"/node10-install.sh /home/
RUN chmod +x /home/node10-install.sh
RUN /home/node10-install.sh

#java
COPY "$pwd"/java-install.sh /home/
RUN chmod +x /home/java-install.sh
RUN /home/java-install.sh

#python3.8
COPY "$pwd"/py-install.sh /home/
RUN chmod +x /home/py-install.sh
RUN /home/py-install.sh

ENV FOLDER_PATH_DEFAULT=/var/www/agri_map
ENV FOLDER_PATH_BDNS_SERVER=/var/www/agri_map/backend/bdns-server
ENV FOLDER_PATH_BDNS_API_JAVA=/var/www/agri_map/backend/bds-api-java
ENV FOLDER_PATH_BDNS_CACHE_JAVA=/var/www/agri_map/backend/bdns-cache-java

# CMD ["cd ", $FOLDER_PATH_BDNS_SERVER && npm install && sh r"]
# RUN cd $FOLDER_PATH_BDNS_API_JAVA && sh r3
# RUN cd $FOLDER_PATH_BDNS_CACHE_JAVA && sh r3cle

EXPOSE 6042
EXPOSE 5023
EXPOSE 5013






