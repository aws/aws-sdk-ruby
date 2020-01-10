Before("@route53domains") do
  @service = Aws::Route53Domains::Resource.new
  @client = @service.client
end

After("@route53domains") do
  # shared cleanup logic
end
