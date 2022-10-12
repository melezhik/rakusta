set -e
cd $(config dir)
set -x

perl Configure.pl --gen-moar --gen-nqp --backends=moar
make
make test
make install

