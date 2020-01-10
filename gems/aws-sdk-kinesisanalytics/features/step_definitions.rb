Before("@kinesisanalytics") do
  @service = Aws::KinesisAnalytics::Resource.new
  @client = @service.client
end

After("@kinesisanalytics") do
  # shared cleanup logic
end
