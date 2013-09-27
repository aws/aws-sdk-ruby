Before("@s3") do
  @s3 = Aws.s3
  @created_buckets = []
end

After("@s3") do
  @created_buckets.each do |bucket|
    loop do
      objects = @s3.list_object_versions(bucket: bucket).data.versions.map do |v|
        { key: v.key, version_id: v.version_id }
      end
      break if objects.empty?
      @s3.delete_objects(bucket: bucket, delete: { objects: objects })
    end
    @s3.delete_bucket(bucket: bucket)
  end
end
