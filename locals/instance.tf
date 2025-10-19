resource "aws_instance" "terraform" {
    ami = local.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = local.security_group
    tags = local.tags   
}

resource "aws_security_group" "securipy_group" {
    name = "${local.common_name}-allow-all"
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

        ingress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${local.common_name}-allow-all"  
    }
  
  
}