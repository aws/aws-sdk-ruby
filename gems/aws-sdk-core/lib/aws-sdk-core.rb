require 'jmespath'

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
require_relative 'aws-sdk-core/pageable_response'
require_relative 'aws-sdk-core/pager'
require_relative 'aws-sdk-core/param_converter'
require_relative 'aws-sdk-core/param_validator'
require_relative 'aws-sdk-core/partitions'
require_relative 'aws-sdk-core/shared_config'
require_relative 'aws-sdk-core/structure'
require_relative 'aws-sdk-core/tree_hash'
require_relative 'aws-sdk-core/type_builder'
require_relative 'aws-sdk-core/util'
require_relative 'aws-sdk-core/version'

# partitions/regions/services interfaces

require_relative 'aws-sdk-core/partitions/partition'
require_relative 'aws-sdk-core/partitions/partition_list'
require_relative 'aws-sdk-core/partitions/region'
require_relative 'aws-sdk-core/partitions/service'

# resource classes

require_relative 'aws-sdk-core/resources/collection'

# logging

require_relative 'aws-sdk-core/log/formatter'
require_relative 'aws-sdk-core/log/param_filter'
require_relative 'aws-sdk-core/log/param_formatter'

# stubbing

require_relative 'aws-sdk-core/stubbing/empty_stub'
require_relative 'aws-sdk-core/stubbing/data_applicator'
require_relative 'aws-sdk-core/stubbing/stub_data'
require_relative 'aws-sdk-core/stubbing/xml_error'

# stubbing protocols

require_relative 'aws-sdk-core/stubbing/protocols/ec2'
require_relative 'aws-sdk-core/stubbing/protocols/json'
require_relative 'aws-sdk-core/stubbing/protocols/query'
require_relative 'aws-sdk-core/stubbing/protocols/rest'
require_relative 'aws-sdk-core/stubbing/protocols/rest_json'
require_relative 'aws-sdk-core/stubbing/protocols/rest_xml'

# waiters

require_relative 'aws-sdk-core/waiters/errors'
require_relative 'aws-sdk-core/waiters/poller'
require_relative 'aws-sdk-core/waiters/provider'
require_relative 'aws-sdk-core/waiters/waiter'

# query protocol

require_relative 'aws-sdk-core/query/ec2_param_builder'
require_relative 'aws-sdk-core/query/handler'
require_relative 'aws-sdk-core/query/param'
require_relative 'aws-sdk-core/query/param_builder'
require_relative 'aws-sdk-core/query/param_list'

# rest protocol : request

require_relative 'aws-sdk-core/rest/handler'
require_relative 'aws-sdk-core/rest/request/body'
require_relative 'aws-sdk-core/rest/request/builder'
require_relative 'aws-sdk-core/rest/request/endpoint'
require_relative 'aws-sdk-core/rest/request/headers'

# rest protocol : response

require_relative 'aws-sdk-core/rest/response/body'
require_relative 'aws-sdk-core/rest/response/headers'
require_relative 'aws-sdk-core/rest/response/parser'
require_relative 'aws-sdk-core/rest/response/status_code'

# xml

require_relative 'aws-sdk-core/xml/builder'
require_relative 'aws-sdk-core/xml/default_list'
require_relative 'aws-sdk-core/xml/default_map'
require_relative 'aws-sdk-core/xml/doc_builder'
require_relative 'aws-sdk-core/xml/error_handler'
require_relative 'aws-sdk-core/xml/parser'
require_relative 'aws-sdk-core/xml/parser/stack'
require_relative 'aws-sdk-core/xml/parser/frame'
require_relative 'aws-sdk-core/xml/parser/parsing_error'

# json protoocl

require_relative 'aws-sdk-core/json'
require_relative 'aws-sdk-core/json/builder'
require_relative 'aws-sdk-core/json/error_handler'
require_relative 'aws-sdk-core/json/handler'
require_relative 'aws-sdk-core/json/parser'

# STS

require 'aws-sdk-sts'

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

  CORE_GEM_VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).strip

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
