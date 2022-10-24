# frozen_string_literal: true

require_relative '../../../gems/aws-sdk-core/spec/shared_spec_helper'

$:.unshift(File.expand_path('../../lib', __FILE__))

require 'tmpdir'
require 'json'
require 'rspec'
require 'aws-sdk-core'
require 'aws-sdk-code-generator'

module SpecHelper
  class << self

    def documentation(code_object)
      code_object.to_s.lines.inject([]) do |lines, line|
        lines << line if line[0] == '#'
        lines
      end.join
    end

    def code(code_object)
      code_object.to_s.lines.inject([]) do |lines, line|
        lines << line unless line[0] == '#'
        lines
      end.join
    end

    def option_tags(code_object)
      code_object.to_s.lines.inject([]) do |lines, line|
        lines << line if line.match(/^# @option/)
        lines
      end.join
    end

    def return_tags(code_object)
      code_object.to_s.lines.inject([]) do |lines, line|
        lines << line if line.match(/^# @return/)
        lines
      end.join
    end

    def method_signature(code_object)
      code_object.to_s.lines.inject([]) do |lines, line|
        lines << line if line.match(/^def \w+/)
        lines
      end.join
    end

    # @param [Array<String>] modules A list of module names to generate
    #   the service in. For example:
    #
    #       tmp_dir = generate_service(['Aws', 'S3'])
    #
    # @option options [Boolean] :multiple_files (true)
    # @option options [Boolean] :custom (false)
    #
    # @return [String] Returns a path to the tmp directory where
    #   the src code was generated into.
    #
    def generate_service(module_names, options = {})

      svc_path = module_names.map do |name|
        AwsSdkCodeGenerator::Underscore.underscore(name)
      end.join('/')

      api_dir = File.join([
        File.dirname(__FILE__),
        'fixtures',
        'interfaces',
        svc_path,
      ])

      svc_name = module_names.last
      gem_name = module_names.last.downcase

      shared_opts = {
        gem_version: '1.0.0',
        name: svc_name,
        gem_name: gem_name,
        module_name: module_names.join('::'),
      }

      # For regular service
      service_opts = shared_opts.merge({
        api: model_path(:api, api_dir),
        paginators: model_path(:paginators, api_dir),
        resources: model_path(:resources, api_dir),
        waiters: model_path(:waiters, api_dir),
        examples: model_path(:examples, api_dir),
        endpoint_rules: model_path('endpoint-rule-set'.to_sym, api_dir)
      })

      # For APIG service
      apig_opts = shared_opts.merge({
        api: model_path(:service, api_dir),
        default_endpoint: "https://foobar.us-west-2.amazonaws.com/test",
      })

      svc_opts = options[:custom] ? apig_opts : service_opts

      generator = AwsSdkCodeGenerator::CodeBuilder.new(
        aws_sdk_core_lib_path: File.expand_path('../../../../gems/aws-sdk-core/lib/', __FILE__),
        service: AwsSdkCodeGenerator::Service.new(svc_opts)
      )

      if options.fetch(:multiple_files, true)
        tmpdir = Dir.mktmpdir
        generator.source_files.each do |path, code|
          path = File.join(tmpdir, path)
          FileUtils.mkdir_p(File.dirname(path))
          File.open(path, 'wb') do |file|
            file.write(code)
          end
        end
        $LOAD_PATH << tmpdir
        require "#{tmpdir}/#{svc_path}"
        tmpdir
      else
        code = generator.source
        begin
          Object.module_eval(code)
        rescue => error
          $stderr.puts("\nCODE:\n#{code}\n")
          raise error
        end
      end
    end

    def cleanup_service(tmpdir)
      if ENV['CLEANUP_GENERATED_SOURCE'] == 'false'
        puts "\nLeaving generated service in: #{tmpdir}"
      else
        $LOAD_PATH.delete(tmpdir)
        FileUtils.rm_rf(tmpdir)
      end
    end

    private

    def model_path(model, models_dir)
      path = "#{models_dir}/#{model}.json"
      File.exist?(path) ? path : nil
    end
  end
end

RSpec::Matchers.define(:match_example) do |expected|
  match do |actual|
    actual.to_s.strip == expected.to_s.strip
  end
  failure_message do |actual|
    <<-MSG
expected:

#{expected.to_s.strip}

got:

#{actual.to_s.strip}
    MSG
  end
end
