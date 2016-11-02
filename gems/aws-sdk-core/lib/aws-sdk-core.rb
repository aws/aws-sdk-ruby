require 'jmespath'
require 'pathname'

require_relative 'aws-sdk-core/deprecations'

# credential providers

require_relative 'aws-sdk-core/credential_provider'
require_relative 'aws-sdk-core/refreshing_credentials'
require_relative 'aws-sdk-core/assume_role_credentials'
require_relative 'aws-sdk-core/credentials'
require_relative 'aws-sdk-core/credential_provider_chain'
require_relative 'aws-sdk-core/ecs_credentials'
require_relative 'aws-sdk-core/instance_profile_credentials'
require_relative 'aws-sdk-core/shared_credentials'

# client modules

require_relative 'seahorse'
require_relative 'aws-sdk-core/checksums'
require_relative 'aws-sdk-core/client_stubs'
require_relative 'aws-sdk-core/client_waiters'
require_relative 'aws-sdk-core/eager_loader'
require_relative 'aws-sdk-core/endpoint_provider'
require_relative 'aws-sdk-core/errors'
require_relative 'aws-sdk-core/ini_parser'
require_relative 'aws-sdk-core/json'
require_relative 'aws-sdk-core/pageable_response'
require_relative 'aws-sdk-core/pager'
require_relative 'aws-sdk-core/param_converter'
require_relative 'aws-sdk-core/param_validator'
require_relative 'aws-sdk-core/partitions'
require_relative 'aws-sdk-core/service'
require_relative 'aws-sdk-core/shared_config'
require_relative 'aws-sdk-core/structure'
require_relative 'aws-sdk-core/tree_hash'
require_relative 'aws-sdk-core/type_builder'
require_relative 'aws-sdk-core/util'
require_relative 'aws-sdk-core/version'

# resource classes

require_relative 'aws-sdk-core/resources/collection'

# logging

require_relative 'aws-sdk-core/log/formatter'
require_relative 'aws-sdk-core/log/param_filter'
require_relative 'aws-sdk-core/log/param_formatter'

Seahorse::Util.irregular_inflections({
  'ARNs' => 'arns',
  'CNAMEs' => 'cnames',
  'Ec2' => 'ec2',
  'ElastiCache' => 'elasticache',
  'iSCSI' => 'iscsi',
  'ACLs' => 'acls',
  #'SSEKMS' => 'sse_kms',
})

