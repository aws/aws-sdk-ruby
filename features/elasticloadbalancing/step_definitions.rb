Before("@elasticloadbalancing") do
  @client = Aws::ElasticLoadBalancing::Client.new
end

After("@elasticloadbalancing") do
end
