require 'multi_json'

module Aws
  module Api
    # @api private
    class ManifestBuilder

      # @param [String] directory The folder to scan for API files.
      def initialize(directory)
        @directory = directory
      end

      def build
        manifest = {}
        Dir.glob(File.join(@directory, '*.api.json')).each do |path|
          api = JSON.load(File.read(path))
          service = compute_service_name(api)
          version = api['metadata']['apiVersion']
          manifest[service] ||= {}
          manifest[service][version] = entry(path, api)
        end
        manifest
      end

      private

      def compute_service_name(api)
        metadata = api['metadata']
        name = metadata['serviceAbbreviation'] || metadata['serviceFullName']
        name = name.sub('Amazon', '').sub('AWS', '').gsub(/\W+/, '')
        name
      end

      def compatible_with(api)
        api['metadata']['compatibleWith']
      end

      def path_for(file_type, api)
        prefix = api['metadata']['endpointPrefix']
        version = api['metadata']['apiVersion']
        path = File.join(@directory, "#{prefix}-#{version}.#{file_type}.json")
        path if File.exists?(path)
      end

      def entry(path, api)
        entry = {
          'api' => path,
          'paginators' => path_for('paginators', api),
          'waiters' => path_for('waiters', api),
          'resources' => path_for('resources', api),
          'compatibleWith' => compatible_with(api),
        }.delete_if { |k,v| v.nil? }
      end

    end
  end
end
