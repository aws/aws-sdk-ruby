Before("@iam") do
  @iam = @client = Aws.iam
end

After("@iam") do
end
