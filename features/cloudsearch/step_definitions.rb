Before("@cloudsearch") do
  @cloudsearch = @client = Aws.cloudsearch
end

After("@cloudsearch") do
end
