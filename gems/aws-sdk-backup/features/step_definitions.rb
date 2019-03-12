Before("@backup") do
  @service = Aws::Backup::Resource.new
  @client = @service.client
end

After("@backup") do
  # shared cleanup logic
end
