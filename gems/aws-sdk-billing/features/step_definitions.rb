Before("@billing") do
  @service = Aws::Billing::Resource.new
  @client = @service.client
end

After("@billing") do
  # shared cleanup logic
end
