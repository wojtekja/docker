FROM suse/sles12sp3:2.0.2

RUN zypper ref -s
RUN zypper -n in vim
