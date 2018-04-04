Before("@acmpca") do
  @service = Aws::ACMPCA::Resource.new
  @client = @service.client
end

After("@acmpca") do
  # shared cleanup logic
end
