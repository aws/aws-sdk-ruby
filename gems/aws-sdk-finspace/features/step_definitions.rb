Before("@finspace") do
  @service = Aws::Finspace::Resource.new
  @client = @service.client
end

After("@finspace") do
  # shared cleanup logic
end
