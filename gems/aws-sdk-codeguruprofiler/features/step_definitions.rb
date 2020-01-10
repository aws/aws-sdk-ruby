Before("@codeguruprofiler") do
  @service = Aws::CodeGuruProfiler::Resource.new
  @client = @service.client
end

After("@codeguruprofiler") do
  # shared cleanup logic
end
