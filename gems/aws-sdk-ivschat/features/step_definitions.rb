Before("@ivschat") do
  @service = Aws::Ivschat::Resource.new
  @client = @service.client
end

After("@ivschat") do
  # shared cleanup logic
end
