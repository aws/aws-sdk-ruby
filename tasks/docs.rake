# frozen_string_literal: true

require 'fileutils'

task 'docs:clobber' do
  FileUtils.remove_dir('api-docs') if Dir.exist?('api-docs')
end

task 'docs:set-env' do
  ENV['DOCSTRINGS'] = '1'
  ENV['SITEMAP_BASEURL'] = 'http://docs.aws.amazon.com/sdk-for-ruby/v3/api/'
  ENV['BASEURL'] = 'http://docs.aws.amazon.com/'
end

# return a list of all of the other SDK gems this gem depends on
# sdk gems are only those in the /gems folder that are authored here
def sdk_dependencies(sdk_gem)
  require 'rubygems'

  all_gems = Dir.glob("gems/*").to_a
  spec = Gem::Specification::load("gems/#{sdk_gem}/#{sdk_gem}.gemspec")
  puts "Gemspec loaded"
  spec.dependencies.select do |d|
    all_gems.any? { |g| g.include? d.name }
  end.map { |d| d.name }
end

desc 'Builds API documentation for a single gem (and its dependencies), e.g. docs:aws-sdk-s3'
task 'docs:*'
rule /^docs:.+$/ => %w[docs:clobber docs:set-env] do |task|
  require 'yard'

  gem = task.name.split(':').last
  gems = sdk_dependencies(gem) + [gem]

  yardoc = YARD::CLI::Yardoc.new
  yardoc.parse_arguments
  # overwrite the files to parse/generated api docs for
  yardoc.files = gems.map { |g| "gems/#{g}/lib/**/*.rb" }
  yardoc.run(nil) # ensure parse_arguments is not called again
end

desc 'Builds the API documentation for the AWS SDK for Ruby.'
task 'docs' => %w[docs:clobber docs:set-env] do
  require 'yard'

  YARD::CLI::Yardoc.new.run
end
