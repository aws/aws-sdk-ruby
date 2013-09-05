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

desc "Translates the API souce files into Seahorse APIs"
task :apis do

  require 'fileutils'
  require 'multi_json'
  require_relative '../lib/aws-sdk-core'

    puts MultiJson.engine
  FileUtils.mkdir_p('apis')
  Dir.glob('apis-src/*.json').each do |path|
    next if path.match(/paginators/)
    puts "translating #{path.split('/')[1]}"
    api = Aws::ApiTranslator.translate(MultiJson.load(File.read(path), max_nesting: nil))
    File.open(path.sub('apis-src', 'apis'), 'w') do |file|
      file.write(MultiJson.dump(api.to_hash, pretty: true))
    end
  end

end
