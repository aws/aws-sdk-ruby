Before("@route53_domains") do
  @client = Aws::Route53Domains::Client.new
end

After("@route53_domains") do
end
