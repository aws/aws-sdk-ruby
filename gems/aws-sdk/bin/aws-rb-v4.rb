#!/usr/bin/env ruby
# frozen_string_literal: true

require 'optparse'
require 'logger'

def env_bool(key, default)
  if ENV.key?(key)
    %w[0 false no off].exclude?(ENV[key].downcase)
  else
    default
  end
end

# setup default options, check ENV for most
options = {
  repl: env_bool('AWSRB', nil),
  log: env_bool('AWSRB_LOG', true),
  color: env_bool('AWSRB_COLOR', true),
  debug: env_bool('AWSRB_DEBUG', false),
  load_paths: [],
  require: [],
  execute: []
}

OptionParser.new do |opts| # rubocop:disable Metrics/BlockLength
  opts.banner = 'Usage: aws-rb-v4 [options]'

  opts.on('--region NAME', 'specify the AWS region, e.g. us-west-2') do |value|
    options[:region] = value
  end

  opts.on('--repl REPL', 'specify the repl environment, pry or irb') do |value|
    options[:repl] = value
  end

  opts.on("-e 'command'", "one line of script. Several -e's allowed.") do |value|
    options[:execute] << value
    options[:log] = false unless options[:log_set]
    options[:debug] = false unless options[:debug_set]
  end

  opts.on('-l', '--[no-]log', 'log client requets, on by default') do |value|
    options[:log] = value
    options[:log_set] = true
  end

  opts.on('-c', '--[no-]color', 'colorize request logging, on by default') do |value|
    options[:color] = value
  end

  opts.on('-d', '--[no-]debug', 'log HTTP wire traces, off by default') do |value|
    options[:debug] = value
    options[:debug_set] = true
  end

  opts.on('-Idirectory', Array, 'specify $LOAD_PATH directory (may be used more than once)') do |values|
    options[:load_paths] += values
  end

  opts.on('-rlibrary', Array, 'require the library') do |values|
    options[:require] += values
  end

  opts.on('-v', '--verbose', 'enable client logging and HTTP wire tracing') do |value|
    options[:log] = value
    options[:log_set] = true
    options[:debug] = value
    options[:debug_set] = true
  end

  opts.on('-q', '--quiet', 'disable client logging and HTTP wire tracing') do |value|
    options[:log] = !value
    options[:log_set] = true
    options[:debug] = !value
    options[:debug_set] = true
  end

  opts.on('-h', '--help') do
    puts opts
    exit
  end
end.parse!

# amend the $LOAD_PATH
options[:load_paths].each do |path|
  $LOAD_PATH.unshift(path)
end

# When running the REPL locally, we want to load all of the gems from source.
# First, add aws-sdk-core and its dependencies to the load path.
if File.directory?(File.expand_path('../../../build_tools', __dir__))
  core_gems = %w[aws-sdk-core aws-sigv4 aws-partitions]
  core_gems.each do |gem_name|
    $LOAD_PATH.unshift(File.expand_path("../../../#{gem_name}/lib", __FILE__))
  end
  # Then, load and require aws-sdk. Without loading the core gems before requiring aws-sdk,
  # we would get locally installed gems instead of from source.
  $LOAD_PATH.unshift(File.expand_path('../lib', __dir__))
  require 'aws-sdk'
  # Finally, load all of the gems.

  gems = []
  Aws.constants.each do |const_name|
    gems << "aws-sdk-#{const_name.downcase}" if Aws.autoload?(const_name)
  end
  gems.each do |gem_name|
    $LOAD_PATH.unshift(File.expand_path("../../../#{gem_name}/lib", __FILE__))
  end
end

# Add helper method for clients
module Aws
  class << self
    Aws.constants.each do |const_name|
      next unless Aws.autoload?(const_name)

      define_method(const_name.downcase) do |options = {}|
        Aws.const_get(const_name).const_get(:Client).new(options)
      end
    end
  end
end

# Configure the sdk
cfg = {}
cfg[:region] = options[:region] if options[:region]
if options[:log]
  logger = Logger.new($stdout)
  logger.formatter = proc { |_severity, _datetime, _progname, msg| msg }
  cfg[:logger] = logger
end
cfg[:log_formatter] = Smithy::Client::LogFormatter.colored if options[:color]
cfg[:http_debug_output] = true if options[:debug]
Aws::Core.config = cfg

# Require additional libraries
options[:require].each do |library|
  require(library)
end

# Execute commands and exit if any were provided
unless options[:execute].empty?
  eval(options[:execute].join("\n")) # rubocop:disable Security/Eval
  exit
end

class PryNotAvailable < StandardError; end # rubocop:disable Style/OneClassPerFile

def run_with_pry
  begin
    require 'pry'
  rescue LoadError
    raise PryNotAvailable
  end
  Aws.pry
end

def run_with_irb
  require 'irb'
  IRB.start
end

case options[:repl]
when 'pry' then run_with_pry
when 'irb' then run_with_irb
else
  begin
    run_with_pry
  rescue PryNotAvailable
    warn('Pry not available, falling back to irb')
    run_with_irb
  end
end
