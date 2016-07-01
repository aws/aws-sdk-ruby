Before("@firehose") do
  @service = Aws::Firehose::Resource.new
  @client = @service.client
end

After("@firehose") do
  # shared cleanup logic
end
