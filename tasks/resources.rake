namespace :resources do
  task :validate do

    require 'json-schema'

    Dir.glob("apis/#{ENV['PREFIX']}*.resources.json") do |path|
      definition = MultiJson.load(File.read(path))
      api = MultiJson.load(File.read(path.sub(/\.resources\./, '.api.')))
      errors = Aws::Resource::Validator.validate(definition, api)
      puts ['', "ERRORS: #{path}", *errors] unless errors.empty?
    end

  end
end
