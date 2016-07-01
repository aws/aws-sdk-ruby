Before("@simpledb") do
  @service = Aws::SimpleDB::Resource.new
  @client = @service.client
end

After("@simpledb") do
  # shared cleanup logic
end
