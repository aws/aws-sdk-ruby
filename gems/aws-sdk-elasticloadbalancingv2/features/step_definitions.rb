Before("@elasticloadbalancingv2") do
  @service = Aws::ElasticLoadBalancingV2::Resource.new
  @client = @service.client
end

After("@elasticloadbalancingv2") do
  # shared cleanup logic
end
