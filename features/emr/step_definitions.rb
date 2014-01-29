Before("@emr") do
  @emr = @client = Aws.emr
end

After("@emr") do
end
