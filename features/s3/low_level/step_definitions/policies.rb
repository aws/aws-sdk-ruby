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

def valid_policy; <<END; end
{ "Id": "Policy1296685811282",
  "Version": "2008-10-17",
      "Statement": [
        {
          "Sid": "Stmt1296685809629",
          "Action": "s3:*",
          "Effect": "Allow",
          "Resource": "arn:aws:s3:::#@bucket_name",
          "Principal": {
            "AWS": "arn:aws:iam::681294939609:root"
          }
        }
      ]
    }
END

When /^I ask the client to set a bucket policy$/ do
  @result = @s3_client.set_bucket_policy(:bucket_name => @bucket_name, :policy => valid_policy)
end

Given /^the bucket has a policy$/ do
  @s3_client.set_bucket_policy(:bucket_name => @bucket_name, :policy => valid_policy)
end

Then /^the result should have the policy in its policy method$/ do
  @result.policy.statements.size.should == 1
  stmt = @result.policy.statements.first
  stmt.sid.should == "Stmt1296685809629"
  stmt.effect.should == "Allow"
  stmt.resources.join.should include(@bucket_name)
  stmt.principals.join.should include("681294939609")
end

When /^I ask the client to get the bucket policy$/ do
  @result = @s3_client.get_bucket_policy(:bucket_name => @bucket_name)
end

When /^I ask the client to delete the bucket policy$/ do
  @result = @s3_client.delete_bucket_policy(:bucket_name => @bucket_name)
end

Then /^the policy should not exist$/ do
  lambda do
    @s3_client.get_bucket_policy(:bucket_name => @bucket_name)
  end.should raise_error(S3::Errors::NoSuchBucketPolicy)
end

When /^I ask the client to set a bucket policy using the OO interface$/ do
  @result = @s3_client.set_bucket_policy(:bucket_name => @bucket_name,
                                      :policy => S3::Policy.new do |policy|
                                        policy.allow(:actions => "s3:*",
                                                     :resources => @bucket_name,
                                                     :principals => "681294939609").
                                          where("aws:SourceIp").is_ip_address("192.168.1.0/24",
                                                                              "192.168.1.1/32").
                                          where("aws:SourceIp").not_ip_address("192.168.1.2/32").
                                          where("s3:prefix").like("photos/*").
                                          where("aws:SecureTransport").is(true)
                                      end)
end

Then /^the bucket policy should resemble the one I set$/ do
  resp = @s3_client.get_bucket_policy(:bucket_name => @bucket_name)
  policy = AWS::S3::Policy.from_json(resp.data[:policy])
  policy.statements.map { |s| s.resources }.
    flatten.should include("arn:aws:s3:::#@bucket_name")
  policy.statements.inject(0) { |sum, s| sum + s.conditions.to_h.size }.should > 0
  stmt = policy.statements.find do |s|
    s.resources.include?("arn:aws:s3:::#@bucket_name") and
      !s.conditions.to_h.empty?
  end
  stmt.principals.join.should =~ /681294939609/
  ip_conditions = stmt.conditions[:source_ip]
  ip_conditions.operators.sort.should == ["IpAddress", "NotIpAddress"]
  ip_conditions[:is_ip_address].values.sort.should == ["192.168.1.0/24", "192.168.1.1/32"]
  stmt.conditions["StringLike"]["s3:prefix"].values.should == ["photos/*"]
  stmt.conditions[:is].operators.should == ["Bool"]
  stmt.conditions[:is][:secure_transport].values.should == [true]
end

When /^I produce a modified bucket policy using the OO interface$/ do
  resp = @s3_client.get_bucket_policy(:bucket_name => @bucket_name)
  @policy = AWS::S3::Policy.from_json(resp.data[:policy])
  @policy.allow(:actions => "s3:*",
               :resources => @bucket_name,
               :principals => "681294939609").
    where("aws:SourceIp").is_ip_address("192.168.1.0/24",
                                        "192.168.1.1/32").
    where("aws:SourceIp").not_ip_address("192.168.1.2/32").
    where("s3:prefix").like("photos/*").
    where("aws:SecureTransport").is(true)
end

When /I ask the client to set the modified policy/ do
  @result = @s3_client.set_bucket_policy(:bucket_name => @bucket_name,
                                      :policy => @policy)
end
