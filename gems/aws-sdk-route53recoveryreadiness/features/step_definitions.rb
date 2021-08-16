Before("@route53recoveryreadiness") do
  @service = Aws::Route53RecoveryReadiness::Resource.new
  @client = @service.client
end

After("@route53recoveryreadiness") do
  # shared cleanup logic
end