module Aws

  # @api private
  module Query
    autoload :EC2ParamBuilder, 'aws-sdk-core/query/ec2_param_builder'
    autoload :Handler, 'aws-sdk-core/query/handler'
    autoload :Param, 'aws-sdk-core/query/param'
    autoload :ParamBuilder, 'aws-sdk-core/query/param_builder'
    autoload :ParamList, 'aws-sdk-core/query/param_list'
  end

  # @api private
  module Rest
    autoload :Handler, 'aws-sdk-core/rest/handler'
    module Request
      autoload :Body, 'aws-sdk-core/rest/request/body'
      autoload :Builder, 'aws-sdk-core/rest/request/builder'
      autoload :Endpoint, 'aws-sdk-core/rest/request/endpoint'
      autoload :Headers, 'aws-sdk-core/rest/request/headers'
    end
    module Response
      autoload :Body, 'aws-sdk-core/rest/response/body'
      autoload :Headers, 'aws-sdk-core/rest/response/headers'
      autoload :Parser, 'aws-sdk-core/rest/response/parser'
      autoload :StatusCode, 'aws-sdk-core/rest/response/status_code'
    end
  end

  # @api private
  module Stubbing
    autoload :EmptyStub, 'aws-sdk-core/stubbing/empty_stub'
    autoload :DataApplicator, 'aws-sdk-core/stubbing/data_applicator'
    autoload :StubData, 'aws-sdk-core/stubbing/stub_data'
    autoload :XmlError, 'aws-sdk-core/stubbing/xml_error'
    module Protocols
      autoload :EC2, 'aws-sdk-core/stubbing/protocols/ec2'
      autoload :Json, 'aws-sdk-core/stubbing/protocols/json'
      autoload :Query, 'aws-sdk-core/stubbing/protocols/query'
      autoload :Rest, 'aws-sdk-core/stubbing/protocols/rest'
      autoload :RestJson, 'aws-sdk-core/stubbing/protocols/rest_json'
      autoload :RestXml, 'aws-sdk-core/stubbing/protocols/rest_xml'
    end
  end

  module Waiters
    autoload :Poller, 'aws-sdk-core/waiters/poller'
    autoload :Errors, 'aws-sdk-core/waiters/errors'
    autoload :NullProvider, 'aws-sdk-core/waiters/null_provider'
    autoload :Provider, 'aws-sdk-core/waiters/provider'
    autoload :Waiter, 'aws-sdk-core/waiters/waiter'
  end

  # @api private
  module Xml
    autoload :Builder, 'aws-sdk-core/xml/builder'
    autoload :DefaultList,  'aws-sdk-core/xml/default_list'
    autoload :DefaultMap,  'aws-sdk-core/xml/default_map'
    autoload :DocBuilder, 'aws-sdk-core/xml/doc_builder'
    autoload :ErrorHandler,  'aws-sdk-core/xml/error_handler'
    autoload :Parser, 'aws-sdk-core/xml/parser'
  end

  @config = {}

  class << self

    # @api private
    def shared_config
      enabled = ENV["AWS_SDK_CONFIG_OPT_OUT"] ? false : true
      @shared_config ||= SharedConfig.new(config_enabled: enabled)
    end

    # @return [Hash] Returns a hash of default configuration options shared
    #   by all constructed clients.
    attr_reader :config

    # @param [Hash] config
    def config=(config)
      if Hash === config
        @config = config
      else
        raise ArgumentError, 'configuration object must be a hash'
      end
    end

    # Return the partition with the given name. A partition describes
    # the services and regions available in that partition.
    #
    #     aws = Aws.partition('aws')
    #
    #     puts "Regions available in the aws partition:\n"
    #     aws.regions.each do |region|
    #       puts region.name
    #     end
    #
    #     puts "Services available in the aws partition:\n"
    #     aws.services.each do |services|
    #       puts services.name
    #     end
    #
    # See {Partitions} for more information and examples.
    #
    # @param [String] partition_name The name of the partition to return.
    #   Valid names include "aws", "aws-cn", and "aws-us-gov".
    #
    # @return [Partitions::Partition]
    #
    # @raise [ArgumentError] Raises an `ArgumentError` if a partition is
    #   not found with the given name. The error message contains a list
    #   of valid partition names.
    def partition(partition_name)
      Partitions.default_list.partition(partition_name)
    end

    # Return an array of partitions. A partition describes
    # the services and regions available in that partition.
    #
    #     Aws.partitions.each do |partition|
    #
    #       puts "Regions available in #{partition.name}:\n"
    #       partition.regions.each do |region|
    #         puts region.name
    #       end
    #
    #       puts "Services available in #{partition.name}:\n"
    #       partition.services.each do |service|
    #         puts service.name
    #       end
    #     end
    #
    # See {Partitions} for more information and examples.
    #
    # @return [Array<Partitions::Partition>] Returns an array of all
    #   known partitions.
    def partitions
      Partitions.default_list.partitions
    end

    # The SDK ships with a ca certificate bundle to use when verifying SSL
    # peer certificates. By default, this cert bundle is *NOT* used. The
    # SDK will rely on the default cert available to OpenSSL. This ensures
    # the cert provided by your OS is used.
    #
    # For cases where the default cert is unavailable, e.g. Windows, you
    # can call this method.
    #
    #     Aws.use_bundled_cert!
    #
    # @return [String] Returns the path to the bundled cert.
    def use_bundled_cert!
      config.delete(:ssl_ca_directory)
      config.delete(:ssl_ca_store)
      config[:ssl_ca_bundle] = File.expand_path(File.join(
        File.dirname(__FILE__),
        '..',
        'ca-bundle.crt'
      ))
    end

    # @api private
    def eager_autoload!(*args)
      msg = 'Aws.eager_autoload is no longer needed, usage of '
      msg << 'autoload has been replaced with require statements'
      warn(msg)
    end

  end
end

require 'aws-sdk-sts'
