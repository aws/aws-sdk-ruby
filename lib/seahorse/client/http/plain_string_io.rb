require 'stringio'

module Seahorse
  module Client
    module Http
      class PlainStringIO < StringIO
        def inspect; string.inspect end
      end
    end
  end
end
