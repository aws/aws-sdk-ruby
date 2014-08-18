Before("@redshift") do
  @client = Aws::Redshift::Client.new
end

After("@redshift") do
end
