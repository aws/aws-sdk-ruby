# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module Spec
      class EndpointProviderSpecClass < View

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          @service = options.fetch(:service)
          test_cases = @service.endpoint_tests.fetch('testCases', [])
          @endpoint_tests = test_cases.map do |endpoint_test|
            EndpointProviderTest.new(
              documentation: endpoint_test['documentation'],
              params: endpoint_test['params'],
              tags: endpoint_test['tags'],
              expect: endpoint_test['expect'],
              operation_inputs: endpoint_test['operationInputs']
            )
          end
        end

        # @return [Array<EndpointProviderTest>]
        attr_reader :endpoint_tests

        # @return [String|nil]
        def generated_src_warning
          return if @service.protocol == 'api-gateway'
          GENERATED_SRC_WARNING
        end

        def module_name
          @service.module_name
        end

        class EndpointProviderTest
          def initialize(options)
            @documentation = options[:documentation]
            @params = options[:params]&.map do |key, value|
              [Underscore.underscore(key).to_sym, value]
            end.to_h
            @tags = options[:tags]
            @expect = options[:expect]
            operation_inputs = options[:operation_inputs] || []
            @operation_inputs = operation_inputs.map do |operation_inputs_test|
              OperationInputsTest.new(
                operation_name: Underscore.underscore(
                  operation_inputs_test['operationName']
                ),
                operation_params: operation_inputs_test['operationParams'] || [],
                built_in_params: operation_inputs_test['builtInParams'] || [],
                client_params: operation_inputs_test['clientParams'] || []
              )
            end
          end

          # @return [String]
          attr_reader :documentation

          # @return [Hash<Symbol, String>]
          attr_reader :params

          # @return [Array<String>]
          attr_reader :tags

          # @return [Hash]
          attr_reader :expect

          # # @return [Array<OperationInput>]
          attr_reader :operation_inputs

          def expect_error?
            !@expect['error'].nil?
          end

          def expected_auth
            if expect_auth?
              @expect['endpoint']['properties']['authSchemes'].first
            end
          end

          def expect_auth?
            @expect['endpoint'] &&
              @expect['endpoint']['properties'] &&
              @expect['endpoint']['properties'] &&
              @expect['endpoint']['properties']['authSchemes'] &&
              !@expect['endpoint']['properties']['authSchemes'].empty?
          end

          def expected_headers
            @expect['endpoint']['headers'].map { |k,v| Param.new(k, v) }
          end

          def expect_headers?
            @expect['endpoint'] &&
              @expect['endpoint']['headers'] &&
              !@expect['endpoint']['headers'].empty?
          end

        end

        class OperationInputsTest
          def initialize(options)
            @operation_name = options[:operation_name]
            @operation_params = options[:operation_params].map do |k,v|
              Param.new(Underscore.underscore(k), v)
            end
            @client_params = options[:client_params].map do |k,v|
              Param.new(Underscore.underscore(k), v)
            end

            @client_params += options[:built_in_params].map do |k,v|
              built_in_to_param(k, v)
            end
          end

          # @return String
          attr_reader :operation_name

          # @return [Hash<String, String>]
          attr_reader :operation_params

          # @return [Hash<String, String>]
          attr_reader :client_params

          private
          def built_in_to_param(built_in, value)
            case built_in
            when 'AWS::Region'
              Param.new('region', value)
            when 'AWS::UseFIPS'
              Param.new('use_fips_endpoint', value)
            when 'AWS::UseDualStack'
              Param.new('use_dualstack_endpoint', value)
            when 'AWS::STS::UseGlobalEndpoint'
              Param.new('sts_regional_endpoints', value ? 'legacy' : 'regional')
            when 'AWS::S3::UseGlobalEndpoint'
              Param.new('s3_us_east_1_regional_endpoint', value ? 'legacy' : 'regional')
            when 'AWS::S3::Accelerate'
              Param.new('use_accelerate_endpoint', value)
            when 'AWS::S3::ForcePathStyle'
              Param.new('force_path_style', value)
            when 'AWS::S3::UseArnRegion'
              Param.new('s3_use_arn_region', value)
            when 'AWS::S3Control::UseArnRegion'
              Param.new('s3_use_arn_region', value)
            when 'AWS::S3::DisableMultiRegionAccessPoints'
              Param.new('s3_disable_multiregion_access_points', value)
            when 'SDK::Endpoint'
              Param.new('endpoint', value)
            else
              raise ArgumentError, "#{built_in} not supported."
            end
          end
        end

        class Param
          def initialize(param, value)
            @param = param
            @value = value
          end
          attr_accessor :param

          def value
            if @value.is_a? String
              "'#{@value}'"
            else
              @value
            end
          end
        end

      end
    end
  end
end
