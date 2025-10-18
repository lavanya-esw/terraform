resource "aws_instance" "terraform" {
  count = 3
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow-all.id]

    tags = {
      Name = var.instances[count.index]
      terraform = "true"

    }
  
}

resource "aws_security_group" "allow-all" {
  name = var.sg_name

  egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
   }

    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
   }

    tags = {
      Name = "allow-all"
    }
  }

