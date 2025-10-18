variable "ami_id"{
  type = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
  type = string
  default = "t3.micro"
}
variable "sg_name"{
  type = string
  default = "allow-all"
}

variable "zone_id" {
  type = string
  default = "Z02792703IESGDED1SCJO"
}

variable "instances" {
  type = list
  default = ["mongodb","redis","mysql"]
}

variable "domain_name" {
  type = string
  default = "awsdevops.fun"
}

