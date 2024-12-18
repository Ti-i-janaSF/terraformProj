provider "aws"{
	region="eu-north-1"
}

resource "aws_instance" "example"{
	instance_type="t3.micro"
	ami="ami-05edb7c94b324f73c"
	tags = {
    		Name = "ExampleInstance"
  	}
	
}
