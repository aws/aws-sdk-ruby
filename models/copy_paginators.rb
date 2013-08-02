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


require 'json'

host = "#{`whoami`.chomp}.desktop.amazon.com"

Dir.glob('*.paginators.json') do |file|
  endpoint = file[/^(\w+)?-/, 1]
  basedir = "c2j/src/C2j#{endpoint.capitalize}/#{endpoint}"
  #system "ssh -x #{host} 'mkdir #{basedir}'"
  #system "scp #{file} #{host}:#{basedir}/paginators.json"
  puts "cd ~/c2j/src/C2j#{endpoint.capitalize}; git add #{endpoint}; git commit -m 'Update paginators'; git push"
  #json = JSON.parse(File.read(file))['pagination']['pagination']
  #File.open(file, 'w') {|f| f.puts(JSON.pretty_generate(json, indent: '  ')) }
end