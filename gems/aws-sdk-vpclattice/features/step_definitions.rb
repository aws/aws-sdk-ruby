Before("@vpclattice") do
  @service = Aws::VPCLattice::Resource.new
  @client = @service.client
end

After("@vpclattice") do
  # shared cleanup logic
end
