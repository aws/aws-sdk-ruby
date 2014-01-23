require 'multi_json'

module Aws
  module Api
    # @api private
    class Manifest

      # @api private
      DEFAULT_MANIFEST_PATH = File.join(GEM_ROOT, 'apis', 'manifest.json')

      # @param [Hash] manifest
      def initialize(manifest)
        @services = manifest.map do |name,verisons|
          Entry.new(name, name.downcase.to_sym, verisons)
        end
      end

      # @return [Array<Service>]
      attr_reader :services

      def self.default_manifest
        new(MultiJson.load(File.read(DEFAULT_MANIFEST_PATH)))
      end

      Entry = Struct.new(:name, :identifier, :versions)

    end
  end
end
