Before("@glacier") do
  @glacier = Aws.glacier
end

Before("@glacier", "@upload") do
  # ensure we have a suitable vault for testing with
  @vault_name = 'aws-sdk-core-integration-test-vault'
  begin
    @glacier.describe_vault(vault_name: @vault_name, account_id: '-')
  rescue Aws::Glacier::Errors::ResourceNotFoundException
    @glacier.create_vault(vault_name: @vault_name, account_id: '-')
  end
end

After("@glacier") do
end
