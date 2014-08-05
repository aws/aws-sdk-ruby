Before("@simpledb") do
  @client = Aws::SimpleDB::Client.new
end

After("@simpledb") do
end
