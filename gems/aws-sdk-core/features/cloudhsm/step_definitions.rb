Before("@cloudhsm") do
  @client = Aws::CloudHSM::Client.new
end

After("@cloudhsm") do
end
