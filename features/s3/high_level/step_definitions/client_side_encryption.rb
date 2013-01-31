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
# language: en

When /^I write the string "([^"]*)" to it using CSE$/ do |contents|
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  options[:content_md5] = @md5 unless @md5.nil?

  @object.write(contents, options)
end

Then /^the object should eventually have encrypted "([^"]*)" as its body$/ do |data|
  @result = @object.read()
  @result.should_not eq(data)
end

Then /^the object CSE data should be stored with metadata$/ do
  @result = @object.metadata.to_h
  @result['x-amz-key'].should_not eq(nil)
  @result['x-amz-iv'].should_not eq(nil)
  @result['x-amz-matdesc'].should_not eq(nil)
end

Then /^the object should have unencrypted_content_length$/ do
  @object.metadata['x-amz-unencrypted-content-length'].should_not eq(nil)
end

Given /^in the bucket the object with key "([^"]*)" has the contents CSE encrypted "([^"]*)"$/ do |key, data|
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  options[:content_md5] = @md5 unless @md5.nil?
  @bucket.objects[key].write(data, options)
end

Given /^I have an asymmetric CSE key$/ do
  @cse_key = OpenSSL::PKey::RSA.new(2048)
end


Given /^I have a symmetric "([^"]*)" CSE key$/ do |num|
  a_cipher = OpenSSL::Cipher.new("AES-#{num}-CBC")
  a_cipher.encrypt
  @cse_key = a_cipher.random_key
end

When /^I read it with the CSE key$/ do
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  @result = @object.read(options)
end

Given /^I specify no CSE material description$/ do
  @cse_matdesc = nil
end

Given /^I specify the CSE material description as:$/ do |table|
  @cse_matdesc = table.rows_hash
end

Given /^I specify no CSE material location$/ do
  @cse_material_location = nil
end

Given /^I specify metadata CSE material location$/ do
  @cse_material_location = :metadata
end

Given /^I specify instruction file CSE material location$/ do
  @cse_material_location = :instruction_file
end

Then /^the object CSE data should be stored with an instruction file$/ do
  @object.metadata['x-amz-key'].should eq(nil)
  @object.metadata['x-amz-iv'].should eq(nil)
  @object.metadata['x-amz-matdesc'].should eq(nil)
  cse_inst_file = @bucket.objects["#{@object.key}.instruction"]
  cse_inst_file.exists?.should eq(true)
  cse_inst_file.metadata['x-amz-crypto-instr-file'].should eq("")
  json_file = cse_inst_file.read()
  begin
    data = JSON.parse(json_file)
    data['x-amz-key'].should_not eq(nil)
    data['x-amz-iv'].should_not eq(nil)
  #Rescue?
  end
end

Then /^the result should not be "([^"]*)"$/ do |data|
  @result.should_not eq(data)
end

When /^I specify "([^"]*)" as the md5$/ do |md5|
  @md5 = md5
end

When /^I specify no md5$/ do
  @md5 = nil
end

When /^I write the file to the object "([^\"]*)" with CSE and the following metadata:$/ do |key, table|
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  options[:content_md5] = @md5 unless @md5.nil?
  options[:data]        = @file.open
  options[:metadata]    = table.rows_hash
  @object = @bucket.objects[key]
  @object.write(options)
end

Then /^the metadata of object "([^\"]*)" should eventually include:$/ do |key, table|
  object = @bucket.objects[key]
  sleep 1 until object.head.content_length > 0
  meta = object.head.meta.to_h
  array = meta.keys
  table.rows_hash { |key, value| meta[key].should eq(value) }
end


Then /^the file at key "([^\"]*)" should eventually be encrypted$/ do |key|
  @result = @object.read()
  @result.should_not eq(@file.open)
end


Given /^in the bucket the object with key "([^"]*)" has the CSE encrypted file$/ do |key|
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  options[:content_md5] = @md5 unless @md5.nil?
  options[:data]        = @file.open
  @object = @bucket.objects[key]
  @object.write(options)
end

Then /^the contents of CSE object "([^\"]*)" should eventually match the file$/ do |key|
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  sleep 1
  object = @bucket.objects[key]
  Digest::MD5.hexdigest(object.read(options)).should ==
    Digest::MD5.file(@file.path).hexdigest
end

When /^I read it with the CSE key and a block into a variable$/ do
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  @result = ""
  @object.read(options) { |output| @result += output }
end

When /^I copy "([^"]*)" to "([^"]*)" with CSE enabled$/ do |key1, key2|
  options = {}
  options[:client_side_encrypted] = true
  options[:metadata] = {:garblegarblegarble => "replace metadata"}
  @bucket.objects[key1].copy_to(key2, options)
  @object = @bucket.objects[key2]
end

When /^I move "([^"]*)" to "([^"]*)" with CSE enabled$/ do |key1, key2|
  options = {}
  options[:client_side_encrypted] = true
  options[:metadata] = {:garblegarblegarble => "replace metadata"}
  @bucket.objects[key1].move_to(key2, options)
  @object = @bucket.objects[key2]
end

Given /^I put the file in an IO object$/ do
  @IO_object = @file.open
end

When /^I write the IO object$/ do
  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  options[:data] = @IO_object
  @object.write(options)
end

When /^I write the file using an IO-like object and an estimated length of (\d+)mb$/ do |length|
  @fd = @file.open
  class IOwithoutsize
    def initialize io
      @io = io
    end

    def read bytes
      @io.read(bytes)
    end

    def eof?
      @io.eof?
    end
  end

  options = {}
  options[:encryption_key] = @cse_key unless @cse_key.nil?
  options[:encryption_materials_location] = @cse_material_location unless @cse_material_location.nil?
  options[:encryption_matdesc] = @cse_matdesc unless @cse_matdesc.nil?
  options[:estimated_content_length] = length.to_i * 1024 * 1024
  options[:data] = IOwithoutsize.new(@file.open)
  @object.write(options)
end

When /^I delete the CSE object with :delete_instruction_file$/ do
  @object.delete(:delete_instruction_file => true)
end

Then /^No instruction file remains$/ do
  @object.bucket.objects[@object.key + '.instruction'].exists?.should == false
end
