#!/bin/bash -x

pip --version
#pip2 --version
pip3 --version
python --version
python2 --version
python3 --version

for i in pip pip2 pip3 python python2 python3
do
  echo ${i}
  which ${i}
done

exit 0