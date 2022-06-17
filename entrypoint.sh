#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
curl -sSf -u "$USER_NAME":"$PASSWORD" -o "$TARGET" "$FILE"
if [ $? -eq 0 ]
then
echo "Completed"
exit 0
else
echo "Failed"
exit 1
fi
