FROM fedora
RUN dnf update --latest\
&& dnf install -yqq tux-paint vim httpd
CMD cat myinfo.html > /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND