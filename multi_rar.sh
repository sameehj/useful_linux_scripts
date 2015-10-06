#!/bin/sh

################configurations################
#rar files path
RAR_DIR="/home/sameeh/images" 
#extract to path
TARGET_PATH=${RAR_DIR}
###############################################################
#handle parameters
while test $# -gt 0; do
        case "$1" in
                -h|--help)
                        echo "$Multi rar is a multi rar extraxting script"
                        echo " "
                        echo "options:"
                        echo "-h, --help                show brief help"
                        echo "-s, --source-dir=DIR      specify a directory that the rars are in"
                        echo "-o, --output-dir=DIR      specify a directory to store output in"
                        exit 0
                        ;;
                -s)
                        shift
                        if test $# -gt 0; then
                                export RAR_DIR=$1
                        else
                                echo "no process specified"
                                exit 1
                        fi
                        shift
                        ;;
                --source-dir*)
                        export RAR_DIR=`echo $1 | sed -e 's/^[^=]*=//g'`
                        shift
                        ;;
                -o)
                        shift
                        if test $# -gt 0; then
                                export TARGET_PATH=$1
                        else
                                echo "no output dir specified"
                                exit 1
                        fi
                        shift
                        ;;
                --output-dir*)
                        export TARGET_PATH=`echo $1 | sed -e 's/^[^=]*=//g'`
                        shift
                        ;;
                *)
                        break
                        ;;
        esac
done

#######################INFO################################
echo "Extracting the filies to:"
echo ${TARGET_PATH}
echo "filies to be extracted are:"

#list filies to be extracted
for file in ${RAR_DIR}/*.rar
do
   echo ${file} ${RAR_DIR}
done
################################################################
#extract filies
for file in ${RAR_DIR}/*.rar
do
   #rar e ${file} ${RAR_DIR};
   echo "hii"
done
