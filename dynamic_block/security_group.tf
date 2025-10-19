resource "aws_security_group" "allowing_all_traffic"{
    name = "allow-all"

   dynamic "egress" {
        for_each = toset(var.allow_ports)
        content{
            from_port = egress.value
            to_port = egress.value
            protocol = "tcp"
            cidr_blocks = [ "0.0.0.0/0" ]
        }
    }

    dynamic "ingress" {
        for_each = toset(var.allow_ports)
        content {
        from_port = ingress.value
        to_port = ingress.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
          
        }

    }

    tags = {
        Name = "allow-all"
    
    }
}