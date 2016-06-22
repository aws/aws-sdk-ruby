module AwsSdkCodeGenerator
  module Generators
    module Resource
      class LoadMethod < Dsl::Method

        LOAD_NOT_IMPLEMENTED =
          "#load is not implemented, data only available via enumeration"

        def initialize(resource_name:, definition:)
          @resource_name = resource_name
          @load = definition
          super('load')
          alias_as('reload')
          if @load
            docstring(load_docstring)
            code do |c|
              c << client_request
              c << "@data = resp.#{load_path}"
              c << "self"
            end
          else
            docstring('@raise [Errors::ResourceNotLoadable]')
            docstring('@api private')
            code do |c|
              c << "msg = #{LOAD_NOT_IMPLEMENTED.inspect}"
              c << "raise Errors::ResourceNotLoadable, msg"
            end
          end
        end

        private

        def client_request
          ClientRequest.new(request: @load['request'], resp: true, merge: false)
        end

        def load_path
          if @load['path'] == '@'
            'data'
          else
            @load['path'].downcase
          end
        end

        def operation_name
          underscore(@load['request']['operation'])
        end

        def load_docstring
          <<-MARKDOWN
Loads, or reloads {#data} for the current {#{@resource_name}}.
Returns `self` making it possible to chain methods.

    #{underscore(@resource_name)}.reload.data

@return [self]
          MARKDOWN
        end

      end
    end
  end
end
