#!/bin/sh
#usage:
# create resourcegroup in Azure by hand
# ./build.sh myresourcegroup
rm -R .generated
rm inventory
./apply-rg.sh $1
./generate-inventory.sh $1
