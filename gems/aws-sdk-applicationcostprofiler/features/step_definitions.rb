Before("@applicationcostprofiler") do
  @service = Aws::ApplicationCostProfiler::Resource.new
  @client = @service.client
end

After("@applicationcostprofiler") do
  # shared cleanup logic
end
