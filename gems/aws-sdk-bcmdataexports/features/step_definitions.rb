Before("@bcmdataexports") do
  @service = Aws::BCMDataExports::Resource.new
  @client = @service.client
end

After("@bcmdataexports") do
  # shared cleanup logic
end
