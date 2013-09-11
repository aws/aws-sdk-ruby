# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

def svc_class_name(api)
  name = api.metadata['service_abbreviation'] || api.metadata['service_full_name']
  name = name.sub('Amazon', '').sub('AWS', '').gsub(/\W+/, '')
  prefix = api.endpoint.split(/[.-]/).first.upcase
  [name, prefix].sort_by(&:size).first
end

def svc_plugins(endpoint_prefix)
  config = MultiJson.load(File.read('apis-src/plugins.json'))
  config[endpoint_prefix] || []
end

desc "Translates the API souce files into Seahorse APIs"
task :apis do

  require 'fileutils'
  require 'multi_json'
  require 'json'
  require_relative '../lib/aws-sdk-core'

  FileUtils.mkdir_p('apis')
  Dir.glob('apis-src/*.json').each do |path|

    # expecting apis-src/prefix-YYYY-MM-DD.json
    matches = path.match(/^apis-src\/(\w+)-(\d{4}-\d{2}-\d{2}).json$/)

    next unless matches # skip extra configuration files like paginators

    endpoint_prefix = matches[1]
    api_version = matches[2]

    puts "translating #{path}"
    MultiJson.engine = 'json_gem' # for consistent formatting
    api_src = MultiJson.load(File.read(path), max_nesting: nil)
    api = Aws::ApiTranslator.translate(api_src, documentation: false)
    api.plugins += svc_plugins(endpoint_prefix)

    target = "apis/#{svc_class_name(api)}-#{api.version}.json"
    File.open(target, 'w') do |file|
      file.write(MultiJson.dump(api.to_hash, pretty: true))
    end

  end
end
