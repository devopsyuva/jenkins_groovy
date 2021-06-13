FROM jenkins/jenkins:lts-jdk11
MAINTAINER "sudhams reddy duba <dubareddy.383@gmail.com>"
ENV JENKINS_VERSION=2.289.1
ENV JENKINS_USER="sudheer"
ENV JENKINS_PASS="SUdhu@1989$"
# Skip initial setup
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
VOLUME /var/jenkins_home
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
USER jenkins
