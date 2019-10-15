Before("@workmailmessageflow") do
  @service = Aws::WorkMailMessageFlow::Resource.new
  @client = @service.client
end

After("@workmailmessageflow") do
  # shared cleanup logic
end
