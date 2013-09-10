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

  autoload :ApiTranslator, 'aws/api_translator'
  autoload :ClientFactory, 'aws/client_factory'
  autoload :Credentials, 'aws/credentials'
  autoload :Service, 'aws/service'
  autoload :Structure, 'aws/structure'
  autoload :Util, 'aws/util'
  autoload :VERSION, 'aws/version'

  # @api private
  module Json
    autoload :Builder, 'aws/json/builder'
    autoload :Handler, 'aws/json/handler'
    autoload :Parser, 'aws/json/parser'
  end

  module Plugins
    autoload :ContentLength, 'aws/plugins/content_length'
    autoload :EnvironmentCredentials, 'aws/plugins/environment_credentials'
    autoload :GlobalConfiguration, 'aws/plugins/global_configuration'
    autoload :JsonSerializer, 'aws/plugins/json_serializer'
    autoload :QuerySerializer, 'aws/plugins/query_serializer'
    autoload :RegionalEndpoint, 'aws/plugins/regional_endpoint'
    autoload :RestProtocol, 'aws/plugins/rest_protocol'
    autoload :Signer, 'aws/plugins/signer'
    autoload :XmlSerializer, 'aws/plugins/xml_serializer'
  end

  # @api private
  module Query
    autoload :Builder, 'aws/query/builder'
    autoload :Handler, 'aws/query/handler'
    autoload :Param, 'aws/query/param'
    autoload :ParamList, 'aws/query/param_list'
  end

  # @api private
  module Signers
    autoload :Version2, 'aws/signers/version_2'
    autoload :Version3, 'aws/signers/version_3'
    autoload :Version4, 'aws/signers/version_4'
  end

  # @api private
  module Xml
    autoload :Builder, 'aws/xml/builder'
    autoload :Parser, 'aws/xml/parser'
  end

  @config = {}

  class << self
    attr_accessor :config
  end

end

module Seahorse::Model::Shapes
  class FlatMapShape < MapShape; end
  class FlatListShape < ListShape; end
  Shape.register_type flat_map: FlatMapShape
  Shape.register_type flat_list: FlatListShape
end

require_relative 'aws'
