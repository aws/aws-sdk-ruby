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


When /^I upload an archive that is ([0-9\.]+)MB large$/ do |megabytes|
  require 'stringio'
  data = StringIO.new('0' * megabytes.to_f * 1048576)
  options = {}
  options[:description] = "A #{megabytes}MB file full of zeros."
  @archive = @vault.archives.create(data, options)
end

Then /^I should get an archive with an ID$/ do
  @archive.archive_id.should be_a(String)
end

Then /^I should be able to delete the archive$/ do
  @archive.delete
end
