module Seahorse
  module Client
    module Http
      class Error < StandardError

        def initialize(error, msg = nil)
          super(msg || error.message)
          set_backtrace(error.backtrace)
          @original_error = error
        end

        attr_reader :original_error

      end
    end
  end
end
