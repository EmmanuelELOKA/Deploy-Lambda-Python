To deploy with the terraform templates, please follow the steps:

1. Fill in all the variables in the env.tfvars file
2. Replace the "hello-world.zip" with your own lambda package which contains the python function.
3. Run 'terraform init'
4. Run 'terraform apply --var-file=env.tfvars'
