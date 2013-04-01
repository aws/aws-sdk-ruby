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

When /^I generate pre\-signed form fields for the object "([^\"]*)"$/ do |key|
  @form = @result = @bucket.objects[key].presigned_post
end

When /^I use a regular HTTP client to POST the data "([^\"]*)"$/ do |data|
  execute_post(@form,
               :data => data)
end

When /^I generate pre\-signed form fields for an upload to "([^\"]*)"$/ do |key|
  @form = @result = @bucket.presigned_post(:key => key)
end

When /^I use the form to upload "([^\"]*)" containing "([^\"]*)"$/ do |filename, data|
  execute_post(@form, :data => data, :filename => filename)
end

When /^I generate pre\-signed form fields for the object "([^\"]*)" with the following parameters:$/ do |key, table|
  opts = table.rows_hash.inject({}) do |opts, (name, value)|
    opts[name.to_sym] = case name
                        when "acl", "server_side_encryption"
                          value.to_sym
                        else
                          value
                        end
    opts
  end
  @form = @result = @bucket.presigned_post(opts.merge(:key => key))
end

Then /^the response should be a redirect to "([^\"]*)"$/ do |url|
  @result.should be_a(Net::HTTPRedirection)
  @result["location"].should include(url)
end

Then /^the response status code should be (\d+)$/ do |code|
  fail("got wrong status code #{@result.code}: #{@result.body}") unless
       @result.code == code
end

When /^I generate pre\-signed form fields for the object "([^\"]*)" with metadata "([^\"]*)" set to "([^\"]*)"$/ do |key, meta, value|
  @object = @bucket.objects[key]
  @form = @result =
    @object.presigned_post(:metadata => Hash[[[meta, value]]])
end

When /^I use a regular HTTP client to POST the form with the additional field "([^\"]*)" set to "([^\"]*)"$/ do |field, value|
  execute_post(@form, :additional => Hash[[[field, value]]])
end

When /^I generate pre\-signed form fields for the object "([^\"]*)" for content lengths between (\d+) and (\d+) bytes$/ do |key, min, max|
  range = (min.to_i)..(max.to_i)
  @form = @result =
    @bucket.objects[key].presigned_post(:content_length => range)
end

When /^I generate pre\-signed form fields for keys starting with "([^\"]*)"$/ do |prefix|
  @form = @result =
    @bucket.presigned_post.where(:key).starts_with(prefix)
end

When /^I use a regular HTTP client to POST data to "([^\"]*)"$/ do |key|
  execute_post(@form, :additional => { "key" => key },
               :ignore_errors => true)
end

When /^I generate pre\-signed form fields where metadata "([^\"]*)" starts with "([^\"]*)"$/ do |meta, prefix|
  @form = @result =
    @bucket.presigned_post.where_metadata(meta).starts_with(prefix)
end

When /^I use a regular HTTP client to POST data with metadata "([^\"]*)" set to "([^\"]*)"$/ do |meta, value|
  execute_post(@form,
               :additional => Hash[[["x-amz-meta-#{meta}", value]]],
               :ignore_errors => true)
end

When /^I generate pre\-signed form fields for the object "([^\"]*)" ignoring the "([^\"]*)" field$/ do |key, ignored|
  @form = @result =
    @bucket.presigned_post(:ignore => ignored)
end

When /^I generate pre\-signed form fields that expire in (\d+) seconds$/ do |expires|
  @form = @result =
    @bucket.presigned_post(:expires => expires.to_i)
end

When /^I wait (\d+) seconds$/ do |seconds|
  sleep seconds.to_i
end

When /^I generate pre\-signed form fields where header "([^\"]*)" starts with "([^\"]*)"$/ do |header, prefix|
  @form = @result =
    @bucket.presigned_post.where(header.to_sym).starts_with(prefix)
end

When /^I use a regular HTTP client to POST data with header "([^\"]*)" set to "([^\"]*)"$/ do |header, value|
  execute_post(@form, :additional => Hash[[[header, value]]],
               :ignore_errors => true)
end

When /^I generate pre\-signed form fields for the object "([^\"]*)" with a large policy$/ do |key|
  @form = @result = @bucket.objects[key].
    presigned_post(:additional => Hash[[["foo", "bar"*20]]]).
    where(:content_length).in(1..200)
end

def execute_post(form, opts = {})
  require 'net/http/post/multipart'

  data = opts[:data] || "HELLO"
  filename = opts[:filename] || "foo.txt"

  Net::HTTP.start(form.url.host) do |http|
    file = UploadIO.new(StringIO.new(data), "text/plain", filename)

    fields = form.fields.
      merge(opts[:additional] || {})
    fields["key"] ||= "foo"

    fields = fields.to_a + [["file", file]]

    req = Net::HTTP::Post::Multipart.new(form.url.path, fields)
    req.delete('Accept-Encoding')
    resp = http.request(req)
    @result = resp

    unless
      resp.kind_of?(Net::HTTPSuccess) or
      resp.kind_of?(Net::HTTPRedirection) or
      resp.kind_of?(Net::HTTPForbidden)
    then
      raise "status code #{resp.code}: #{resp.body}"
    end

  end
end
