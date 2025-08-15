Before("@bcmrecommendedactions") do
  @service = Aws::BCMRecommendedActions::Resource.new
  @client = @service.client
end

After("@bcmrecommendedactions") do
  # shared cleanup logic
end
