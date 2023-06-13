Before("@codegurusecurity") do
  @service = Aws::CodeGuruSecurity::Resource.new
  @client = @service.client
end

After("@codegurusecurity") do
  # shared cleanup logic
end
