Before("@lookoutequipment") do
  @service = Aws::LookoutEquipment::Resource.new
  @client = @service.client
end

After("@lookoutequipment") do
  # shared cleanup logic
end
