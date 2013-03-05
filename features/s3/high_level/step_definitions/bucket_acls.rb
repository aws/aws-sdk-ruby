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

When /^I set the bucket ACL to a string$/ do
  @s3.buckets[@bucket_name].acl = <<END
<AccessControlPolicy xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <Owner>
    <ID>#{@test_config["owner_id"]}</ID>
    <DisplayName>#{@test_config["display_name"]}</DisplayName>
  </Owner>
  <AccessControlList>
    <Grant>
      <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               xsi:type="CanonicalUser">
        <ID>d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df</ID>
        <DisplayName>Mickey Mouse</DisplayName>
      </Grantee>
      <Permission>FULL_CONTROL</Permission>
    </Grant>
  </AccessControlList>
</AccessControlPolicy>
END
end

Given /^I have set a bucket ACL$/ do
  step "I call create_bucket"
  @bucket = @s3.buckets[@bucket_name]
  @bucket.acl = {
    :owner => { :id => @bucket.owner.id },
    :grants => [{ :permission => :full_control,
                  :grantee => {
                    :canonical_user_id =>
                    "b82eae0a69b20ebec9f229f3812b69eec1e09bbf89b1999ccb08aa97bda77270",
                  } }]
  }
end

When /^I ask for the bucket ACL$/ do
  @result = @bucket.acl
end

Then /^the result should be an AccessControlList object$/ do
  @result.should be_an(S3::AccessControlList)
end

Then /^the result should have the same grants as the one I set$/ do
  @result.grants.map { |g| g.grantee.canonical_user_id }.
    should include("b82eae0a69b20ebec9f229f3812b69eec1e09bbf89b1999ccb08aa97bda77270")
end

When /^I change the ACL to include a new grant$/ do
  @s3.buckets[@bucket_name].acl.change do |acl|
    acl.grant(:read_acp).
      to(:canonical_user_id =>
         "b82eae0a69b20ebec9f229f3812b69eec1e09bbf89b1999ccb08aa97bda77270")
  end
end
