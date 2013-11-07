require 'multi_json'

module Aws
  module Api
    class Translator < BaseTranslator

      DEFAULT_PLUGINS = %w(
        Seahorse::Client::Plugins::Logging
        Seahorse::Client::Plugins::RestfulBindings
        Seahorse::Client::Plugins::ContentLength
        Aws::Plugins::UserAgent
        Aws::Plugins::RetryErrors
        Aws::Plugins::GlobalConfiguration
        Aws::Plugins::RegionalEndpoint
        Aws::Plugins::InstanceProfileCredentials
        Aws::Plugins::ResponsePaging
        Aws::Plugins::Credentials
      )

      def self.translate(src, options = {})
        super(src, options)
      end

      def translated
        Seahorse::Model::Api.from_hash(@properties).tap do |api|
          translate_operations(api)
          apply_xml_namespaces(api)
          set_service_names(api)
          apply_service_customizations(api)
          apply_paging_metadata(api)
          sort_metadata_keys(api)
        end
      end

      def set_service_names(api)
        service_namer(api) do |svc|
          api.metadata['service_full_name'] = svc.full_name
          api.metadata['service_abbreviation'] = svc.abbr if svc.abbr
          api.metadata['service_class_name'] = svc.class_name
        end
      end

      def sort_metadata_keys(api)
        api.metadata = Hash[api.metadata.sort]
      end

      def translate_operations(api)
        @operations.values.each do |src|
          operation = OperationTranslator.translate(src, @options)
          if @result_wrapped
            operation.output.metadata['wrapper'] = "#{operation.name}Result"
          end
          api.operations[underscore(operation.name)] = operation
        end
      end

      # XML services, like S3 require the proper XML namespace to be applied
      # to the root element for each request.  This moves it from the API
      # metadata into the operation input shape for each operation where
      # the XML serializer can read it.
      def apply_xml_namespaces(api)
        xmlns = api.metadata.delete('xmlnamespace')
        if xml?
          api.operations.values.each do |operation|
            if operation.input.payload
              operation.input.payload_member.metadata['xmlns_uri'] = xmlns
            elsif !operation.input.payload_member.members.empty?
              operation.input.serialized_name = operation.name + "Request"
              operation.input.metadata['xmlns_uri'] = xmlns
            end
          end
        end
      end

      def apply_service_customizations(api)
        svc_name = api.metadata['service_class_name']
        if ServiceTranslators.const_defined?(svc_name)
          ServiceTranslators.const_get(svc_name).translate(api)
        end
      end

      def apply_paging_metadata(api)
        PaginationTranslator.translate(api)
      end

      def service_namer(api)
        args = []
        args << api.metadata['endpoint_prefix']
        args << api.metadata.delete('service_full_name')
        args << api.metadata.delete('service_abbreviation')
        yield(Api::ServiceNamer.new(*args))
      end

      def xml?
        @properties['plugins'].include?('Aws::Plugins::XmlProtocol')
      end

      property :version, from: :api_version

      metadata :signing_name
      metadata :checksum_format
      metadata :json_version, as: 'json_version'
      metadata :target_prefix, as: 'json_target_prefix'
      metadata :service_full_name
      metadata :service_abbreviation
      metadata :xmlnamespace

      ignore :global_endpoint

      def set_type(type)
        plugins = @properties['plugins'] ||= []
        plugins.concat(DEFAULT_PLUGINS)
        plugins.push(*case type
          when 'query' then ['Aws::Plugins::QueryProtocol']
          when 'json' then [
            'Aws::Plugins::JsonProtocol', # used by all aws json services
            'Aws::Plugins::JsonRpcHeaders' # not used by services like Glacier
          ]
          when /json/ then ['Aws::Plugins::JsonProtocol']
          when /xml/ then ['Aws::Plugins::XmlProtocol']
        end)
      end

      def set_signature_version(version)
        return unless version
        @properties['plugins'] ||= []
        @properties['plugins'] <<
          case version
            when 'v4'         then 'Aws::Plugins::SignatureV4'
            when 'v3'         then 'Aws::Plugins::SignatureV4'
            when 'v3https'    then 'Aws::Plugins::SignatureV3'
            when 'v2'         then 'Aws::Plugins::SignatureV2'
            when 'cloudfront' then 'Aws::Plugins::SignatureV4'
            when 's3'         then 'Aws::Plugins::S3Signer'
            else raise "unhandled signer version `#{version}'"
          end
      end

      def set_result_wrapped(state)
        @result_wrapped = state
      end

      def set_endpoint_prefix(prefix)
        data = MultiJson.load(File.read('apis/configuration/endpoints.json'))
        region_names = data['services'][prefix]
        regions = {}
        region_names.each do |region|
          regions[region] = data['regions'][region][prefix]['hostname']
        end
        @properties['metadata'] ||= {}
        @properties['metadata']['endpoint_prefix'] = prefix
        @properties['metadata']['regional_endpoints'] = regions
      end

      def set_operations(operations)
        @operations = operations
      end

    end
  end
end
