Before("@elastictranscoder") do
  @elastictranscoder = @client = Aws.elastictranscoder
end

After("@elastictranscoder") do
end
