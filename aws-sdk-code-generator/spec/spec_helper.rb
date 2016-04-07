$LOAD_PATH.unshift('../aws-sdk-core/lib')

require 'tmpdir'
require 'json'
require 'rspec'

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
    # @return [String] Returns a path to the tmp directory where
    #   the src code was generated into.
    #
    def generate_service(modules, multiple_files:true)
      gem_name = modules.map(&:downcase).join('-').gsub('::', '')
      dir = "spec/fixtures/interfaces/#{gem_name}"
      generator = AwsSdkCodeGenerator::Generator.new({
        gem_name: gem_name,
        modules: modules,
        api: JSON.load(File.read("#{dir}/api.json")),
        paginators: JSON.load(File.read("#{dir}/paginators.json")),
        resources: JSON.load(File.read("#{dir}/resources.json")),
        waiters: JSON.load(File.read("#{dir}/waiters.json")),
      })

      if multiple_files

        tmpdir = Dir.mktmpdir
        puts "\nGenerating service to :#{tmpdir}"
        generator.generate_src_files.each do |path, code|
          path = File.join(tmpdir, path)
          FileUtils.mkdir_p(File.dirname(path))
          File.open(path, 'wb') do |file|
            file.write(code)
          end
        end
        $LOAD_PATH << tmpdir
        require "#{tmpdir}/#{gem_name}"
        tmpdir

      else

        code = generator.generate_src
        puts ''
        puts "CODE:"
        puts code
        Kernel.module_eval(code)

      end
    end

    def cleanup_service(tmpdir)
      if ENV['CLEANUP_GENERATED_SOURCE'] == 'false'
        puts "\nLeaving generated service in: #{tmpdir}"
      else
        puts "\nRemoving generated service from: #{tmpdir}"
        $LOAD_PATH.delete(tmpdir)
        FileUtils.rm_rf(tmpdir)
      end
    end

  end
end
