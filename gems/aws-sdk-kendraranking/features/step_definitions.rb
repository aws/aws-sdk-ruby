Before("@kendraranking") do
  @service = Aws::KendraRanking::Resource.new
  @client = @service.client
end

After("@kendraranking") do
  # shared cleanup logic
end
