Before("@route53profiles") do
  @service = Aws::Route53Profiles::Resource.new
  @client = @service.client
end

After("@route53profiles") do
  # shared cleanup logic
end
