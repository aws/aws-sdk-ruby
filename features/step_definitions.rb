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

Given /^I wait (\d+) seconds for eventual consistency$/ do |seconds|
  sleep(seconds.to_i)
end

When /^(.*), ignoring errors$/ do |step|
  step step rescue nil
end

When /^(.*) again$/ do |step|
  step step rescue nil
end

Given /^I start a memoization block$/ do
  @http_handler.requests_made.clear if @http_handler.requests_made
  AWS.start_memoizing
end

After("@memoized") do
  AWS.stop_memoizing
end

Then /^the client should not have been called$/ do
  @http_handler.requests_made.should == []
end

Then /^a request should have been made like:$/ do |table|
  table.should match_any_requests(@http_handler.requests_made)
end

Then /^no requests? should have been made like:$/ do |table|
  table.should_not match_any_requests(@http_handler.requests_made)
end

Then /^(?:exactly )?(\d+) requests? should have been made like:$/ do |count, table|
  table.should match_requests(@http_handler.requests_made, count.to_i)
end

Then /^at least (\d+) requests? should have been made like:$/ do |count, table|
  table.should match_requests_min(@http_handler.requests_made, count.to_i)
end

Then /^at most (\d+) requests? should have been made like:$/ do |count, table|
  table.should match_requests_max(@http_handler.requests_made, count.to_i)
end

RSpec::Matchers.define :match_any_requests do |requests|

  match do |table|
    matched = requests_matching(requests, table)
    matched.length > 0
  end

  failure_message_for_should do |table|
    tables = table_formatted_requests(requests)
    "expected the table above match any one of these requests:#{tables.join}"
  end

  failure_message_for_should_not do |table|
    tables = table_formatted_requests(requests_matching(requests, table))
    "the table above matched the following request(s):#{tables.join}"
  end

end

RSpec::Matchers.define :match_requests do |requests,count|

  match do |table|
    matched = requests_matching(requests, table)
    matched.length == count
  end

  failure_message_for_should do |table|
    matched = requests_matching(requests, table)
    tables = table_formatted_requests(requests)
    "matched #{matched.length}, should have matched #{count}, showing all request(s):#{tables.join}"
  end

end

RSpec::Matchers.define :match_requests_min do |requests,min|

  match do |table|
    matched = requests_matching(requests, table)
    matched.length >= min
  end

  failure_message_for_should do |table|
    matched = requests_matching(requests, table)
    unmatched = requests - matched
    tables = table_formatted_requests(unmatched)
    "matched #{matched.length}, should have matched at least #{min}, showing unmatched request(s):#{tables.join}"
  end

end

RSpec::Matchers.define :match_requests_max do |requests,max|

  match do |table|
    matched = requests_matching(requests, table)
    matched.length <= max
  end

  failure_message_for_should do |table|
    matched = requests_matching(requests, table)
    tables = table_formatted_requests(matched)
    "matched #{matched.length}, should have matched at most #{max}, showing matched request(s):#{tables.join}"
  end

end

