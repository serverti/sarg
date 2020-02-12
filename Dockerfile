from centos
RUN yum	update -y
RUN yum install -y autoconf automake gd-devel pcre-devel bzip2-devel openldap-devel gettext-devel xz xz-devel git
RUN dnf -y group install "Development Tools"
WORKDIR /usr/src
RUN git clone git://git.code.sf.net/p/sarg/code sarg-code
WORKDIR /usr/src/sarg-code
RUN autoreconf -fi
RUN ./configure
RUN make && make install
