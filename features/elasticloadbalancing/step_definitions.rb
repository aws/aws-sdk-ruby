Before("@elasticloadbalancing") do
  @elasticloadbalancing = @client = Aws.elasticloadbalancing
end

After("@elasticloadbalancing") do
end
