Before("@connectcases") do
  @service = Aws::ConnectCases::Resource.new
  @client = @service.client
end

After("@connectcases") do
  # shared cleanup logic
end
