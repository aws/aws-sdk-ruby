Before("@autoscaling") do
  @client = Aws::AutoScaling::Client.new
end

After("@autoscaling") do
end
