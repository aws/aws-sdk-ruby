require 'fileutils'
require 'json'

rule /^build:\w+$/ do |task|
end

task 'generate-src' do

  build_dir = 'service-gems'
  #build_dir = './aws-sdk-core/lib'

  compute_module_name = ->(api) do
    metadata = api['metadata']
    svc_name = metadata['serviceAbbreviation'] || metadata['serviceFullName']
    svc_name.sub('Amazon', '').sub('AWS', '').gsub(/\W+/, '')
  end

  services = []
  Dir.glob('aws-sdk-core/apis/*').sort.each do |path|
    svc = path.split('/').last
    path = Dir.glob("aws-sdk-core/apis/#{svc}/*").sort.last
    api = File.open("#{path}/api-2.json", "rb") { |f| JSON.load(f.read) }
    services << {
      identifier: compute_module_name.call(api).downcase,
      modules: ['Aws', compute_module_name.call(api)],
      full_name: api['metadata']['serviceFullName'],
      files: Dir.glob("#{path}/*"),
    }
  end

  require 'aws-sdk-code-generator'

  services.each do |svc|

    #next unless svc[:identifier] == 's3' || svc[:identifier] == 'ec2'

    identifier, modules, full_name, files = svc.values_at(
      :identifier, :modules, :full_name, :files)

    files = files.inject({}) do |hash, path|
      key = case File.basename(path)
            when 'api-2.json' then :api
            when 'docs-2.json' then :docs
            when 'waiters-2.json' then :waiters
            when 'paginators-1.json' then :paginators
            when 'examples-1.json' then :examples
            when 'resources-1.json' then :resources
            else raise "unsupported `#{File.basename(path)}'"
            end
      hash[key] = path
      hash
    end

    gem_name = "aws-sdk-#{identifier}"

    options = { 
      gem_name: gem_name,
      modules: modules,
    }
    files.each do |key, path|
      options[key] = Aws::Json.load_file(path)
    end

    gemspec = <<-GEMSPEC
Gem::Specification.new do |spec|
  spec.name = '#{gem_name}'
  spec.version = '1.0.0'
  spec.summary = 'AWS SDK for Ruby - #{full_name}'
  spec.description = 'Official Ruby Gem for #{full_name}.'
  spec.author = 'Amazon Web Services'
  spec.homepage = 'http://github.com/aws/aws-sdk-ruby'
  spec.license = 'Apache 2.0'
  spec.email = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files = Dir['lib/#{gem_name}/**/*.rb']
  spec.add_dependency('aws-sdk-core', '~> 2.0')
end
    GEMSPEC

    #path = "#{build_dir}/#{gem_name}/#{gem_name}.gemspec"
    #puts path
    #FileUtils.mkdir_p(File.dirname(path))
    #File.open(path, "wb") do |f|
    #  f.write(gemspec)
    #end

    generator = AwsSdkCodeGenerator::Generator.new(options)
    generator.generate_src_files.each do |path, contents|
      path = File.join(build_dir, gem_name, 'lib', path)
      #path = File.join(build_dir, gem_name, path)
      #path = path.sub("#{gem_name}/", '')
      #path = path.sub("#{gem_name}", "aws-sdk-core/#{identifier}")
      puts path
      FileUtils.mkdir_p(File.dirname(path))
      File.open(path, 'wb') do |file|
        file.write(contents)
      end
    end
  end
end
