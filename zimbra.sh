
# source this file if you're running zimbra
# This will make 

for d in /opt/zimbra/common/sbin /opt/zimbra/postfix/sbin ; do
  [[ -d $d ]] && PATH=$d:$PATH
done

# If the above doesn't work, this can. 
#
# find /opt/zimbra/common/sbin /opt/zimbra/postfix/sbin -type f -executable -name 'postqueue' \
#     -exec ln -s {} /usr/sbin/postqueue 2> /dev/null
# find /opt/zimbra/common/sbin /opt/zimbra/postfix/sbin -type f -executable -name 'postsuper' \
#     -exec ln -s {} /usr/sbin/postsuper 2> /dev/null
