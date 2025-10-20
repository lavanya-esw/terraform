resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.securitygroup.id]

    tags ={
        Name = "terraform"
        terraform = "true"
    }

    connection {
        type = "ssh"
        user = "ec2-user"
        password = "DevOps321"
        host = self.public_ip
    }

    provisioner "local-exec" {
        command = "echo instance is created"
        on_failure = continue
        
    }

    provisioner "local-exec"{
        command = "echo instance is destroy"
        when = destroy

    }

    
  
}

resource "aws_security_group" "securitygroup" {
    name = "allowa-ll"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}