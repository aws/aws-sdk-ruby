Before("@workspaces") do
  @client = Aws::WorkSpaces::Client.new
end

After("@workspaces") do
end
