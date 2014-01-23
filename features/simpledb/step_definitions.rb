Before("@simpledb") do
  @simpledb = @client = Aws.simpledb
end

After("@simpledb") do
end
