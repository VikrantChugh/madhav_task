resource "aws_instance" "tfer--i-06049885c9234a53c_ansible8" {
  ami                         = "ami-06ca3ca175f37dd66"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "1"
  }

  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "ansparctice"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.0.174"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"

    tags = {
      Name  = "ansible8"
      owner = "Batch8@cloudeq.com"
    }

    throughput  = "125"
    volume_size = "8"
    volume_type = "gp3"
  }

  security_groups   = ["launch-wizard-137"]
  source_dest_check = "true"
  subnet_id         = "subnet-0fcdacce4c76dd565"

  tags = {
    Name  = "ansible8"
    owner = "Batch8@cloudeq.com"
  }

  tags_all = {
    Name  = "ansible8"
    owner = "Batch8@cloudeq.com"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-00d0f00773a0dd356"]
}
