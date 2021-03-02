#!/bin/bash
#set -x

HARBOR_IP=117.78.8.209
HARBOR_PORT=4000

ORGIN_PREFIX=172.20.48.169:64
NEW_PREFIX=$HARBOR_IP":"$HARBOR_PORT

URL="http://172.20.48.169:64/"

IMAGELIST=/opt/image.list
IMAGESTAR=/opt/images.tar

TESTFLAG=true

if [ "_"$TESTFLAG != "_true" ]; then
  echo "sudo docker login $NEW_PREFIX"
  sudo docker login $NEW_PREFIX
  echo "sudo docker load -i $IMAGETAR"
  sudo docker load -i $IMAGETAR
else
  echo "skip load"
fi

images=$(cat $IMAGELIST)
for oldimage in $images
do
  newimage=${oldimage/$ORGIN_PREFIX/$NEW_PREFIX}
  echo "orgin image: "$oldimage
  if [ "_"$TESTFLAG != "_true" ]; then
    echo "sudo docker tag $oldimage $newimage"
    sudo docker tag $oldimage $newimage  
    echo "sudo docker push $newimage"
    sudo docker push $newimage
  else
    echo "skip tag & push $newimage"
  fi
done



