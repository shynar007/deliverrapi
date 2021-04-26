resource "aws_elastic_beanstalk_application" "application" {
  name        = "my-deliverr-app"
}
resource "aws_elastic_beanstalk_environment" "environment" {
  name                = "my-deliverr-environment"
  application         = aws_elastic_beanstalk_application.application.name
  solution_stack_name = "64bit Amazon Linux 2 v3.0.3 running Python 3.9"
setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
      }
}