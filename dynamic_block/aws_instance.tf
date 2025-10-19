resource "aws_instance" "creating_ec2_instance"{
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids =[aws_security_group.allowing_all_traffic.id]
    tags = {
        Name = "terraform_practice"
        terraform = "true"
    }
    provisioner "local-exec"{
     command = "echo instance is created"
    }
    provisioner "local-exec"{
        command = "echo ${self.private_ip} > inventory.ini"
        on_failure = continue
    }

    provisioner "local-exec" {
        command = "echo instance is destroyed"
        when = destroy
      
    }
}

