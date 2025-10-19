locals{
    ami_id = var.ami-id
    instance_type=var.instance_type
    security_group = [aws_security_group.securipy_group.id]
    common_name="${var.project}-${var.environmrnt}"
    tags = merge(
        var.common_tags,
        {
            Name = local.common_name
        }
    )



    
}