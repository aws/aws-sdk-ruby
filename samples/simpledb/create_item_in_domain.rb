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

require '../samples_config'

domain_name = ARGV[0]

unless domain_name
  puts "Usage: #{__FILE__} <DOMAIN_NAME>"
  exit 1
end

# get an instance of the simpledb interface using the default configuration
client = AWS::SimpleDB.new

# get the domain with given name
puts "Checking the existence of domain"
d = client.domains[domain_name]

invalid_name = false

# make sure that the domain exists
begin
	if d.exists?
		puts "	The domain '#{domain_name}' is available. Continue to add item"
	else
		d = client.domains.create domain_name 
		puts "	Created domain '#{domain_name}'"
	end
rescue AWS::SimpleDB::Errors::InvalidParameterValue => e
	puts e.message
	invalid_name = true
end

unless invalid_name
	# Add item to the domain
	item = { :created_date => Date.today.iso8601, :description => 'A demo item for simpledb service' , :attribute1 => 'value1' }
	item_name = 'Item 01'
	puts <<EOS
The generated item data:
	- Name: #{item_name}
	- Attributes: #{item}
EOS
	d.items.create item_name, item
	puts "Added the item '#{item_name}' to domain '#{domain_name}'"
	
	# Delete the item
	d.items[item_name].delete
	puts "Delete the item '#{item_name}' in domain '#{domain_name}'"
end
