Before("@autoscaling") do
  @autoscaling = @client = Aws.autoscaling
end

After("@autoscaling") do
end
