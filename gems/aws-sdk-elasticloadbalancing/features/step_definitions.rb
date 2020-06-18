# frozen_string_literal: true

Before("@elasticloadbalancing") do
  @service = Aws::ElasticLoadBalancing::Resource.new
  @client = @service.client
end

After("@elasticloadbalancing") do
  # shared cleanup logic
end
