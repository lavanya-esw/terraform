resource "aws_instance" "Terraform" {
    count =3
    ami = "ami-09c813fb71547fc4f"
    instance_type="t2.micro"
    vpc_security_group_ids=[aws_security_group.sg_group.id]

    tags={
        Name = var.instances[count.index]
        terraform="true"
    }
  
}

resource "aws_security_group" "sg_group"{
    name = "allow-all"

    egress{
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