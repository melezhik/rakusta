name=$(config name)

status=$(docker inspect --format '{{json .State.Running}}' $name)

if [[ -n $string ]] || [[ $status != "true" ]] ; then
  echo "docker $name is not running, exiting ..."
else
  set -x
  docker stop -t 1 $name || echo "fail to stop docker $name"
fi
