# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

When /^I generate a pre\-signed (\w+) URL for the object "([^\"]*)"$/ do |method, key|
  @url = @result = @bucket.objects[key].url_for(method, :secure => false)
end

When /^I use a regular HTTP client to GET the URL$/ do
  require 'net/http'
  @result = Net::HTTP.get_response(@url)
end

Then /^the response body should be "([^\"]*)"$/ do |body|
  @result.body.should == body
end

When /^I use a regular HTTP client to PUT "([^\"]*)" to the URL$/ do |body|
  Net::HTTP.start(@url.host) do |http|
    resp = http.send_request("PUT", @url.request_uri, body, { "content-type" => "" })
    resp.body.to_s.should == ""
    resp.should be_a(Net::HTTPSuccess)
  end
end

When /^I use a regular HTTP client to DELETE the URL$/ do
  Net::HTTP.start(@url.host) do |http|
    http.delete(@url.request_uri)
  end
end

When /^I generate a pre\-signed GET URL for the object "([^\"]*)" with the following parameters:$/ do |key, table|
  opts = table.rows_hash.inject({}) do |opts, (name, value)|
    opts[name.to_sym] = value
    opts
  end.merge(:secure => false)
  @url = @result = @bucket.objects[key].url_for(:get, opts)
end

Then /^the response headers should include:$/ do |table|
  raise @result.body unless @result.kind_of?(Net::HTTPSuccess)
  table.rows_hash.each do |name, value|
    @result[name].should == value
  end
end

When /^I ask for the public URL of object "([^\"]*)"$/ do |key|
  @result = @url = @bucket.objects[key].public_url(:secure => false)
end
