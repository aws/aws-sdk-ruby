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

Before("@s3", "@objects") do
  create_bucket_high_level
  @http_handler.requests_made.clear
end

When /^I ask for the object with key "([^\"]*)"$/ do |key|
  key = eval("\"#{key}\"")
  @object = @result = @bucket.objects[key]
end

Then /^the result should be an s3 object with key "([^\"]*)"$/ do |key|
  @result.should be_a S3::S3Object
  @result.key.should == key
end

When /^I ask for the object with key "([^\"]*)" using a symbol$/ do |key|
  @object = @result = @bucket.objects[key.to_sym]
end

When /^I ask for the object with key "([^\"]*)" using a method call$/ do |key|
  @object = @result = @bucket.objects.send(key)
end

When /^I write the string "([^\"]*)" to it( with public read access)?$/ do |string, access|
  @result =
      if access.to_s.empty?
        @result.write(string)
      else
        @result.write(string, :acl => :public_read)
      end
end

Then /^the object should eventually have "([^\"]*)" as its body$/ do |body|
  @result.read.should == body
end

When /^I write data passing metadata attribute "([^\"]*)" with value "([^\"]*)"$/ do |meta_name, meta_value|
  @result.write("HELLO", :metadata => { meta_name => meta_value })
end

Then /^the object should eventually have metadata "([^\"]*)" set to "([^\"]*)"$/ do |meta, value|
  @object.metadata[meta].should == value
end

When /^I write (\d+) (\d+)\-byte chunks of data using block form$/ do |n, size|
  n = n.to_i
  size = size.to_i
  @whole_size = n*size
  @whole_data = (1..@whole_size).map { |i| (i % 10).to_s }.join
  chunks = (0...n).map do |i|
    @whole_data[i*size, size]
  end
  @result.write do |stream|
    chunks.each { |chunk| stream.write(chunk) }
  end
end

Then /^the object should eventually have the full (\d+) bytes as its body$/ do |arg1|
  @result.read.should == @whole_data
end

Then /^the client should have made a "([^\"]*)" request with the full (\d+)\-byte body$/ do |verb, body|
  pending # express the regexp above with the code you wish you had
end

Given /^the bucket has an object with key "([^\"]*)"$/ do |key|
  @bucket.objects[key].write("HELLO")
end

When /^I delete the object with key "([^\"]*)"$/ do |key|
  @bucket.objects[key].delete
end

Then /^The object with key "([^\"]*)" should eventually not exist$/ do |key|
  @bucket.objects.to_a.should_not include(@result)
end

Given /^in the bucket the object with key "([^\"]*)" has the contents "([^\"]*)"$/ do |key, data|
  @bucket.objects[key].write(data)
end

When /^I read it$/ do
  @result = @result.read
end

Then /^the result should be "([^\"]*)"$/ do |body|
  @result.should == body
end

When /^I ask for the list of all the objects as an array$/ do
  @result = @bucket.objects.to_a
end

When /^I ask for (\d+) keys (\d+) at a time$/ do |limit,batch_size|
  options = { :limit => limit.to_i, :batch_size => batch_size.to_i }
  @objects = []
  @bucket.objects.each(options) do |obj|
    @objects << obj
  end
end


When /^I ask for all objects (\d+) at a time$/ do |batch_size|
  @objects = []
  @bucket.objects.each(:batch_size => batch_size.to_i) do |obj|
    @objects << obj
  end
end

Then /^the result should include the object with key "([^\"]*)"$/ do |key|
  @result.should have(1).item
  @result.first.should be_an S3::S3Object
  @result.first.key.should == key
end

Given /^it has metadata "([^\"]*)" set to "([^\"]*)"$/ do |meta, value|
  metadata = {}
  metadata[meta] = value
  @result.write("HELLO", :metadata => metadata)
end

When /^I ask for the "([^\"]*)" metadata$/ do |meta|
  @result = @result.metadata[meta]
end

Then /^I should have made at least (\d+) "([^\"]*)" bucket requests$/ do |count,verb|
  @http_handler.requests_made.select{|req|
    req.http_method == verb
  }.length.should == count.to_i
end

Given /^the object "([^\"]*)" has the contents "([^\"]*)"$/ do |key, data|
  key = eval("\"#{key}\"")
  @bucket.objects[key].write(data)
  eventually(10) { @bucket.objects[key].read.should == data }
