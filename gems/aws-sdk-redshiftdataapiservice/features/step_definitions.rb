Before("@redshiftdataapiservice") do
  @service = Aws::RedshiftDataAPIService::Resource.new
  @client = @service.client
end

After("@redshiftdataapiservice") do
  # shared cleanup logic
end
