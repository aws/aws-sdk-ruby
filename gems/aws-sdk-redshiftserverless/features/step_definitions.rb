Before("@redshiftserverless") do
  @service = Aws::RedshiftServerless::Resource.new
  @client = @service.client
end

After("@redshiftserverless") do
  # shared cleanup logic
end
