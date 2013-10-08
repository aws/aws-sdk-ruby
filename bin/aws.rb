#!/usr/bin/env ruby

$:.unshift(File.join(File.dirname(File.dirname(__FILE__)), 'lib'))

require 'rubygems'
require 'optparse'
require 'logger'

def env_bool key, default
  if ENV.key?(key)
    !['0', 'false', 'no', 'off'].include?(ENV[key].downcase)
  else
    default
  end
end

# setup default options, check ENV for most
options = {
  :repl => env_bool('AWSRB', nil),
  :log => env_bool('AWSRB_LOG', true),
  :color => env_bool('AWSRB_COLOR', true),
  :debug => env_bool('AWSRB_DEBUG', false),
  :load_paths => [],
  :require => [],
  :execute => [],
}

OptionParser.new do |opts|

  opts.banner = "Usage: aws-rb [options]"

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

require 'aws-sdk-core'

# configure the aws-sdk gem

cfg = {}

if options[:log]
  logger = Logger.new($stdout)
  logger.formatter = proc {|severity, datetime, progname, msg| msg }
  cfg[:logger] = logger
end

if options[:color]
  #cfg[:log_formatter] = Aws::Core::LogFormatter.colored
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
  Pry.config.prompt = [proc { "Aws> " }, proc { "Aws| " }]
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
