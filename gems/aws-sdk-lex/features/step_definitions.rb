Before("@lex") do
  @service = Aws::Lex::Resource.new
  @client = @service.client
end

After("@lex") do
  # shared cleanup logic
end
