Before("@b2bi") do
  @service = Aws::B2bi::Resource.new
  @client = @service.client
end

After("@b2bi") do
  # shared cleanup logic
end
