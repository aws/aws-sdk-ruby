Before("@rolesanywhere") do
  @service = Aws::RolesAnywhere::Resource.new
  @client = @service.client
end

After("@rolesanywhere") do
  # shared cleanup logic
end
