Before("@account") do
  @service = Aws::Account::Resource.new
  @client = @service.client
end

After("@account") do
  # shared cleanup logic
end
