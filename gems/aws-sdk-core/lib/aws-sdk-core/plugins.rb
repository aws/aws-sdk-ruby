# frozen_string_literal: true

module Aws
  # setup autoloading for Plugins
  # Most plugins are required explicitly from service clients
  module Plugins
    autoload :BearerAuthorization, 'aws-sdk-core/plugins/bearer_authorization'
    autoload :SignatureV4, 'aws-sdk-core/plugins/signature_v4'
    autoload :GlobalConfiguration, 'aws-sdk-core/plugins/global_configuration'
  end
end