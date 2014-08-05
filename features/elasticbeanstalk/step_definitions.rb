Before("@elasticbeanstalk") do
  @client = Aws::ElasticBeanstalk::Client.new
end

After("@elasticbeanstalk") do
end
