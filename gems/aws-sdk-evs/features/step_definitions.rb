Before("@evs") do
  @service = Aws::Evs::Resource.new
  @client = @service.client
end

After("@evs") do
  # shared cleanup logic
end
