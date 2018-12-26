nos-master-delete-customer-vpc

#!/bin/bash -e

set -e

if [[ "$CONFIRM_DELETION" == "false" ]];then
 echo "Delete cannot Process Further Please select CONFIRM_DELETION" 
 exit 1
fi 

cd connect-customers

#MODULE_PATH="${WORKSPACE}"
#SCRIPTS_PATH="${WORKSPACE}/nos-platform/scripts"

MODULE_PATH="/opt/test_modules/bgayari"
SCRIPTS_PATH="/opt/test_modules/bgayari/nos-platform/scripts"

array=(${STACK//|/ })


export AWS_REGION=${array[0]}
export NCO_RELEASE=master
export CUSTOMER=${array[2]}
export VPC_NAME=${array[3]}
export MODULE_PATH=${MODULE_PATH}
export SCRIPTS_PATH=${SCRIPTS_PATH}




if [[ -z $CUSTOMER ]] || [[ -z $AWS_REGION ]] || [[ -z $VPC_NAME ]]  ;then
 echo "Please pass all parameter value";
 exit 1
fi



bash ${SCRIPTS_PATH}/delete_customer_vpc.sh

nos-master-launch-customer-stackn