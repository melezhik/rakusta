name=$(config name)

status=$(docker inspect --format '{{json .State.Running}}' $name)

if [[ -n $string ]] || [[ $status != "true" ]] ; then
  set -x
  docker run  --rm -td \
  --add-host=host.docker.internal:host-gateway \
  -m 700m \
  --oom-kill-disable \
  --name $name $name
fi
