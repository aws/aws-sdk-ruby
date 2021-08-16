Before("@ssmincidents") do
  @service = Aws::SSMIncidents::Resource.new
  @client = @service.client
end

After("@ssmincidents") do
  # shared cleanup logic
end
