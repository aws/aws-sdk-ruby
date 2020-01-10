Before("@costandusagereportservice") do
  @service = Aws::CostandUsageReportService::Resource.new
  @client = @service.client
end

After("@costandusagereportservice") do
  # shared cleanup logic
end
