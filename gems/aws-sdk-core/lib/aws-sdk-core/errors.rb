# frozen_string_literal: true

module Aws
  module Core
    module Errors
      # Various plugins perform client-side checksums of responses.
      # This error indicates a checksum failed.
      class ChecksumError < RuntimeError; end
    end
  end
end
