resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform"
        terraform = "true"
    }  
  
}