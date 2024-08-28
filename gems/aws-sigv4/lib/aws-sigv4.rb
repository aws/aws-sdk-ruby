# frozen_string_literal: true

module Aws
  module Sigv4
    autoload :AsymmetricCredentials, 'aws-sigv4/asymmetric_credentials'
    autoload :Credentials, 'aws-sigv4/credentials'
    autoload :Errors, 'aws-sigv4/errors'
    autoload :Signature, 'aws-sigv4/signature'
    autoload :Signer, 'aws-sigv4/signer'

    VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
  end
end
