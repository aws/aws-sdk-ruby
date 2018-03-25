# frozen_string_literal: true

Before("@elasticbeanstalk") do
  @service = Aws::ElasticBeanstalk::Resource.new
  @client = @service.client
end

After("@elasticbeanstalk") do
  # shared cleanup logic
end
