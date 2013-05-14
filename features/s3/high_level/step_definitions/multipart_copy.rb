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


Given(/^I upload a (\d+)MB file to the key "(.*?)"$/) do |mb, key|
  @file_size = mb.to_i * 1024 * 1024
  data = '.' * @file_size
  @bucket.objects[key].write(data)
end

When(/^I copy the object from "(.*?)" to "(.*?)" with multipart$/) do |source, target|
  @bucket.objects[source].copy_to(target,
    :use_multipart_copy => true,
    :content_length => @file_size)
end
