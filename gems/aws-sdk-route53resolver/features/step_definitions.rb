# frozen_string_literal: true

Before("@route53resolver") do
  @service = Aws::Route53Resolver::Resource.new
  @client = @service.client
end

After("@route53resolver") do
  # shared cleanup logic
end
