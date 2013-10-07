def svc_plugins(endpoint_prefix)
  config = MultiJson.load(File.read('apis-src/plugins.json'))
  config[endpoint_prefix] || []
end

desc "Translates the API souce files into Seahorse APIs"
task :apis do

  require 'fileutils'
  require 'multi_json'
  require 'json'
  MultiJson.engine = 'json_gem' # for consistent formatting
  require_relative '../lib/aws-sdk-core'

  FileUtils.mkdir_p('apis')
  Dir.glob('apis-src/*.json').each do |path|

    # expecting apis-src/prefix-YYYY-MM-DD.json
    matches = path.match(/^apis-src\/(\w+)-(\d{4}-\d{2}-\d{2}).json$/)

    next unless matches # skip extra configuration files like paginators

    endpoint_prefix = matches[1]
    api_version = matches[2]

    puts "translating #{path}"

    api = Aws::Api::Translator.translate(
      MultiJson.load(File.read(path), max_nesting: nil),
      documentation: false,
      errors: false)

    api.plugins += svc_plugins(endpoint_prefix)

    class_name = api.metadata['service_class_name']

    target = "apis/#{class_name}-#{api.version}.json"
    File.open(target, 'w') do |file|
      file.write(MultiJson.dump(api.to_hash, pretty: true))
    end

  end
end
