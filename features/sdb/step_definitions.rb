Before("@sdb") do
  @sdb = @client = Aws.sdb
end

After("@sdb") do
end
