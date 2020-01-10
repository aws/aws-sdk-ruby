Before("@route53") do
  @service = Aws::Route53::Resource.new
  @client = @service.client
end

After("@route53") do
  # shared cleanup logic
end
