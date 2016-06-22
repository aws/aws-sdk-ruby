module AwsSdkCodeGenerator
  module Generators
    class ErrorsModule < Dsl::Module

      include Helper

      def initialize(api:)
        @api = api
        super('Errors')
        self.extend('Aws::Errors::DynamicErrors')
        self.class('ResourceNotLoadable', extends: 'RuntimeError') do |c|
          c.docstring(<<-DOCSTRING)
Raised when calling #load or #data on a resource class that can not be
loaded.  This can happen when:

* A resource class has identifiers, but no data attributes.
* Resource data is only available when making an API call that
enumerates all resources of that type.
          DOCSTRING
        end
      end

    end
  end
end
