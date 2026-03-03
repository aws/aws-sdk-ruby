# frozen_string_literal: true

require 'cgi/escape'
require 'cgi/util' if RUBY_VERSION < '3.5'

module Aws
  module Core
    # @api private
    module Util
      class << self
        def str_2_bool(str)
          case str.to_s
          when 'true' then true
          when 'false' then false
          end
        end
      end
    end
  end
end
