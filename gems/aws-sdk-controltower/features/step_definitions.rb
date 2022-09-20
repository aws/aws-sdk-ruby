Before("@controltower") do
  @service = Aws::ControlTower::Resource.new
  @client = @service.client
end

After("@controltower") do
  # shared cleanup logic
end
