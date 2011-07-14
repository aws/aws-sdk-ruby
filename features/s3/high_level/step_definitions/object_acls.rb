# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

When /^I set the object ACL to a string$/ do
  @s3.buckets[@bucket_name].objects[@object_key].acl = <<END
<AccessControlPolicy xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <Owner>
    <ID>#{@test_config["owner_id"]}</ID>
    <DisplayName>#{@test_config["display_name"]}</DisplayName>
  </Owner>
  <AccessControlList>
    <Grant>
      <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               xsi:type="CanonicalUser">
        <ID>154b2f3550127d0439dfe1e89a03a7a4178048cc05c6fdaeb40796841a5cfcef</ID>
        <DisplayName>Mickey Mouse</DisplayName>
      </Grantee>
      <Permission>FULL_CONTROL</Permission>
    </Grant>
  </AccessControlList>
</AccessControlPolicy>
END
end

Given /^I have set an object ACL$/ do
  Given "my account has an object in it"
  Given "I set the object ACL to a string"
end

When /^I ask for the object ACL$/ do
  @result = @s3.buckets[@bucket_name].objects[@object_key].acl
end

When /^I change the object ACL to include a new grant$/ do
  @s3.buckets[@bucket_name].objects[@object_key].acl.change do |acl|
    acl.grant(:read_acp).
      to(:canonical_user_id =>
         "154b2f3550127d0439dfe1e89a03a7a4178048cc05c6fdaeb40796841a5cfcef")
  end
end
