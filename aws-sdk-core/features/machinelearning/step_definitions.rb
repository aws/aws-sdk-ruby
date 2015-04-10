Before("@machinelearning") do
  @client = Aws::MachineLearning::Client.new
end

After("@machinelearning") do
end
