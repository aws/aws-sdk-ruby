Before("@mwaa") do
  @service = Aws::MWAA::Resource.new
  @client = @service.client
end

After("@mwaa") do
  # shared cleanup logic
end
