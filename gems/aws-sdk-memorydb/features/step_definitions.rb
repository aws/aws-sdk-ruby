Before("@memorydb") do
  @service = Aws::MemoryDB::Resource.new
  @client = @service.client
end

After("@memorydb") do
  # shared cleanup logic
end
