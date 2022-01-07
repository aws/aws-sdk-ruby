Before("@recyclebin") do
  @service = Aws::RecycleBin::Resource.new
  @client = @service.client
end

After("@recyclebin") do
  # shared cleanup logic
end
