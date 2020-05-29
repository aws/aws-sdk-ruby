Before("@macie2") do
  @service = Aws::Macie2::Resource.new
  @client = @service.client
end

After("@macie2") do
  # shared cleanup logic
end
