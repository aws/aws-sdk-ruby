Before("@omics") do
  @service = Aws::Omics::Resource.new
  @client = @service.client
end

After("@omics") do
  # shared cleanup logic
end
