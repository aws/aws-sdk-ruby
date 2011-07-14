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

Given /^my account has an object in it$/ do
  Given "I call create_bucket"
  @object_key = "foo"
  @s3_client.put_object(:bucket_name => @bucket_name,
                     :key => @object_key,
                     :data => "FOO")
end

When /^I ask the client to set an object ACL$/ do
  @result = @s3_client.set_object_acl(:bucket_name => @bucket_name,
                                   :key => @object_key,
                                   :acl => (@acl = <<END))
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

When /^I ask the client to set an object ACL using an AccessControlList object$/ do
  acl = {
    :owner => {
      :id => @test_config["owner_id"],
      :display_name => @test_config["display_name"]
    },
    :grants => [{ :grantee => {
                    :canonical_user_id =>
                    "154b2f3550127d0439dfe1e89a03a7a4178048cc05c6fdaeb40796841a5cfcef",
                    :display_name => "Mickey Mouse"
                  },
                  :permission => :full_control }]
  }
  @result = @s3_client.set_object_acl(:bucket_name => @bucket_name,
                                   :key => @object_key,
                                   :acl => acl)
end

Then /^the client should have made a "([^\"]*)" request to the object ACL$/ do |method|
  r = @http_handler.requests_made.last
  r.http_method.should == method
  r.host.should == "#@bucket_name.s3.amazonaws.com"
  r.uri.should == "/#@object_key?acl"
end

Then /^the object ACL should resemble the one that was set$/ do
  doc = REXML::Document.new(@s3_client.get_object_acl(:bucket_name => @bucket_name,
                                                   :key => @object_key).acl.to_s)
  doc.elements["//Grant/Grantee"].to_s.should =~ /154b2f3550127d0439dfe1e89a03a7a4178048cc05c6fdaeb40796841a5cfcef/
end

When /^I add a grant to the object ACL$/ do
  @acl = @s3_client.get_object_acl(:bucket_name => @bucket_name,
                                :key => @object_key).acl
  @acl.grant(:read_acp).to(:amazon_customer_email => "aws-dr-sandbox@amazon.com")
end

When /^I ask the client to set the modified object ACL$/ do
  @result = @s3_client.set_object_acl(:bucket_name => @bucket_name,
                                   :key => @object_key,
                                   :acl => @acl)
end

Then /^the object ACL should include the new grant$/ do
  acl = @s3_client.get_object_acl(:bucket_name => @bucket_name,
                               :key => @object_key).acl
  # it would be nice to check the grantee as well, but S3
  # canonicalizes it so we get something different than what we put in
  acl.grants.map { |g| g.permission.name }.should include(:read_acp)
end

When /^I ask the client to get the object ACL$/ do
  @result = @s3_client.get_object_acl(:bucket_name => @bucket_name,
                                   :key => @object_key)
end
