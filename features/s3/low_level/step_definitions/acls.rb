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

When /^I ask the client to set a bucket ACL$/ do
  @result = @s3_client.set_bucket_acl(:bucket_name => @bucket_name,
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
        <ID>d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df</ID>
        <DisplayName>Mickey Mouse</DisplayName>
      </Grantee>
      <Permission>FULL_CONTROL</Permission>
    </Grant>
  </AccessControlList>
</AccessControlPolicy>
END
end

When /^I ask the client to set a bucket ACL using an AccessControlList object$/ do
  acl = {
    :owner => {
      :id => @test_config["owner_id"],
      :display_name => @test_config["display_name"]
    },
    :grants => [{ :grantee => {
                    :canonical_user_id => "d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df",
                    :display_name => "Mickey Mouse"
                  },
                  :permission => :full_control }]
  }
  @result = @s3_client.set_bucket_acl(:bucket_name => @bucket_name,
                                   :acl => AWS::S3::AccessControlList.new(acl))
end

Then /^the bucket ACL should resemble the one that was set$/ do
  r = @s3_client.get_bucket_acl(:bucket_name => @bucket_name)
  r[:grants].first[:grantee][:canonical_user_id].should =~
    /d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df/
end

When /^I ask the client to get the bucket ACL$/ do
  @result = @s3_client.get_bucket_acl(:bucket_name => @bucket_name)
end

Then /^the result should return something that looks like a acl from its acl method$/ do
  @result.acl.to_s.should =~ /AccessControlPolicy/
end

Then /^the result should be an AccessControlList object containing the right data$/ do
  acl = S3::AccessControlList.new(@result.data)
  acl.owner.id.should == @test_config["owner_id"]
  acl.grants.size.should == 1
  grant = acl.grants.first
  grant.grantee.canonical_user_id.should == @test_config["owner_id"]
  grant.permission.name.should == :full_control
end

When /^I add a grant to the bucket ACL$/ do
  resp = @s3_client.get_bucket_acl(:bucket_name => @bucket_name)
  @acl = AWS::S3::AccessControlList.new(resp.data)
  @acl.grant(:read_acp).to(:amazon_customer_email => "aws-dr-sandbox@amazon.com")
end

When /^I ask the client to set the modified bucket ACL$/ do
  @result = @s3_client.set_bucket_acl(:bucket_name => @bucket_name, :acl => @acl)
end

Then /^the bucket ACL should include the new grant$/ do
  r = @s3_client.get_bucket_acl(:bucket_name => @bucket_name)
  r[:grants].map{|g| g[:permission] }.should include(:read_acp)
end
