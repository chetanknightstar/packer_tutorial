source "amazon-ebs" "mypackerimage22" {
  ami_name      = "learn-packer-linux-aws-chetan"
  instance_type = "t2.micro"
  region        = "us-east-2"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

build {
  name = "learn-packer"
  sources = [
    "source.amazon-ebs.mypackerimage22"
  ]
  provisioner "shell" {
  inline = [
    "echo Installing Apache2",
    "sleep 30",
    "sudo apt-get update -y",
    "sudo apt-get install apache2 -y",
  ]
 }
}
