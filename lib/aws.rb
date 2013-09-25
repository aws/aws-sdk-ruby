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

module Aws

  @config = {}

  autoload :ApiTranslator, 'aws/api_translator'
  autoload :Credentials, 'aws/credentials'
  autoload :Errors, 'aws/errors'
  autoload :Handler, 'aws/handler'
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
    autoload :Credentials, 'aws/plugins/credentials'
    autoload :GlobalConfiguration, 'aws/plugins/global_configuration'
    autoload :JsonSerializer, 'aws/plugins/json_serializer'
    autoload :QuerySerializer, 'aws/plugins/query_serializer'
    autoload :RegionalEndpoint, 'aws/plugins/regional_endpoint'
    autoload :RestProtocol, 'aws/plugins/rest_protocol'
    autoload :S3BucketDns, 'aws/plugins/s3_bucket_dns'
    autoload :S3RegionalEndpoint, 'aws/plugins/s3_regional_endpoint'
    autoload :S3Signer, 'aws/plugins/s3_signer'
    autoload :SignatureV4, 'aws/plugins/signature_v4'
    autoload :SignatureV3, 'aws/plugins/signature_v3'
    autoload :SignatureV2, 'aws/plugins/signature_v2'
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
    autoload :S3, 'aws/signers/s3'
    autoload :V2, 'aws/signers/v2'
    autoload :V3, 'aws/signers/v3'
    autoload :V4, 'aws/signers/v4'
  end

  # @api private
  module Xml
    autoload :Builder, 'aws/xml/builder'
    autoload :Handler, 'aws/xml/handler'
    autoload :Parser, 'aws/xml/parser'
  end

  class << self

    # @return [Hash] Returns a hash of default configuration options shared
    #   by all constructed clients.
    attr_accessor :config

    # Adds a plugin to every AWS client class.  This registers the plugin
    # with each versioned client for each service.
    # @param [Plugin] plugin
    # @return [void]
    def add_plugin(plugin)
      service_classes.values.each do |svc_class|
        svc_class.add_plugin(plugin)
      end
    end

    # Removes a plugin to from AWS client class.  This removes the plugin
    # from each versioned client for each service.
    # @param [Plugin] plugin
    # @return [void]
    def remove_plugin(plugin)
      service_classes.values.each do |svc_class|
        svc_class.remove_plugin(plugin)
      end
    end

    # @return [Array<Class>]
    # @api private
    def service_classes
      @service_classes ||= {}
    end

    # Registers a new service interface.  This method accepts a constant
    # (class name) for the new service class and a list of client API
    # versions.
    #
    #     Aws.add_servcie(:S3, ['apis/S3-2006-03-01.json'])
    #
    # This method is called for each service defined in the apis directory of
    # this project.
    #
    # @note You should normally not need to call this method directly.
    #
    # @param [Symbol] name The name of the new service class.
    # @param [Array<String, Seahorse::Model::Api>] apis
    # @return [Class<Service>]
    def add_service(name, apis = [])
      svc_class = const_set(name, Service.define(name.downcase.to_sym, apis))
      service_classes[svc_class.identifier] = svc_class
      self.class.send(:define_method, svc_class.identifier) do |options = {}|
        svc_class.new(options)
      end
      svc_class
    end

    private

    def apis
      Dir.glob('apis/*.json').group_by { |path| path.match(/\/(\w+)/)[1] }
    end

  end

  apis.each do |svc_class_name, api_versions|
    add_service(svc_class_name, api_versions)
  end

end
