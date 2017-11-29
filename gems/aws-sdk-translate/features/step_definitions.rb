Before("@translate") do
  @service = Aws::Translate::Resource.new
  @client = @service.client
end

After("@translate") do
  # shared cleanup logic
end