def requests_matching requests, table
  matched = []
  requests.each do |request|

    catch(:non_matching) do

      table.hashes.each do |requirement|

        (type, name, value) = requirement.values_at('TYPE', 'NAME', 'VALUE')

        case type
        when 'http'
          throw :non_matching unless
            case name
            when 'verb'       then request.http_method == value
            when 'host'       then request.host == value
            when 'host_match' then request.host =~ /^#{value}$/
            when 'path'       then request.path == value
            when 'path_match' then request.path =~ /^#{value}$/
            when 'uri'        then request.uri == value
            when 'uri_match'  then request.uri =~ /^#{value}$/
            when 'body'       then request.body == value
            else pending("unhandled http requirement `#{name}`")
            end

        when 'param'
          throw :non_matching unless begin
            param = request.params.detect{|p| p.name == name }
            param and param.value.to_s == value
          end

        when 'param_match'
          throw :non_matching unless begin
            param = request.params.detect{|p| p.name == name }
            param and param.value.to_s =~ /^#{value}$/
          end

        when 'header'
          throw :non_matching unless request.headers[name].to_s == value

        when 'header_match'
          throw :non_matching unless request.headers[name].to_s =~ /^#{value}$/

        when 'json'
          body = JSON.load(request.body)
          throw :non_matching unless
            (eval("body#{name}").to_s == value rescue false)

        when 'json_match'
          body = JSON.load(request.body)
          throw :non_matching unless
            (eval("body#{name}").to_s =~ /^#{value}$/ rescue false)

        when 'target'
          if name == 'like'
            throw :non_matching unless request.headers['x-amz-target'] =~ /#{value}/
          else
            throw :non_matching unless request.headers['x-amz-target'] == value
          end

        else pending("unhandled requirement type `#{type}`")
        end

      end

      matched << request

    end
  end
  matched
end

def table_formatted_requests requests
#   tables = requests.collect do |req|
#     table = []
#     table << "|TYPE|NAME|VALUE|"
#     table << "|http|verb|#{req.http_method}|"
#     table << "|http|host|#{req.host}|"
#     table << "|http|path|#{req.path}|"
#     table << "|http|uri|#{req.uri}|"
#     req.params.each do |param|
#       # EEEK! this will likely need to change at some point, we have to remove
#       # the newlines because that makes for an invalid table
#       table << "|param|#{param.name}|#{param.value.gsub(/\n/, '')}|"
#     end
#     req.headers.each_pair do |key,value|
#       #unless %w(authorization date).include?(key)
#         table << "|param|#{key}|#{value}|"
#       #end
#     end
#     Cucumber::Ast::Table.parse(table.join("\n"), nil, nil)
#   end
#   tables.collect{|t| t.to_s(:color => false, :prefixes => Hash.new('')) }
  tables = requests.collect do |req|
    table = []
    if req.headers["content-type"] and req.headers["content-type"].include?("json")
      table << %w(TYPE NAME VALUE)
      table << ['header', 'x-amz-target', req.headers["x-amz-target"]]
      body = JSON.load(req.body)
      body.each do |name, value|
        table << ['json', "[\"#{name}\"]", value.inspect]
      end
    else
      table << %w(TYPE NAME VALUE)
      table << ['http', 'verb', req.http_method.to_s]
      table << ['http', 'host', req.host.to_s]
      table << ['http', 'path', req.path.to_s]
      table << ['http', 'uri', req.uri.to_s]
      req.params.each do |param|
        table << ['param', param.name.to_s, param.value.to_s]
      end
      req.headers.each_pair do |key,value|
        table << ['header', key.to_s, value.to_s]
      end
    end
    Cucumber::Ast::Table.new(table)
  end
  tables.collect{|t| t.to_s(:color => false, :prefixes => Hash.new('')) }
end

When /^I wait for (\d+) seconds$/ do |seconds|
  sleep seconds.to_i
end

After do |scenario|
  @proxy.shutdown if @proxy
end

Given /^I have an HTTP proxy running on localhost$/ do
  require 'webrick/httpproxy'
  @proxy = WEBrick::HTTPProxyServer.new(:BindAddress => "127.0.0.1", :Port => 0)
  @proxy_thread = Thread.new do
    @proxy.start
  end
end

When /^I configure an S3 interface using the proxy URI$/ do
  @s3 = S3.new(:proxy_uri => "http://127.0.0.1:#{@proxy.config[:Port]}")
end

Then /^I should be able to make a call to S3$/ do
  @s3.buckets.to_a
end

Then /^the result should be:$/ do |string|
  @result.should == eval(string)
end

Then /^I should receive an error with:$/ do |table|
  code = table.hashes[0]['code']
  message = table.hashes[0]['message']
  @error.code.should eq(code)
  @error.message.should eq(message)
end