end

When /^I copy "([^\"]*)" to "([^\"]*)"$/ do |from_key, to_key|
  @bucket.objects[from_key].copy_to(@bucket.objects[to_key])
end

When /^I copy "([^\"]*)" from "([^\"]*)"$/ do |to_key, from_key|
  from_key = eval("\"#{from_key}\"")
  @bucket.objects[to_key].copy_from(@bucket.objects[from_key])
end

Then /^the object "([^\"]*)" should have the contents "([^\"]*)"$/ do |key, data|
  @bucket.objects[key].read.should == data
end

Given /^I get the oldest version of "([^\"]*)"$/ do |key|
  @version = @bucket.objects[key].versions.to_a.last
end

When /^I copy the versioned object to "([^\"]*)"$/ do |key|
  @bucket.objects[key].copy_from(@version)
end

def meta_hash table
  table.hashes.inject({}) {|d,h| d[h['key']] = h['value']; d }
end

Given /^I write "([^\"]*)" to the key "([^\"]*)" with the metadata:$/ do |data, key, table|

  @bucket.objects[key].write(data, :metadata => meta_hash(table))
end

When /^I copy the object "([^\"]*)" to "([^\"]*)" with the metadata:$/ do |src, dest, table|
  @bucket.objects[src].copy_to(dest, :metadata => meta_hash(table))
end

Then /^the object "([^\"]*)" should read "([^\"]*)" with the metadata:$/ do |key, data, table|
  @bucket.objects[key].read.should == data
  @bucket.objects[key].metadata.to_h.should == meta_hash(table)
end

Then /^the contents of object "([^\"]*)" should eventually be "([^\"]*)"$/ do |key, data|
  eventually(30) { @bucket.objects[key].read.should == data }
end

Given /^the object "([^\"]*)" has the contents "([^\"]*)" and a :(\w+) acl$/ do |key, data, acl|
  @bucket.objects[key].write(data, :acl => acl.to_sym)
end

Then /^the result should be the object with key "([^\"]*)"$/ do |key|
  @result.should == @bucket.objects[key]
end

When /^I write the UTF\-8 string "([^\"]*)" to the object$/ do |str|
  str = eval("\"#{str}\"")
  @object.write(str)
end

Then /^the object should eventually have the bytes "([^\"]*)" as its body$/ do |str|
  str = eval("\"#{str}\"")
  str.force_encoding("BINARY") if str.respond_to?(:force_encoding)
  @object.read.bytes.to_a.should == str.bytes.to_a
end

When /^I write a UTF\-8 file containing "([^\"]*)" to the object$/ do |str|
  require 'tempfile'
  str = eval("\"#{str}\"")
  tempfile(str) do |f|
    @object.write(:file => f.path)
  end
end

When /^I write a file containing a CR-LF sequence to the object$/ do
  @bytes = "foo\x0D\x0Abar"
  tempfile(@bytes) do |f|
    @object.write(:file => f.path)
  end
end

Then /^the object should eventually have the same bytes as the file$/ do
  eventually(10) { @object.read.bytes.to_a.should == @bytes.bytes.to_a }
end

Given /^I get the object ETag$/ do
  @result = @etag = @object.etag
end

When /^I get the object\'s last modified date$/ do
  @result = @object.last_modified
end

When /^I read it with :if_match set to "([^\"]*)"$/ do |etag|
  etag = "\"#{etag}\""
  @object.read(:if_match => etag)
end

When /^I read it with :if_none_match set to the previous ETag$/ do
  @object.read(:if_none_match => @etag)
end

Then /^the result should be the same as the "([^\"]*)" header in the HTTP response$/ do |header|
  @result.should == @http_handler.last_response.headers[header.downcase].first
end

When /^I ask if the object exists$/ do
  @result = @object.exists?
end

When /^I read it with :if_unmodified_since set to an hour ago$/ do
  @result = @object.read(:if_unmodified_since => Time.now-60*60)
end

When /^I read it with :if_modified_since set to the current time$/ do
  sleep 2
  @result = @object.read(:if_modified_since => Time.now)
end

When /^I change the metadata "([^\"]*)" to "([^\"]*)" for the key "([^\"]*)"$/ do |meta, value, key|
  @bucket.objects[key].metadata[meta] = value
