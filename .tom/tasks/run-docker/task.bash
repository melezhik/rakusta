name=$(config name)

status=$(docker inspect --format '{{json .State.Running}}' $name)

if [[ -n $string ]] || [[ $status != "true" ]] ; then
  set -x
  docker run  --rm -td \
  --add-host=host.docker.internal:host-gateway \
  --name $name $name
fi
