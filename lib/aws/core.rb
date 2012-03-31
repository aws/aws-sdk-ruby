# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/core/autoloader'

# AWS is the root module for all of the Amazon Web Services.  It is also 
# where you can configure you access to AWS.  
#
# = Supported Services
#
# The currently supported services are:
#
# * {AWS::AutoScaling}
# * {AWS::DynamoDB}
# * {AWS::EC2}
# * {AWS::ELB}
# * {AWS::IAM}
# * {AWS::S3}
# * {AWS::SNS}
# * {AWS::SQS}
# * {AWS::STS}
# * {AWS::SimpleDB}
# * {AWS::SimpleEmailService}
# * {AWS::SimpleWorkflow}
#
# = AWS::Record
#
# In addition to the above services, bundled is an ORM based on AWS services
# See {AWS::Record} for more information.
#
# = Configuration
#
# You call {AWS.config} with a hash of options to configure your 
# access to the Amazon Web Services.  
#
# At a minimum you need to set your access credentials. See {AWS.config} 
# for additional configuration options.
#
#    AWS.config(
#      :access_key_id => 'ACCESS_KEY_ID',
#      :secret_access_key => 'SECRET_ACCESS_KEY') 
#
# == Rails
# 
# If you are loading AWS inside a Rails web application, it is recomended to 
# place your configuration inside:
#
#   config/initializers/aws.rb
#
module AWS

  # Current version of the AWS SDK for Ruby
  VERSION = "1.3.9"

  register_autoloads(self) do
    autoload :Errors, 'errors'
  end

  module Core

    AWS.register_autoloads(self) do
      autoload :ApiConfig,                 'api_config'
      autoload :AsyncHandle,               'async_handle'
      autoload :AuthorizeV2,               'authorize_v2'
      autoload :AuthorizeV3,               'authorize_v3'
      autoload :AuthorizeV4,               'authorize_v4'
      autoload :AuthorizeWithSessionToken, 'authorize_with_session_token'
      autoload :Cacheable,                 'cacheable'
      autoload :Client,                    'client'
      autoload :Collection,                'collection'
      autoload :Configuration,             'configuration'
      autoload :ConfiguredClientMethods,   'configured_client_methods'
      autoload :ConfiguredGrammars,        'configured_grammars'
      autoload :ConfiguredJsonClientMethods, 'configured_json_client_methods'
      autoload :ConfiguredOptionGrammars,  'configured_option_grammars'
      autoload :ConfiguredXmlGrammars,     'configured_xml_grammars'
      autoload :DefaultSigner,             'default_signer'
      autoload :IgnoreResultElement,       'ignore_result_element'
      autoload :IndifferentHash,           'indifferent_hash'
      autoload :Inflection,                'inflection'
      autoload :JsonClient,                'json_client'
      autoload :LazyErrorClasses,          'lazy_error_classes'
      autoload :LogFormatter,              'log_formatter'
      autoload :MetaUtils,                 'meta_utils'
      autoload :Model,                     'model'
      autoload :Naming,                    'naming'
      autoload :OptionGrammar,             'option_grammar'
      autoload :PageResult,                'page_result'
      autoload :Policy,                    'policy'
      autoload :Resource,                  'resource'
      autoload :ResourceCache,             'resource_cache'
      autoload :Response,                  'response'
      autoload :ResponseCache,             'response_cache'
      autoload :ServiceInterface,          'service_interface'
      autoload :SessionSigner,             'session_signer'
      autoload :UriEscape,                 'uri_escape'
      autoload :XmlGrammar,                'xml_grammar'
    end

    module Http
      AWS.register_autoloads(self) do
        autoload :Handler,         'handler'
        autoload :NetHttpHandler,  'net_http_handler'
        autoload :HTTPartyHandler, 'httparty_handler' # non-standard inflection
        autoload :Request,         'request'
        autoload :Response,        'response'
      end
    end

  end

  # the http party handler should still be accessible from its old namespace
  module Http
    AWS.register_autoloads(self, 'aws/core/http') do
      autoload :HTTPartyHandler, 'httparty_handler'
    end
  end

  class << self

    # @private
    @@config = nil

    # The global configuration for AWS.  Generally you set your prefered
    # configuration operations once after loading the aws-sdk gem.  
    #
    #   AWS.config({
    #     :access_key_id => 'ACCESS_KEY_ID',
    #     :secret_access_key => 'SECRET_ACCESS_KEY',
    #     :simple_db_endpoint => 'sdb.us-west-1.amazonaws.com',
    #     :max_retries => 2,
    #   })
    #
    # When using AWS classes they will always default to use configuration
    # values defined in {AWS.config}.
    #
    #   AWS.config(:max_retries => 2)
    #
    #   sqs = AWS::SQS.new
    #   sqs.config.max_retries #=> 2
    #
    # If you want to change a configuration value for a single instance you
    # pass the new configuration value to that object's initializer:
    #
    #   AWS::SQS.new(:max_retries => 0)
    #
    # @note Changing the global configuration does not affect objects
    #   that have already been constructed.
    #
    # @param [Hash] options
    #
    # @option options [String] :access_key_id (nil) AWS access key id 
    #   credential.
    #
    # @option options [String] :secret_access_key (nil) AWS secret access 
    #   key credential.
    #
    # @option options [String,nil] :session_token (nil) AWS secret token 
    #   credential.
    #
    # @option options [String] :auto_scaling_endpoint ('autoscaling.us-east-1.amazonaws.com')
    #   The service endpoint for Auto Scaling.
    #
    # @option options [String] :dynamo_db_endpoint ('dynamodb.amazonaws.com') 
    #   The service endpoint for Amazon DynamoDB.
    #
    # @option options [String] :dynamo_db_retry_throughput_errors (true) When
    #   true, AWS::DynamoDB::Errors::ProvisionedThroughputExceededException
    #   errors will be retried.
    #
    # @option options [String] :ec2_endpoint ('ec2.amazonaws.com') The 
    #   service endpoint for Amazon EC2.
    #
    # @option options [String] :elb_endpoint ('elasticloadbalancing.us-east-1.amazonaws.com')
    #   The server endpoint for Elastic Load Balancing.
    #
    # @option options [Object] :http_handler (AWS::HTTPartyHandler) The 
    #   http handler that sends requests to AWS.
    #
    # @option options [String] :iam_endpoint ('iam.amazonaws.com') The 
    #   service endpoint for AWS Idenity Access Management (IAM).
    #
    # @option options [Logger,nil] :logger (nil) A logger to send 
    #   log messages to.  Here is an example that logs to standard out.
    #
    #     require 'logger'
    #     AWS.config(:logger => Logger.new($stdout))
    #
    # @option options [Symbol] :log_level (:info) The level log messages are
    #   sent to the logger with (e.g. +:notice+, +:info+, +:warn+, 
    #   +:debug+, etc).
    #
    # @option options [Object] :log_formatter The log formatter is responsible
    #   for building log messages from responses. You can quickly change 
    #   log formats by providing a canned log formatter.
    #
    #     AWS.config(:log_formatter => AWS::Core::LogFormatter.colored)
    # 
    #   Here is the complete list of canned log formatters:
    #
    #   * +AWS::Core::LogFormatter.default+
    #   * +AWS::Core::LogFormatter.short+
    #   * +AWS::Core::LogFormatter.debug+
    #   * +AWS::Core::LogFormatter.colored+
    #
    #   You can also create an instance of AWS::Core::LogFormatter
    #   with a custom log message pattern. See {Core::LogFormatter} for 
    #   a complete list of pattern substituions.
    #
    #     pattern = "[AWS :operation :duration] :error_message"
    #     AWS.config(:log_formatter => AWS::Core::LogFormatter.new(pattern))
    #
    #   Lastly you can pass any object that responds to +#format+ accepting
    #   and instance of {Core::Response} and returns a string.
    #
    # @option options [Integer] :max_retries (3) The maximum number of times
    #   service errors (500) should be retried.  There is an exponential 
    #   backoff in between service request retries, so the more retries the
    #   longer it can take to fail.
    #
    # @option options [String, URI, nil] :proxy_uri (nil) The URI of the proxy 
    #    to send service requests through.  You can pass a URI object or a 
    #    URI string:
    #
    #       AWS.config(:proxy_uri => 'https://user:password@my.proxy:443/path?query')
    #
    # @option options [String] :s3_endpoint ('s3.amazonaws.com') The 
    #   service endpoint for Amazon S3.
    #
    # @option options [Integer] :s3_multipart_max_parts (1000) The maximum 
    #   number of parts to split a file into when uploading in parts to S3.
    #
    # @option options [Integer] :s3_multipart_threshold (16777216) When 
    #   uploading data to S3, if the number of bytes to send exceedes 
    #   +:s3_multipart_threshold+ then a multi part session is automatically
    #   started and the data is sent up in chunks.  The size of each part
    #   is specified by +:s3_multipart_min_part_size+. Defaults to 
    #   16777216 (16MB).
    #
    # @option options [Integer] :s3_multipart_min_part_size (5242880) The 
    #   absolute minimum size (in bytes) each S3 multipart segment should be.
    #   Defaults to 5242880 (5MB).
    #
    # @option options [Symbol] :s3_server_side_encryption (nil) The
    #   algorithm to use when encrypting object data on the server
    #   side.  The only valid value is +:aes256+, which specifies that
    #   the object should be stored using the AES encryption algorithm
    #   with 256 bit keys.  Defaults to +nil+, meaning server side
    #   encryption is not used unless specified on each individual
    #   call to upload an object.  This option controls the default
    #   behavior for the following methods:
    #
    #   * {S3::S3Object#write}
    #   * {S3::S3Object#multipart_upload}
    #   * {S3::S3Object#copy_from} and {S3::S3Object#copy_to}
    #   * {S3::S3Object#presigned_post}
    #   * {S3::Bucket#presigned_post}
    #
    # @option options [String] :simple_db_endpoint ('sdb.amazonaws.com') The
    #   service endpoint for Amazon SimpleDB.
    #
    # @option options [Boolean] :simple_db_consistent_reads (false) Determines
    #   if all SimpleDB read requests should be done consistently.
    #   Consistent reads are slower, but reflect all changes to SDB.
    #
    # @option options [String] :simple_email_service_endpoint ('email.us-east-1.amazonaws.com') 
    #   The service endpoint for Amazon Simple Email Service.
    #
    # @option options [String] :simple_workflow_service ('swf.us-east-1.amazonaws.com')
    #   The service endpoint for Amazon Simple Workflow Service.
    #
    # @option options [Object] :signer (AWS::DefaultSigner) The request signer.  Defaults to
    #   a default request signer implementation.
    #
    # @option options [String] :ssl_ca_file The path to a CA cert bundle in 
    #   PEM format.
    #
    #   If +:ssl_verify_peer+ is +true+ (the default) this bundle will be
    #   used to validate the server certificate in each HTTPS request.
    #   The AWS SDK for Ruby ships with a CA cert bundle, which is the
    #   default value for this option.
    #
    # @option options [String] :ssl_ca_path (nil) 
    #   The path the a CA cert directory.
    #
    # @option options [Boolean] :ssl_verify_peer (true) When +true+ 
    #   the HTTP handler validate server certificates for HTTPS requests.
    #
    #   This option should only be disabled for diagnostic purposes;
    #   leaving this option set to +false+ exposes your application to
    #   man-in-the-middle attacks and can pose a serious security
    #   risk.
    #
    # @option options[Boolean] :stub_requests (false) When +true+ requests 
    #   are not sent to AWS, instead empty reponses are generated and 
    #   returned to each service request.
    #
    # @option options [String] :sns_endpoint ('sns.us-east-1.amazonaws.com') The
    #   service endpoint for Amazon SNS.
    #
    # @option options [String] :sqs_endpoint ('sqs.us-east-1.amazonaws.com') The
    #   service endpoint for Amazon SQS.
    #
    # @option options [String] :sts_endpoint ('sts.amazonaws.com') The 
    #   service endpoint for AWS Security Token Service.
    #
    # @option options [Boolean] :use_ssl (true) When +true+, all requests
    #   to AWS are sent using HTTPS instead vanilla HTTP.
    #
    # @option options [String] :user_agent_prefix (nil) A string prefix to 
    #   append to all requets against AWS services.  This should be set
    #   for clients and applications built ontop of the aws-sdk gem.
    # 
    # @return [Core::Configuration] Returns the new configuration.
    #
    def config options = {}
      @@config ||= Core::Configuration.new
      @@config = @@config.with(options) unless options.empty?
      @@config
    end

    # @note Memoization is currently only supported for the EC2 APIs;
    #   other APIs are unaffected by the status of memoization.  To
    #   protect your code from future changes in memoization support,
    #   you should not enable memoization while calling non-EC2 APIs.
    #
    # Starts memoizing service requests made in the current thread.
    # See {memoize} for a full discussion of the memoization feature.
    # This has no effect if memoization is already enabled.
    def start_memoizing
      Thread.current[:aws_memoization] ||= {}
      nil
    end

    # @note Memoization is currently only supported for the EC2 APIs;
    #   other APIs are unaffected by the status of memoization.  To
    #   protect your code from future changes in memoization support,
    #   you should not enable memoization while calling non-EC2 APIs.
    #
    # Stops memoizing service requests made in the current thread.
    # See {memoize} for a full discussion of the memoization feature.
    # This has no effect if memoization is already disabled.
    def stop_memoizing
      Thread.current[:aws_memoization] = nil
    end

    # @note Memoization is currently only supported for the EC2 APIs;
    #   other APIs are unaffected by the status of memoization.  To
    #   protect your code from future changes in memoization support,
    #   you should not enable memoization while calling non-EC2 APIs.
    #
    # @return [Boolean] True if memoization is enabled for the current
    #   thread.  See {memoize} for a full discussion of the
    #   memoization feature.
    def memoizing?
      !Thread.current[:aws_memoization].nil?
    end

    # @note Memoization is currently only supported for the EC2 APIs;
    #   other APIs are unaffected by the status of memoization.  To
    #   protect your code from future changes in memoization support,
    #   you should not enable memoization while calling non-EC2 APIs.
    #
    # Enables memoization for the current thread, within a block.
    # Memoization lets you avoid making multiple requests for the same
    # data by reusing the responses which have already been received.
    # For example, consider the following code to get the most
    # recently launched EC2 instance:
    #
    #  latest = ec2.instances.sort_by(&:launch_time).last
    #
    # The above code would make N+1 requests (where N is the number of
    # instances in the account); iterating the collection of instances
    # is one request, and +Enumerable#sort_by+ calls
    # {AWS::EC2::Instance#launch_time} for each instance, causing
    # another request per instance.  We can rewrite the code as
    # follows to make only one request:
    #
    #  latest = AWS.memoize do
    #    ec2.instances.sort_by(&:launch_time).last
    #  end
    #
    # Iterating the collection still causes a request, but each
    # subsequent call to {AWS::EC2::Instance#launch_time} uses the
    # results from that first request rather than making a new request
    # for the same data.
    #
    # While memoization is enabled, every response that is received
    # from the service is retained in memory.  Therefore you should
    # use memoization only for short-lived blocks of code that make
    # relatively small numbers of requests.  The cached responses are
    # used in two ways while memoization is enabled:
    #
    # 1. Before making a request, the SDK checks the cache for a
    #    response to a request with the same signature (credentials,
    #    service endpoint, operation name, and parameters).  If such a
    #    response is found, it is used instead of making a new
    #    request.
    #
    # 2. Before retrieving data for an attribute of a resource
    #    (e.g. {AWS::EC2::Instance#launch_time}), the SDK attempts to
    #    find a cached response that contains the requested data.  If
    #    such a response is found, the cached data is returned instead
    #    of making a new request.
    #
    # When memoization is disabled, all previously cached responses
    # are discarded.
    def memoize
      return yield if memoizing?

      begin
        start_memoizing
        yield if block_given?
      ensure
        stop_memoizing
      end
    end

    # @private
    def resource_cache
      if memoizing?
        Thread.current[:aws_memoization][:resource_cache] ||=
          Core::ResourceCache.new
      end
    end

    # @private
    def response_cache
      if memoizing?
        Thread.current[:aws_memoization][:response_cache] ||=
          Core::ResponseCache.new
      end
    end

    def add_service name, ruby_name, default_endpoint

      create_block = lambda do |config| 
        AWS.const_get(name)::Client.new(:config => config)
      end

      needs = [:signer, :http_handler, :"#{ruby_name}_endpoint"]

      Core::Configuraiton.add_option :"#{ruby_name}_endpoint", default_endpoint

      Core::Configuraiton.add_option_with_needs(
        :"#{ruby_name}_client", needs, &create_block)

    end

    # Causes all requests to return empty responses without making any
    # requests against the live services.  This does not attempt to
    # mock the services.
    # @return [nil]
    def stub!
      config(:stub_requests => true)
      nil
    end

  end
end
