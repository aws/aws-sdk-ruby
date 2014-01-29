Before("@sts") do
  @sts = @client = Aws.sts
end

After("@sts") do
end