end

When /^I (enable|disable) reduced redundancy storage on the object "([^\"]*)"$/ do |action, key|
  enabled = (action == "enable")
  @bucket.objects[key].reduced_redundancy = enabled
end

When /^I copy the object "([^\"]*)" in place without changing anything$/ do |key|
  @bucket.objects[key].copy_from(key)
end

When /^I copy "([^\"]*)" from "([^\"]*)" with public read permissions$/ do |to, from|
  @bucket.objects[to].copy_from(from, :acl => :public_read)
end

Then /^the object "([^\"]*)" should have public read permissions$/ do |key|
  resp = Net::HTTP.get_response(@bucket.objects[key].public_url(:secure => false))
  resp.code.to_i.should == 200
end

When /^I grant public read permissions on the object "([^\"]*)"$/ do |key|
  @bucket.objects[key].acl = :public_read
end

Given /^I have the following objects:$/ do |table|
  table.hashes.each do |hash|
    @bucket.objects[hash['KEY']].write(hash['DATA'] || '')
  end
end

When /^I use delete_if to delete even objects with the prefix "([^"]*)"$/ do |prefix|
  @bucket.objects.with_prefix(prefix).delete_if do |obj|
    obj.key.to_i % 2 == 0
  end
end

Then /^the bucket should have the following keys$/ do |table|
  keys = table.hashes.map{|h| h["KEY"] }
  @bucket.objects.map(&:key).sort.should == keys.sort
end

Given /^I have (\d+) objects$/ do |count|
  count.to_i.times do |n|
    @bucket.objects[n].write(n.to_s)
  end
end

When /^I call delete_all on the collection of objects$/ do
  @bucket.objects.delete_all
end

Then /^the bucket should be empty$/ do
  @bucket.empty?.should == true
end

When /^I move the key "([^"]*)" to "([^"]*)"$/ do |key1, key2|
  @bucket.objects[key1].move_to(key2)
end

Then /^the object "([^"]*)" should not exist$/ do |key|
  @bucket.objects[key].exists?.should == false
end

Then /^the object "([^"]*)" should have the data "([^"]*)"$/ do |key, data|
  eventually do
    @bucket.objects[key].read.should == data
  end
end

When /^I move the key "([^"]*)" to "([^"]*)" to the new bucket$/ do |key1, key2|
  @old_bucket.objects[key1].move_to(key2, :bucket => @new_bucket)
end

Then /^the object "([^"]*)" should have the data "([^"]*)" in the new bucket$/ do |key, data|
  eventually do
    @new_bucket.objects[key].read.should == data
  end
end

When /^I create a pre\-signed https "([^"]*)" uri$/ do |http_method|
  @presigned_uri = @object.url_for(http_method) # defaults to https
end

When /^I make a https get request to the presigned uri$/ do
  require 'net/http'
  require 'net/https'
  http = Net::HTTP.new(@presigned_uri.host, @presigned_uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  get = Net::HTTP::Get.new(@presigned_uri.request_uri)
  @response = http.request(get).body
end

Then /^the returned value should "([^"]*)"$/ do |value|
  @response.should eq(value)
end

When /^I create a pre\-signed http "([^"]*)" uri$/ do |http_method|
  @presigned_uri = @object.url_for(http_method, :secure => false)
end

When /^I make a http get request to the presigned uri$/ do
  require 'net/http'
  @response = Net::HTTP.get(@presigned_uri)
end

When /^I create a pre\-signed "([^"]*)" uri using the session credentials$/ do |http_method|
  s3 = AWS::S3.new(@session.credentials)
  @presigned_uri = s3.buckets[@bucket.name].objects[@object.key].url_for(http_method)
end

Given /^I try to restore the object$/ do
  begin
    @object.restore
  rescue => e
    @exception = e
  end
end

When(/^I ask for all objects using the delimiter "(.*?)", (\d+) at a time$/) do |delimiter, batch_size|
  @objects = []
  @bucket.objects.each(:batch_size => batch_size.to_i, :delimiter => delimiter) do |obj|
    @objects << obj
  end
end

Then(/^I should get objects with the following prefixes:$/) do |table|
  prefixes = []
  @objects.each do |obj|
    prefixes << obj.prefix
  end

  table.hashes.each do |hash|
    prefixes.should include(hash['prefix'])
  end
end
