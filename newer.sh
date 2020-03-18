#!/bin/bash

# To run, simply call script: ./newer.sh file1 file2 file2... file100
# Also file1-n should be a valid unix path

# exit when any command fails
set -e

arr=$@

get_latest() {
  latest_file=''
  latest_timestamp=0
  for i in $arr; do
    date_mod=`date -r $i "+%s"`
    if (($date_mod > $latest_timestamp)); then
        latest_file=`echo $i`
        latest_timestamp=`echo $date_mod`
    fi
  done
  echo "Latest file is $latest_file"
}
get_latest
