module AwsSdkCodeGenerator
  module Generators
    module Resource
      class DataMethod < Dsl::Method

        def initialize(resource_name:, resource:)
          @resource_name = resource_name
          @shape_name = resource['shape']
          @load = resource['load'] && resource['load']['request']['operation']
          super('data')
          if @shape_name
            returns("Types::#{@shape_name}", docstring:return_docstring)
            code do |c|
              c << 'load unless @data'
              c << '@data'
            end
            if !@load
              docstring(<<-DOCSTRING)
@raise [Errors::ResourceNotLoadableError] Raises this error if called
  when {#data_loaded?} if `false`.
              DOCSTRING
            end
          else
            docstring('@api private')
            returns('EmptyStructure')
            code('@data')
          end
        end

        private


        def return_docstring
          if @load
            <<-DOCSTRING
Returns the data for this {#{@resource_name}}. Calls
{Client##{underscore(@load)}} if {#data_loaded?} is `false`."
            DOCSTRING
          else
            "Returns the data for this {#{@resource_name}}."
          end
        end

      end
    end
  end
end
