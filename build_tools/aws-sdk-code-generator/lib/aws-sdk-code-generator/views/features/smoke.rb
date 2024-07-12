# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module Features
      class Smoke < View

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          service = options.fetch(:service)
          @custom = service.protocol == 'api-gateway'
          @service_name = service.name
          @service_module = service.module_name

          # This will only be called if this is defined
          smoke_json = service.smoke_tests
          @smoke_tests = smoke_json['testCases'].map do |test|
            SmokeTest.new(
              service: service,
              id: test['id'],
              operation_name: test['operationName'],
              input: test['input'],
              expectation: test['expectation'],
              config: test['config'],
              tags: test['tags']
            )
          end
        end

        attr_reader :service_name, :smoke_tests, :service_module

        # @return [String|nil]
        def generated_src_warning
          return if @custom
          GENERATED_SRC_WARNING
        end

        class SmokeTest < View
          def initialize(options)
            @service = options.fetch(:service)
            @id = options.fetch(:id)
            @operation_name = underscore(options.fetch(:operation_name))
            @input = options.fetch(:input)
            @expectation = expectation_str(options.fetch(:expectation))
            @config = options.fetch(:config)

            tags = options.fetch(:tags) || []
            tags = tags.map { |t| "@#{t}" }.join(' ')
            @tags = "@#{@service.identifier} @smoke #{tags}".strip
          end

          attr_reader :id, :operation_name, :expectation, :tags

          def param_hash
            deep_underscore(@input).to_json
          end

          def config_hash
            @config.each_with_object({}) do |(raw_key, raw_value), acc|
              key, value = config_map(raw_key, raw_value)
              acc[key] = value unless key.nil?
            end.to_json
          end

          private

          def deep_underscore(input)
            case input
            when Hash
              input.each_with_object({}) do |(key, value), acc|
                acc[underscore(key)] = deep_underscore(value)
              end
            when Array
              input.map { |value| deep_underscore(value) }
            else
              input
            end
          end

          def config_map(raw_key, raw_value)
            case raw_key
            # generic
            when 'region' then ['region', raw_value]
            when 'sigv4aRegionSet' then nil # TODO
            when 'uri' then ['endpoint', raw_value]
            when 'useFips' then ['use_fips_endpoint', raw_value]
            when 'useDualStack' then ['use_dualstack_endpoint', raw_value]
            # service specific
            when 'useGlobalEndpoint'
              value = raw_value == 'true' ? 'legacy' : 'regional'
              if @service.name == 'S3'
                ['s3_us_east_1_regional_endpoint', value]
              elsif @service.name == 'STS'
                ['sts_regional_endpoints', value]
              end
            # s3 specific
            when 'useAccelerate' then ['use_accelerate_endpoint', raw_value]
            when 'useArnRegion' then ['s3_use_arn_region', raw_value]
            when 'useMultiRegionAccessPoints'
              value = raw_value == 'true' ? 'false' : 'true'
              ['s3_disable_multiregion_access_points', value]
            when 'forcePathStyle' then ['force_path_style', raw_value]
            when 'useAccountIdRouting' then nil # TODO
            else
              # catch all, possible code generated config options
              [underscore(raw_key), raw_value]
            end
          end

          def expectation_str(expectation)
            if expectation.key?('success')
              'I expect an error was not raised'
            elsif expectation.key?('failure')
              if (error_id = expectation['failure']['errorId'])
                error_class = "#{@service.module_name}::Errors::#{error_id}"
                "I expect a '#{error_class}' was raised"
              else
                'I expect an error was raised'
              end
            end
          end
        end

      end
    end
  end
end
