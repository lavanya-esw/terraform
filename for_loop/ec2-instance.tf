resource "aws_instance" "terraform" {
    for_each = toset(var.instance-type)
    ami = var.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow-all.id]

    tags = {
      Name = each.value
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

