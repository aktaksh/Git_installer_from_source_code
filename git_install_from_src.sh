#!/bin/bash 
 cd /tmp/
 mkdir gitinstall
 cd /tmp/gitinstall/
 wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.3.tar.xz
 tar -xvf git-2.9.3.tar.xz 
 cd git-2.9.3/
 yum remove git -y
 yum update -y
 yum install git-compat-util* -y
 yum install openssl -y
 yum groupinstall 'Development Tools' -y
 yum install openssl-devel curl-devel expat-devel gettext-devel zlib-devel -y
 yum install perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker -y 
 make &&
 make install
# cd ~
 git --version
 ln -s /root/bin/git /usr/bin/git
