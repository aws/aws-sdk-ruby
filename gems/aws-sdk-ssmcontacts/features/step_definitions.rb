Before("@ssmcontacts") do
  @service = Aws::SSMContacts::Resource.new
  @client = @service.client
end

After("@ssmcontacts") do
  # shared cleanup logic
end
