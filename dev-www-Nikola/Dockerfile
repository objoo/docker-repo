#FROM voidlinux/voidlinux-musl
FROM voidlinux/voidlinux
#AUTHOR Yann Dupont

## 1st run is to upgrade xbps binaries if needed.
RUN xbps-install -Suy  
RUN xbps-install -Suy

##
RUN xbps-install -y  python3.4-virtualenv ; exit 0

RUN virtualenv nikola
WORKDIR nikola
RUN chmod a+x bin/activate
RUN bin/activate
RUN xbps-install -Suy libxml2 gcc gcc-c++ zlib-devel python3.4-devel libxml2-devel libjpeg-turbo-devel libxslt-devel
RUN ./bin/pip install --upgrade "Nikola[extras]"
ENTRYPOINT /bin/bash -c 'source bin/activate'
