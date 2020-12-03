Before("@ecrpublic") do
  @service = Aws::ECRPublic::Resource.new
  @client = @service.client
end

After("@ecrpublic") do
  # shared cleanup logic
end
