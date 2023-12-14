Before("@neptunegraph") do
  @service = Aws::NeptuneGraph::Resource.new
  @client = @service.client
end

After("@neptunegraph") do
  # shared cleanup logic
end
