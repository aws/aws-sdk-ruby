Before("@opsworkscm") do
  @service = Aws::OpsWorksCM::Resource.new
  @client = @service.client
end

After("@opsworkscm") do
  # shared cleanup logic
end
