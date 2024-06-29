provider "aws"  {
  region = "us-east-1"
}

resource "aws_instance" "JigmetServer" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  subnet_id = "subnet-0605ec1b5179f7c85"
  
}

resource "aws_s3_bucket" "s3Example" {
  bucket  = ""
  tags    = {
	Name          = "MyS3Bucket"
	Environment    = "Production"
  }

}
