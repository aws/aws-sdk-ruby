require 'fileutils'
require 'multi_json'
require 'json'

MultiJson.engine = 'json_gem' # for consistent json formatting

namespace :api do

  desc "Lists the supported services and their API versions"
  task :versions do
    supported = []
    Aws.service_classes.each do |key, svc|
      name = svc.default_client_class.api.metadata['service_full_name']
      versions = svc.api_versions.join(', ')
      supported << "%-40s\t%s" % [name, versions]
    end
    puts supported.sort_by(&:downcase)
  end

  # define API translation tasks
  Dir.glob('apis/source/*.json').each do |path|
    if matches = path.match(/^apis\/source\/(\w+)-(\d{4}-\d{2}-\d{2})\.json$/)
      svc = matches[1]
      version = matches[2]
      svc_task = "translate:#{svc}"
      version_task = "translate:#{svc}:#{version}"
      task(version_task) { translate_api(path) }
      task(svc_task => version_task)

      desc "Translate source APIs into Seahorse APIs"
      task(:translate => svc_task)
    end
  end

end

def translate_api(path)
  api = Aws::Api::Translator.translate(
    JSON.parse(File.read(path), max_nesting: false), documentation: false,
    errors: false)

  class_name = api.metadata['service_class_name']

  target = "apis/#{class_name}-#{api.version}.json"
  File.open(target, 'w') do |file|
    file.write(JSON.pretty_generate(api.to_hash, indent: '  ', max_nesting: false))
    file.write("\n")
  end
end
