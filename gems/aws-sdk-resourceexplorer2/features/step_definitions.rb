Before("@resourceexplorer2") do
  @service = Aws::ResourceExplorer2::Resource.new
  @client = @service.client
end

After("@resourceexplorer2") do
  # shared cleanup logic
end
