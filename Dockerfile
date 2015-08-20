FROM centos:6.6
RUN yum groupinstall -y "Development Tools"
RUN yum install -y \
        which \
        python-setuptools \
        mysql-devel \
        postgresql-devel \
        postgres-devel \
        libxml2-devel \
        libxslt-devel \
        libcurl-devel
RUN easy_install pip
RUN pip install virtualenvwrapper ipython ipdb
WORKDIR /

