Before("@cloudsearch") do
  @client = Aws::CloudSearch::Client.new
end

After("@cloudsearch") do
end
