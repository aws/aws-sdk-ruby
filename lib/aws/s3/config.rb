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

AWS::Core::Configuration.module_eval do

  add_service 'S3', 's3' do |region|
    if region == 'us-east-1'
      's3.amazonaws.com'
    else
      's3-%s.amazonaws.com' % region
    end
  end

  add_option :s3_force_path_style, false, :boolean => true

  add_option :s3_multipart_threshold, 16 * 1024 * 1024

  add_option :s3_multipart_min_part_size, 5 * 1024 * 1024

  add_option :s3_multipart_max_parts, 10000

  add_option :s3_server_side_encryption, nil

  add_option :s3_encryption_key, nil

  add_option :s3_encryption_materials_location, :metadata

  add_option :s3_encryption_matdesc, '{}'

  add_option :s3_storage_class, 'STANDARD'

end
