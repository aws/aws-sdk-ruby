Before("@odb") do
  @service = Aws::Odb::Resource.new
  @client = @service.client
end

After("@odb") do
  # shared cleanup logic
end
