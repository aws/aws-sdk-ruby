module AwsSdkCodeGenerator
  module Generators
    module Resource
      class DataLoadedMethod < Dsl::Method

        def initialize
          super('data_loaded?')
          returns('Boolean', docstring:<<-DOCSTRING)
Returns `true` if this resource is loaded.  Accessing attributes or
{#data} on an unloaded resource will trigger a call to {#load}.
          DOCSTRING
          code('!!@data')
        end

      end
    end
  end
end
