Before("@taxsettings") do
  @service = Aws::TaxSettings::Resource.new
  @client = @service.client
end

After("@taxsettings") do
  # shared cleanup logic
end
