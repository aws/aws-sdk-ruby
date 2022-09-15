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
            # operation_inputs = options[:operation_inputs] || []
            # @operation_inputs = operation_inputs.map do |operation_inputs_test|
            #   OperationInputsTest.new(
            #     built_in_params: operation_inputs_test['builtInParams'],
            #     operation_name: Underscore.underscore(
            #       operation_inputs_test['operationName']
            #     ),
            #     operation_params: operation_inputs_test['operationParams'],
            #     client_params: operation_inputs_test['clientParams']
            #   )
            # end
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
          # attr_reader :operation_inputs

          def expect_error?
            !@expect['error'].nil?
          end

          # def operation_inputs?
          #   !@operation_inputs.empty?
          # end
        end

        # class OperationInputsTest
        #   def initialize(options)
        #     @built_in_params = options[:built_in_params]
        #     @operation_name = options[:operation_name]
        #     @operation_params = options[:operation_params]
        #     @client_params = options[:client_params]
        #   end
        #
        #   # @return [Hash<String, String>]
        #   attr_reader :built_in_params
        #
        #   # @return String
        #   attr_reader :operation_name
        #
        #   # @return [Hash<String, String>]
        #   attr_reader :operation_params
        #
        #   # @return [Hash<String, String>]
        #   attr_reader :client_params
        # end

      end
    end
  end
end
