Before("@directconnect") do
  @client = Aws::DirectConnect::Client.new
end

After("@directconnect") do
end
