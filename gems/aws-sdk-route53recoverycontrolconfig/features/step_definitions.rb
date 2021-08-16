Before("@route53recoverycontrolconfig") do
  @service = Aws::Route53RecoveryControlConfig::Resource.new
  @client = @service.client
end

After("@route53recoverycontrolconfig") do
  # shared cleanup logic
end
