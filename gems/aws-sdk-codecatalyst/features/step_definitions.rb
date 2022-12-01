Before("@codecatalyst") do
  @service = Aws::CodeCatalyst::Resource.new
  @client = @service.client
end

After("@codecatalyst") do
  # shared cleanup logic
end
