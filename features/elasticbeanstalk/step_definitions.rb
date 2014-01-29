Before("@elasticbeanstalk") do
  @elasticbeanstalk = @client = Aws.elasticbeanstalk
end

After("@elasticbeanstalk") do
end
