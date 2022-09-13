name=$(config name)

status=$(docker inspect --format '{{json .State.Running}}' $name)

if test $status != "true"; then
  docker run  --rm -td \
  --add-host=host.docker.internal:host-gateway \
  --name $name $name
fi
