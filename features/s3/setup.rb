# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

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
