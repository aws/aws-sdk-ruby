# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/default_signer'
require 'aws/http/httparty_handler'
require 'set'
require 'uri'

module AWS

  # A configuration object for AWS interfaces and clients.
  #
  # == Configuring Credential
  #
  # In order to do anything with AWS you will need to assign credentials.
  # The simplest method is to assing your credentials into the default
  # configuration:
  #
  #   AWS.config(:access_key_id => 'KEY', :secret_access_key => 'SECRET')
  #
  # You can also export them into your environment and they will be picked up
  # automatically:
  #
  #   export AWS_ACCESS_KEY_ID='YOUR_KEY_ID_HERE'
  #   export AWS_SECRET_ACCESS_KEY='YOUR_SECRET_KEY_HERE'
  #
  # For compatability with other AWS gems, the credentials can also be
  # exported like:
  #
  #   export AMAZON_ACCESS_KEY_ID='YOUR_KEY_ID_HERE'
  #   export AMAZON_SECRET_ACCESS_KEY='YOUR_SECRET_KEY_HERE'
  #
  # == Modifying a Configuration
  #
  # Configuration objects are read-only.  If you need a different set of
  # configuration values, call {#with}, passing in the updates
  # and a new configuration object will be returned.
  #
  #   config = Configuration.new(:max_retires => 3)
  #   new_config = config.with(:max_retries => 2)
  #
  #   config.max_retries #=> 3
  #   new_config.max_retries #=> 2
  #
  # == Global Configuration
  #
  # The global default configuration can be found at {AWS.config}
  #
  class Configuration

    # Creates a new Configuration object.
    # @param options (see AWS.config)
    # @option options (see AWS.config)
    def initialize options = {}

      @create_options = options.delete(:__create_options__) || {}

      @overridden = options.delete(:__overridden__) ||
        Set.new(options.keys.map { |k| k.to_sym })

      @options = {
        :ec2_endpoint => 'ec2.amazonaws.com',
        :http_handler => Http::HTTPartyHandler.new,
        :max_retries => 3,
        :iam_endpoint => 'iam.amazonaws.com',
        :s3_endpoint => 's3.amazonaws.com',
        :s3_multipart_threshold => 16 * 1024 * 1024,
        :s3_multipart_min_part_size => 5 * 1024 * 1024,
        :s3_multipart_max_parts => 10000,
        :simple_db_endpoint => 'sdb.amazonaws.com',
        :simple_db_consistent_reads => false,
        :simple_email_service_endpoint => 'email.us-east-1.amazonaws.com',
        :sns_endpoint => 'sns.us-east-1.amazonaws.com',
        :sqs_endpoint => 'sqs.us-east-1.amazonaws.com',
        :sts_endpoint => 'sts.amazonaws.com',
        :stub_requests => false,
        :proxy_uri => nil,
        :use_ssl => true,
        :user_agent_prefix => nil,
        :ssl_verify_peer => true,
        :ssl_ca_file => File.expand_path(File.dirname(__FILE__)+
                                         "/../../ca-bundle.crt")
      }

      {
        'AWS_ACCESS_KEY_ID'        => :access_key_id,
        'AWS_SECRET_ACCESS_KEY'    => :secret_access_key,
        'AMAZON_ACCESS_KEY_ID'     => :access_key_id,
        'AMAZON_SECRET_ACCESS_KEY' => :secret_access_key,
      }.each_pair do |env_key, opt_key|
        if ENV[env_key]
          @options[opt_key] = ENV[env_key]
        end
      end

      options.each do |(k,v)|
        @options[k.to_sym] = v
      end

    end

    # @return [Boolean] Returns true if web service requets should be 
    #   made with HTTPS.
    def use_ssl?
      @options[:use_ssl]
    end
    alias_method :use_ssl, :use_ssl?

    # @return [String] Your AWS account access key id credential.
    def access_key_id
      @options[:access_key_id]
    end

    # @return [String] Your AWS secret access key credential.
    def secret_access_key
      @options[:secret_access_key]
    end

    # @return [String] Your AWS session token credential.
    # @see STS
    def session_token
      @options[:session_token]
    end

    # Used to create a new Configuration object with the given modifications.
    # The current configuration object is not modified.
    #
    #   AWS.config(:max_retries => 2)
    #
    #   no_retries_config = AWS.config.with(:max_retries => 0)
    #
    #   AWS.config.max_retries        #=> 2
    #   no_retries_config.max_retries #=> 0
    #
    # You can use these configuration objects returned by #with to create
    # AWS objects:
    #
    #   AWS::S3.new(:config => no_retries_config)
    #   AWS::SQS.new(:config => no_retries_config)
    #
    # @param options (see AWS.config)
    # @option options (see AWS.config)
    # @return [Configuration] Copies the current configuration and returns
    #   a new one with modifications as provided in +:options+.
    def with options = {}
      overridden = @overridden + options.keys.map { |k| k.to_sym }
      self.class.new(@options.merge(options).
                     merge(:__create_options__ => @create_options,
                           :__overridden__ => overridden))
    end

    # @return [Integer] Maximum number of times to retry server errors.
    def max_retries
      @options[:max_retries]
    end

    # @return [String] The service endpoint for AWS Idenity Access 
    #   Management (IAM).
    def iam_endpoint
      @options[:iam_endpoint]
    end

    # @return [String] The service endpoint for Amazon S3.
    def s3_endpoint
      @options[:s3_endpoint]
    end

    # @return [String] The default service endpoint for Amazon EC2.
    def ec2_endpoint
      @options[:ec2_endpoint]
    end

    # @return [String] The service endpoint for Amazon SimpleDB.
    def simple_db_endpoint
      @options[:simple_db_endpoint]
    end

    # @return [String] The service endpoint for Amazon SimpleEmailService.
    def simple_email_service_endpoint
      @options[:simple_email_service_endpoint]
    end

    # @return [String] The service endpoint for Amazon SNS.
    def sns_endpoint
      @options[:sns_endpoint]
    end

    # @return [String] The service endpoint for Amazon SQS.
    def sqs_endpoint
      @options[:sqs_endpoint]
    end

    # @return [String] The service endpoint for AWS Security Token Service.
    def sts_endpoint
      @options[:sts_endpoint]
    end

    # @return [Boolean] Returns true if all reads to SimpleDB default to
    #   consistent reads.
    def simple_db_consistent_reads?
      @options[:simple_db_consistent_reads]
    end

    # @return [String,nil] Returns the prefix that is appended to the 
    #   user agent string that is sent with all requests to AWS.
    def user_agent_prefix
      @options[:user_agent_prefix]
    end

    # @return [Object] Returns the current http handler.
    def http_handler
      @options[:http_handler]
    end

    # @return [Object] Returns the current request signer.
    def signer
      return @options[:signer] if @options[:signer]
      raise "Missing credentials" unless access_key_id and secret_access_key
      @options[:signer] ||=
        DefaultSigner.new(access_key_id, secret_access_key, session_token)
    end

    # @return [Object,nil] Returns the current logger.
    def logger
      @options[:logger]
    end

    # @return [Boolean] Returns true if this configuration causes
    #   all AWS requests to return stubbed (empty) responses without making a
    #   request to the actual service.
    def stub_requests?
      @options[:stub_requests]
    end

    # @return [Integer] Returns the number of bytes where files larger 
    #   are uploaded to S3 in multiple parts.
    def s3_multipart_threshold
      @options[:s3_multipart_threshold]
    end

    # @return [Integer] The absolute minimum size (in bytes) each S3 multipart
    #   segment should be.
    def s3_multipart_min_part_size
      @options[:s3_multipart_min_part_size]
    end

    # @return [Integer] The maximum number of parts to split a file into
    #   when uploading to S3.
    def s3_multipart_max_parts
      @options[:s3_multipart_max_parts]
    end

    # @return [Boolean] True if the HTTPS client should validate the
    #   server certificate.
    #
    # @note This option should only be used for diagnostic purposes;
    #   leaving this option set to +false+ exposes your application to
    #   man-in-the-middle attacks and can pose a serious security
    #   risk.
    def ssl_verify_peer?
      @options[:ssl_verify_peer]
    end

    # @return [String] The path to a CA cert bundle in PEM format.
    #
    # If {#ssl_verify_peer?} is true (the default) this bundle will be
    # used to validate the server certificate in each HTTPS request.
    # The AWS SDK for Ruby ships with a CA cert bundle, which is the
    # default value for this option.
    def ssl_ca_file
      @options[:ssl_ca_file]
    end

    # @return [URI::HTTP, URI::HTTPS, nil] Returns the URI for the configured
    #   proxy if there is one.  Defaults to nil.
    def proxy_uri
      @options[:proxy_uri] ? URI.parse(@options[:proxy_uri].to_s) : nil
    end

    # @private
    def inspect
      "<#{self.class}>"
    end

    class << self

      # @private
      def add_parameter_type(klass, name, options = {})
        if options[:needs]
          define_method(name) do
            unless @overridden.include?(name)
              create_options = { :config => self }
              options[:needs].each do |need|
                create_options[need] = send(need)
              end
            end

            return @options[name] if @options[name] and
              (@overridden.include?(name) or
               @create_options[name] == create_options)

            @create_options[name] = create_options
            @options[name] = klass.new(create_options)
          end
        else
          define_method(name) do
            @options[name] ||= klass.new(:config => self)
          end
        end
      end

    end
  end
end
