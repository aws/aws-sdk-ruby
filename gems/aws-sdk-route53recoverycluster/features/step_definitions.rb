Before("@route53recoverycluster") do
  @service = Aws::Route53RecoveryCluster::Resource.new
  @client = @service.client
end

After("@route53recoverycluster") do
  # shared cleanup logic
end
