Before("@mediatailor") do
  @service = Aws::MediaTailor::Resource.new
  @client = @service.client
end

After("@mediatailor") do
  # shared cleanup logic
end
