require 'stringio'

module Seahorse
  module Client
    module Http
      class PlainStringIO < StringIO
        def inspect; string.inspect end

        def eq?(other)
          if other.is_a?(String) and self.string == other
            true
          else
            super
          end
        end
        alias == eq?

      end
    end
  end
end
