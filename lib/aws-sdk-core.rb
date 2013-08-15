# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'seahorse'

module Aws
  class << self
    attr_accessor :config
  end

  autoload :Credentials, 'aws/credentials'
  autoload :VERSION, 'aws/version'

  module Signers
    autoload :Version3, 'aws/signers/version_3'
    autoload :Version4, 'aws/signers/version_4'
  end

  module Plugins
    autoload :ContentLength, 'aws/plugins/content_length'
    autoload :EnvironmentCredentials, 'aws/plugins/environment_credentials'
    autoload :GlobalConfiguration, 'aws/plugins/global_configuration'
    autoload :JsonSerializer, 'aws/plugins/json_serializer'
    autoload :RegionalEndpoint, 'aws/plugins/regional_endpoint'
    autoload :RestProtocol, 'aws/plugins/rest_protocol'
    autoload :RpcProtocol, 'aws/plugins/rpc_protocol'
    autoload :VersionedApiLoader, 'aws/plugins/versioned_api_loader'
    autoload :XmlSerializer, 'aws/plugins/xml_serializer'

    module Signers
      autoload :Version3, 'aws/plugins/signers/version_3'
      autoload :Version4, 'aws/plugins/signers/version_4'
    end
  end

end

Aws.config = {}
