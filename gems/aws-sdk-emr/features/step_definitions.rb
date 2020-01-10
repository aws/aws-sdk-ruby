Before("@emr") do
  @service = Aws::EMR::Resource.new
  @client = @service.client
end

After("@emr") do
  # shared cleanup logic
end
