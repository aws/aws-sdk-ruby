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

require 'digest/md5'

Before("@dynamo_db") do
  @dynamo_db = AWS::DynamoDB.new
  @tables = []
  @created_tables = []
end

After("@dynamo_db") do |scenario|

  AWS.stop_memoizing

  @created_tables.each do |table|
    eventually { table.status.should_not == :creating }
    table.delete rescue nil
  end

end

def create_table(string)
  table_name = "ruby-shared-test-#{Digest::MD5.hexdigest(string)}"

  begin

    @table = @dynamo_db.tables.create(table_name, 10, 10, eval(string))
    @tables << @table

    eventually do
      @table.exists?.should == true and @table.status.should == :active
    end

  rescue DynamoDB::Errors::ResourceInUseException => e
    @table = @dynamo_db.tables[table_name]
    case @table.status
    when :active
      @table.load_schema
      @table.items.each(&:delete)
    when :creating, :updating
      sleep 5 while [:creating, :updating].include?(@table.status)
      retry
    when :deleting
      sleep 5 while @table.exists? and @table.status == :deleting
      retry
    else
      raise "Not sure how to make table #{@table.name.inspect} active"
    end
  end
end

Given /^I configure dynamo DB to not convert numbers to big decimal$/ do
  config = @dynamo_db.config.with(:dynamo_db_big_decimals => false)
  @dynamo_db = AWS::DynamoDB.new(:config => config)
end

Given /^I have an empty DynamoDB table$/ do
  create_table "{ :hash_key => { :id => :string } }"
end

Given /^I have an empty DynamoDB table with options:$/ do |string|
  create_table(string)
end
