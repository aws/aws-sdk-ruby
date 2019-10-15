Before("@qldbsession") do
  @service = Aws::QLDBSession::Resource.new
  @client = @service.client
end

After("@qldbsession") do
  # shared cleanup logic
end
