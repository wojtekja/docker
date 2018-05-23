FROM suse/sles12sp3:latest

ARG repo
ARG cert
 
RUN echo "$cert" > /etc/pki/trust/anchors/RHN-ORG-TRUSTED-SSL-CERT.pem
RUN update-ca-certificates
RUN echo "$repo" > /etc/zypp/repos.d/susemanager:dockerbuild.repo
   
RUN zypper ref -s
RUN zypper -n in vim
