FROM cdougan/rhel_testing

ENV https_proxy=http://1.2.3.4:80
ENV http_proxy=http://1.2.3.4:80
ENV no_proxy=localhost,adomain.net,somedomain.co.uk

RUN source ~/.bash_profile && \
    gem install rspec selenium-webdriver rest-client
