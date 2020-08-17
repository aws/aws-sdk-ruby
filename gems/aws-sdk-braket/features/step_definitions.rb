Before("@braket") do
  @service = Aws::Braket::Resource.new
  @client = @service.client
end

After("@braket") do
  # shared cleanup logic
end
