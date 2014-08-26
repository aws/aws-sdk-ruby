require 'spec_helper'
require 'multi_json'

def fixtures
  path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 
    'fixtures', 'validator', '*'))
  directories = Dir.glob(path)
  raise 'unable to locate fixtures' if directories.empty?
  directories
end

module Aws
  module Resource
    describe Validator do

      def definition(dir)
        load_json(File.join(dir, 'definition.json'))
      end

      def api(dir)
        load_json(File.join(dir, 'api.json'))
      end

      def expected_errors(dir)
        load_json(File.join(dir, 'errors.json'))
      end

      def load_json(path)
        if File.exists?(path)
          begin
            MultiJson.load(File.read(path))
          rescue MultiJson::ParseError => e
            fail("JSON parse error when loading #{path}")
          end
        else
          pending("missing #{File.basename(path)} fixture")
        end
      end

      fixtures.each do |dir|

        it(File.basename(dir)) do
          errors = Validator.validate(definition(dir), api(dir))
          expect(errors).to match(expected_errors(dir))
        end

      end
    end
  end
end
