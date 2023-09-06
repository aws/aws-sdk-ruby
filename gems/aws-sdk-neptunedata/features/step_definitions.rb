Before("@neptunedata") do
  @service = Aws::Neptunedata::Resource.new
  @client = @service.client
end

After("@neptunedata") do
  # shared cleanup logic
end
