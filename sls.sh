#!/bin/bash
source ./env/env-common.sh
cat ./env/env-common.sh

source ./env/env-$2.sh
cat ./env/env-$2.sh

source ./env/env-$1-$2.sh
cat ./env/env-$1-$2.sh

printf "# Check the ENVs and PRESS Y(y) or N(n): "
read input

check=$(echo $input | tr a-z A-Z)

if [[ $check != "Y" ]]; then
    exit 0
fi

sls ${@:3}
