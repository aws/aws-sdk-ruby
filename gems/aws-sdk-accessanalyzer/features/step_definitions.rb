Before("@accessanalyzer") do
  @service = Aws::AccessAnalyzer::Resource.new
  @client = @service.client
end

After("@accessanalyzer") do
  # shared cleanup logic
end
