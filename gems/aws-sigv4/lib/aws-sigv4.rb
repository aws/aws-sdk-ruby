# frozen_string_literal: true

require_relative 'aws-sigv4/asymmetric_credentials'
require_relative 'aws-sigv4/credentials'
require_relative 'aws-sigv4/presigned_url'
require_relative 'aws-sigv4/signature'
require_relative 'aws-sigv4/signer'
require_relative 'aws-sigv4/static_credentials'

module Aws
  module SigV4
    VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
  end
end
