Before("@repostspace") do
  @service = Aws::Repostspace::Resource.new
  @client = @service.client
end

After("@repostspace") do
  # shared cleanup logic
end
