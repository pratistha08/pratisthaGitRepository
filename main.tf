
provider "aws" {
  region     = "eu-central-1"
  access_key = "AKIASTBR3MBWYLSGZZSF"
  secret_key = "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"
}

resource "aws_instance" "ec2_terraform" {
  ami           = "ami-00ad2436e75246bba"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform ec2 instance"
  }

}


resource "local_file" "pet" {

  filename = "/root/pets.txt"
  content  = "we love pets !"
}
