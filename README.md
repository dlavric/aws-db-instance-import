# aws-db-instance-import
This is a test repository to check an AWS import of the DB after creating it with TF code: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance

The purpose of this repository is to learn and observe the `import` of the DB that has been changed outside of Terraform, in the AWS Console


## Pre-requisites

- [X] [Terraform](https://www.terraform.io/downloads)
- [X] [AWS Account](https://aws.amazon.com/resources/create-account/)

## Steps on how to use this repository

- Clone this repository:
```shell
git clone https://github.com/dlavric/aws-db-instance-import.git
```

- Go to the directory where the repo is stored:
```shell
cd aws-db-instance-import
```


- Export your AWS Keys on your terminal
```shell
export AWS_REGION="eu-west-1"
export AWS_ACCESS_KEY_ID=...
export AWS_SECRET_ACCESS_KEY=...
export AWS_SESSION_TOKEN=...                  
```

- Initialize Terraform to download the providers and the modules
```shell
terraform init
```

- See the output for initialization of Terraform modules and dependencies
```shell
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "5.25.0"...
- Installing hashicorp/aws v5.25.0...
- Installed hashicorp/aws v5.25.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes to create the DB in AWS
```shell
terraform apply
```

- See the output, 1 resource should be created
```shell
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_db_instance.default will be created
  + resource "aws_db_instance" "default" {
      + address                               = (known after apply)
      + allocated_storage                     = 10
      + apply_immediately                     = false
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_target                         = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_name                               = "mydb"
      + db_subnet_group_name                  = (known after apply)
      + delete_automated_backups              = true
      + endpoint                              = (known after apply)
      + engine                                = "mysql"
      + engine_version                        = "5.7"
      + engine_version_actual                 = (known after apply)
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = (known after apply)
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t3.micro"
      + iops                                  = (known after apply)
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + listener_endpoint                     = (known after apply)
      + maintenance_window                    = (known after apply)
      + master_user_secret                    = (known after apply)
      + master_user_secret_kms_key_id         = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = (known after apply)
      + nchar_character_set_name              = (known after apply)
      + network_type                          = (known after apply)
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = "default.mysql5.7"
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replica_mode                          = (known after apply)
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_throughput                    = (known after apply)
      + storage_type                          = (known after apply)
      + tags_all                              = (known after apply)
      + timezone                              = (known after apply)
      + username                              = "foo"
      + vpc_security_group_ids                = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_db_instance.default: Creating...
aws_db_instance.default: Still creating... [10s elapsed]
aws_db_instance.default: Still creating... [20s elapsed]
aws_db_instance.default: Still creating... [30s elapsed]
aws_db_instance.default: Still creating... [40s elapsed]
aws_db_instance.default: Still creating... [50s elapsed]
aws_db_instance.default: Still creating... [1m0s elapsed]
aws_db_instance.default: Still creating... [1m10s elapsed]
aws_db_instance.default: Still creating... [1m20s elapsed]
aws_db_instance.default: Still creating... [1m30s elapsed]
aws_db_instance.default: Still creating... [1m40s elapsed]
aws_db_instance.default: Still creating... [1m50s elapsed]
aws_db_instance.default: Still creating... [2m0s elapsed]
aws_db_instance.default: Still creating... [2m10s elapsed]
aws_db_instance.default: Still creating... [2m20s elapsed]
aws_db_instance.default: Still creating... [2m30s elapsed]
aws_db_instance.default: Still creating... [2m40s elapsed]
aws_db_instance.default: Still creating... [2m50s elapsed]
aws_db_instance.default: Still creating... [3m0s elapsed]
aws_db_instance.default: Still creating... [3m10s elapsed]
aws_db_instance.default: Still creating... [3m20s elapsed]
aws_db_instance.default: Still creating... [3m30s elapsed]
aws_db_instance.default: Still creating... [3m40s elapsed]
aws_db_instance.default: Still creating... [3m50s elapsed]
aws_db_instance.default: Still creating... [4m0s elapsed]
aws_db_instance.default: Creation complete after 4m6s [id=db-IGZD7Y2ZTPDZ2O6H7CLGTL2WJ4]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

- Go to AWS Console and modify the DB Identifier 

![1](https://github.com/dlavric/aws-db-instance-import/blob/main/pictures/1.png)

- Change the DB Identifier
![2](https://github.com/dlavric/aws-db-instance-import/blob/main/pictures/2.png)

- Scroll down to the bottom of the page and click on `Continue`
![3](https://github.com/dlavric/aws-db-instance-import/blob/main/pictures/3.png)

- Change the `Schedule Modifications` to `Apply Immediately` and click on `Modify DB Instance` button
![4](https://github.com/dlavric/aws-db-instance-import/blob/main/pictures/4.png)

- Wait for a little while for the DB to change its status to `Renaming`  to be sure is working
![5](https://github.com/dlavric/aws-db-instance-import/blob/main/pictures/5.png)

- The DB is ready once the status becomes `Available`
![6](https://github.com/dlavric/aws-db-instance-import/blob/main/pictures/6.png)

- Now add the following import block to the `main.tf` file, where the ID is the DB Identifier `terraform-20231114083825431000000001`
```terraform
import {
  to = aws_db_instance.default
  id = "terraform-20231114083825431000000001"
}
```

- Test the plan
```shell
terraform plan
```

- The output should show `no changes`
```shell
aws_db_instance.default: Refreshing state... [id=db-IGZD7Y2ZTPDZ2O6H7CLGTL2WJ4]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
```

- Go ahead and apply the changes
```shell
terraform apply
```

- The output should have no changes, as the plan previously showed
```shell
aws_db_instance.default: Refreshing state... [id=db-IGZD7Y2ZTPDZ2O6H7CLGTL2WJ4]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```

- Check your `terraform.tfstate` file to see that the identified of the database changed and matches the new value


```shell
            "id": "db-IGZD7Y2ZTPDZ2O6H7CLGTL2WJ4",
            "identifier": "terraform-20231114083825431000000001",
            "identifier_prefix": "terraform-",
            "instance_class": "db.t3.micro",
```

- Destroy the resources
```shell
terraform destroy
```