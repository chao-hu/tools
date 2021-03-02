#!/bin/bash
#set -x

HARBOR_IP=172.20.48.169
HARBOR_PORT=64

URL="http://$HARBOR_IP:$HARBOR_PORT/"

USER="admin"
PASS="Harbor12345"

IMAGES=""

IMAGELIST=/opt/image.list
IMAGESTAR=/opt/images.tar

TESTFLAG=true

PROJECTS=$(curl -s -X GET --header 'Accept: application/json' -u $USER:$PASS "${URL}/api/projects?page=1&page_size=1000"|jq -r .[] |jq -r .project_id)

for project in $PROJECTS
do
  REPOS=$(curl -s -X GET --header 'Accept: application/json' -u $USER:$PASS "${URL}/api/repositories?project_id=3"|grep "name"|awk -F '"' '{print $4}')
  for rp in ${REPOS}
  do
    TAGS=$(curl -s -X GET --header 'Accept: application/json' -u $USER:$PASS "${URL}/api/repositories/${rp}/tags"|grep \"name\"|awk -F '"' '{print $4}'|sort -r)
    a=$(echo ${rp}|awk -F "/" '{print $2}')
    for t in ${TAGS}
    do
      image="${HARBOR_IP}:${HARBOR_PORT}/${rp}:${t}"
      if [ "_"$TESTFLAG != "_true" ]; then
        docker pull $image
        echo "docker pull $image"
      else
        echo "skip pull $image"
      fi
      echo $image >> $IMAGELIST
      IMAGES="$IMAGES $image"
    done
    echo "===================="
  done
done

if [ "_"$TESTFLAG != "_true" ]; then
  sudo docker save $IMAGES > /opt/images.tar
  echo "sudo docker save $IMAGES > /opt/images.tar" 
else
  echo "skip save $IMAGES"
fi 
