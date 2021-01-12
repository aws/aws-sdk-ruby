Before("@wellarchitected") do
  @service = Aws::WellArchitected::Resource.new
  @client = @service.client
end

After("@wellarchitected") do
  # shared cleanup logic
end
