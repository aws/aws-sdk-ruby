Before("@redshift") do
  @redshift = @client = Aws.redshift
end

After("@redshift") do
end
