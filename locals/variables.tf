variable "ami-id"{
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    default = "t3.micro"
}

variable "project"{
    default = "roboshop"
}

variable "environmrnt"{
    default = "staging"
}

variable "common_tags" {
    default = {
        terraform = "true"
        project = "roboshop"
        environment = "staging"
    }
  
}