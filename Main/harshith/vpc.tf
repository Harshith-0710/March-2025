provider "aws" {
    region = us-east-1
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "admin" {
    ami = ""                          # add the ami id
    instance_type = "t2.medium"
    security_groups = [ "default" ]
    key_name = ""                     # provide the key name being used 

    root_block_device {
      volume_size = 25
      volume_type = "gp3"
      delete_on_termination = true 
    } 

    tags = {
        name= "Admin-server"
    }

output "publicIP" {
    value = aws_instance.admin.public_ip 
}    
  
}