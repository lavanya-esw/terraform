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

# variable "instance-type" {

#   type = map
#   default = {
#     mongodb="t3.micro"
#     mysql="t3.medium"
#   }
# }

variable "instance-type" {
  type = list
  default = ["mongodb","redis","mysql"]
}
