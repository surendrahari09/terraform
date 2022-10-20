---
- hosts: slave
tasks:
- name: Download Java JRE
get_url:
url: http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm
dest: /opt/jre-8u60-linux-x64.rpm
headers: 'Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie'
- name: install Java JRE rpm from a local file
yum:
name: /opt/jre-8u60-linux-x64.rpm
state: present
- name: Download Java JDK
get_url:
url: http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm
dest: /opt/jdk-8u60-linux-x64.rpm
headers: 'Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie'
- name: Install Java JDK rpm from a local file
yum:
name: /opt/jdk-8u60-linux-x64.rpm
state: present
