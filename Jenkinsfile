pipeline{
	agent any
	environment{
		AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
		AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
	}
	stages{
		stage('Checkout repo'){
			steps{
				git branch: 'main', credentialsId: 'WslOnboarding', url: 'git@github.com:Ti-i-janaSF/terraformProj.git'

			}


		}
		stage('Initialize terraform'){

			steps{
				sh 'terraform init'
			}
			
		}
		
		stage('Terraform plan'){
			steps{
				sh 'terraform plan'

			}
			
		}

		stage('Terraform apply'){
			steps{
				sh 'terraform apply --auto-approve'

			}
		}
		
		stage('Terraform destroy'){
			steps{
				sh 'terraform destroy'

			}
			
		}


	}

}
