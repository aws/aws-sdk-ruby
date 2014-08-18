Before("@ses") do
  @client = Aws::SES::Client.new
end

After("@ses") do
end
