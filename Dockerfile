FROM centos:latest
RUN yum install -y openssh-server
RUN mkdir -p /var/bin/sshd
RUN useradd -c "Jyoti User" -m jyoti
RUN echo "jyoti:jyoti" | chpasswd
RUN rm -f /run/nologin
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
