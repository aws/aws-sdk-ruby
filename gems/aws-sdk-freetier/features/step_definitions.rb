Before("@freetier") do
  @service = Aws::FreeTier::Resource.new
  @client = @service.client
end

After("@freetier") do
  # shared cleanup logic
end
