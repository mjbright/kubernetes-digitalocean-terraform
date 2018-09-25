
. ~/.digitaloceanrc 

. setup_terraform_vars.rc 

[ ! -d .terraform ] && terraform init

terraform apply |& tee -a terraform.apply.log

exit 0


