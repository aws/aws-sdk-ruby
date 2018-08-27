Before("@signer") do
  @service = Aws::signer::Resource.new
  @client = @service.client
end

After("@signer") do
  # shared cleanup logic
end
