#s3 manager



set up your real keys:
```bash
cp backend-copy.conf backend.conf
```


the asme key (or not) set up for the terraform.tfvars
firs create one:
```bash
cp terraform-copy.tfvars terraform.tfvars
```



to run init use:
```bash
terraform init -backend-config=backend.conf
```



