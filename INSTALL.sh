
. ~/.digitaloceanrc 

. setup_terraform_vars.rc 

[ ! -d .terraform ] && terraform init
find .terraform/plugins/ | grep -iq terraform-provider-digitalocean || terraform init
find .terraform/plugins/ | grep -iq terraform-provider-null         || terraform init

terraform apply |& tee -a terraform.apply.log

exit 0


