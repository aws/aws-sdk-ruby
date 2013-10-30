desc "Translates the API souce files into Seahorse APIs"
task :apis do

  require 'fileutils'
  require 'multi_json'
  require 'json'
  MultiJson.engine = 'json_gem' # for consistent formatting
  require_relative '../lib/aws-sdk-core'

  FileUtils.mkdir_p('apis')
  Dir.glob('apis/source/*.json').each do |path|

    # expecting apis/source/prefix-YYYY-MM-DD.json
    matches = path.match(/^apis\/source\/\w+-(\d{4}-\d{2}-\d{2}).json$/)

    next unless matches # skip extra configuration files like paginiators

    api_version = matches[1]

    puts "translating #{path}"

    api = Aws::Api::Translator.translate(
      MultiJson.load(File.read(path), max_nesting: nil),
      documentation: false,
      errors: false)

    class_name = api.metadata['service_class_name']

    target = "apis/#{class_name}-#{api.version}.json"
    File.open(target, 'w') do |file|
      file.write(MultiJson.dump(api.to_hash, pretty: true))
      file.write("\n")
    end

  end
end
