Before("@quicksight") do
  @service = Aws::QuickSight::Resource.new
  @client = @service.client
end

After("@quicksight") do
  # shared cleanup logic
end
