#!/usr/bin/env ruby
# frozen_string_literal: true

require 'rubygems'
require 'optparse'
require 'logger'
require 'byebug'

def env_bool key, default
  if ENV.key?(key)
    ['0', 'false', 'no', 'off'].exclude?(ENV[key].downcase)
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
  execute: [],
}

OptionParser.new do |opts|

  opts.banner = "Usage: aws-rb [options]"

  opts.on("--region NAME", "specify the AWS region, e.g. us-west-2") do |value|
    options[:region] = value
  end

  opts.on("--repl REPL", "specify the repl environment, pry or irb") do |value|
    options[:repl] = value
  end

  opts.on("-e 'command'", "one line of script. Several -e's allowed.") do |value|
    options[:execute] << value
    options[:log] = false unless options[:log_set]
    options[:debug] = false unless options[:debug_set]
  end

  opts.on("-l", "--[no-]log", "log client requets, on by default") do |value|
    options[:log] = value
    options[:log_set] = true
  end

  opts.on("-c", "--[no-]color", "colorize request logging, on by default") do |value|
    options[:color] = value
  end

  opts.on("-d", "--[no-]debug", "log HTTP wire traces, off by default") do |value|
    options[:debug] = value
    options[:debug_set] = true
  end

  opts.on("-Idirectory", Array, "specify $LOAD_PATH directory (may be used more than once)") do |values|
    options[:load_paths] += values
  end

  opts.on("-rlibrary", Array, "require the library") do |values|
    options[:require] += values
  end

  opts.on("-v", "--verbose", "enable client logging and HTTP wire tracing") do |value|
    options[:log] = true
    options[:log_set] = true
    options[:debug] = true
    options[:debug_set] = true
  end

  opts.on("-q", "--quiet", "disable client logging and HTTP wire tracing") do |value|
    options[:log] = false
    options[:log_set] = true
    options[:debug] = false
    options[:debug_set] = true
  end

  opts.on("-h", "--help") do
    puts opts
    exit
  end

end.parse!

# amend the $LOAD_PATH
options[:load_paths].each do |path|
  $LOAD_PATH.unshift(path)
end

# When running the REPL locally, we want to load all of the gems from source.
# First load aws-sdk-core and its dependencies.
# (Sigv2 is still used by the deprecated SimpleDB service gem)
core_gems = %w(aws-sdk-core aws-sigv4 aws-partitions aws-eventstream aws-sigv2)
core_gems.each do |gem_name|
  $LOAD_PATH.unshift(File.expand_path("../../../#{gem_name}/lib", __FILE__))
end

# Then load and require aws-sdk-resources. Without loading the core gems before
# requiring aws-sdk-resources, we would get locally installed gems instead of
# from source.
$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

# The Aws namespace used to check autoload requires aws-sdk-resources.
require 'aws-sdk-resources'

# Finally load all of the gems. Core is loaded a second time because of STS.
if File.directory?(File.expand_path('../../../../build_tools', __FILE__))
  gems = []
  Aws.constants.each do |const_name|
    if Aws.autoload?(const_name)
      gems << "aws-sdk-#{const_name.downcase}"
    end
  end
  gems.each do |gem_name|
    $LOAD_PATH.unshift(File.expand_path("../../../#{gem_name}/lib", __FILE__))
  end
end

# add helper methods
module Aws
  class << self
    Aws.constants.each do |const_name|
      if Aws.autoload?(const_name)
        define_method(const_name.downcase) do |options = {}|
          Aws.const_get(const_name).const_get(:Client).new(options)
        end
      end
    end
  end
end

# add the `#resource` helper method to client classes
require 'aws-sdk-core'
class Seahorse::Client::Base
  def resource
    name = self.class.name.split('::')[1]
    Aws.const_get(name).const_get(:Resource).new(client: self)
  end
end

# configure the sdk

cfg = {}

cfg[:region] = options[:region] if options[:region]

if options[:log]
  logger = Logger.new($stdout)
  logger.formatter = proc {|severity, datetime, progname, msg| msg }
  cfg[:logger] = logger
end

if options[:color]
  cfg[:log_formatter] = Aws::Log::Formatter.colored
end

if options[:debug]
  cfg[:http_wire_trace] = true
end

Aws.config = cfg

options[:require].each do |library|
  require(library)
end

unless options[:execute].empty?
  eval(options[:execute].join("\n"))
  exit
end

class PryNotAvailable < StandardError; end

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
    warn("Pry not available, falling back to irb")
    run_with_irb
  end
end
