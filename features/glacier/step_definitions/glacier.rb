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

Before("@glacier") do
  @glacier = Glacier.new
  @created_vaults = []
end

Before("@glacier", "@archives") do
  vault_name = 'aws-sdk-ruby-integration-test-vault'
  if @glacier.vaults[vault_name].exists?
    @vault = @glacier.vaults[vault_name]
  else
    @vault = @glacier.vaults.create(vault_name)
  end
end

After("@glacier") do

  @created_vaults.each do |vault|
    vault.delete
  end

end
