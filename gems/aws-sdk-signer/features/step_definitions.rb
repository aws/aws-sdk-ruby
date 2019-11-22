Before("@signer") do
  @service = Aws::Signer::Resource.new
  @client = @service.client
end

After("@signer") do
  # shared cleanup logic
end
