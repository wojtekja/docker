FROM suse/sles12sp3:latest

ARG repo
ARG cert
 
   
RUN zypper -n in vim
