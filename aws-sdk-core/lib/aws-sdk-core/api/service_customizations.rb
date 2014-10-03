module Aws
  module Api
    module ServiceCustomizations

      DEFAULT_PLUGINS = [
        'Seahorse::Client::Plugins::Logging',
        'Seahorse::Client::Plugins::RestfulBindings',
        'Seahorse::Client::Plugins::ContentLength',
        'Aws::Plugins::UserAgent',
        'Aws::Plugins::RetryErrors',
        'Aws::Plugins::GlobalConfiguration',
        'Aws::Plugins::RegionalEndpoint',
        'Aws::Plugins::ResponsePaging',
        'Aws::Plugins::RequestSigner',
        'Aws::Plugins::StubResponses',
      ]

      @customizations = Hash.new {|h,k| h[k] = [] }

      class << self

        # Registers a list of customizations to apply during API translation.
        #
        #     ServiceCustomizations.customize('s3') do
        #       plugin 'MyCustomPlugin'
        #     end
        #
        # The block is evaluated by an instance of {Customizer}.
        # @param [String] endpoint_prefix
        # @return [void]
        # @see {Customizer}
        def customize(endpoint_prefix, &block)
          @customizations[endpoint_prefix] << block
        end

        # Applies customizations registered for the service client.
        # Customizations are registered by the service endpoint prefix.
        # @param [Class<Seahorse::Client::Base>] client_class
        # @return [void]
        # @see {#customize}
        # @see {Customizer}
        def apply(client_class)
          apply_plugins(client_class)
          endpoint_prefix = client_class.api.metadata('endpointPrefix')
          @customizations[endpoint_prefix].each do |customization|
            Customizer.new(client_class).apply(&customization)
          end
        end

        private

        def apply_plugins(client_class)
          apply_default_plugins(client_class)
          apply_protocol_plugin(client_class)
        end

        def apply_default_plugins(client_class)
          DEFAULT_PLUGINS.each do |plugin|
            client_class.add_plugin(plugin)
          end
        end

        def apply_protocol_plugin(client_class)
          protocol = client_class.api.metadata('protocol')
          plugin = case protocol
          when 'ec2'       then Aws::Plugins::Protocols::EC2
          when 'query'     then Aws::Plugins::Protocols::Query
          when 'json'      then Aws::Plugins::Protocols::JsonRpc
          when 'rest-json' then Aws::Plugins::Protocols::RestJson
          when 'rest-xml'  then Aws::Plugins::Protocols::RestXml
          end
          client_class.add_plugin(plugin) if plugin
        end

      end

      customize 'cloudfront' do
        reshape_members 'MaxItems', 'shape' => 'integer'
      end

      customize 'cloudsearchdomain' do
        remove_plugin 'Aws::Plugins::RegionalEndpoint'
        add_plugin 'Aws::Plugins::CSDConditionalSigning'
      end

      customize 'dynamodb' do
        add_plugin 'Aws::Plugins::DynamoDBExtendedRetries'
        add_plugin 'Aws::Plugins::DynamoDBSimpleAttributes'
      end

      customize 'ec2' do
        if api.version >= '2014-05-01'
          add_plugin 'Aws::Plugins::EC2CopyEncryptedSnapshot'
        end
      end

      customize 'glacier' do
        add_plugin 'Aws::Plugins::GlacierAccountId'
        add_plugin 'Aws::Plugins::GlacierApiVersion'
        add_plugin 'Aws::Plugins::GlacierChecksums'
        add_shape 'Date', 'type' => 'timestamp'
        reshape_members /date/i, 'shape' => 'Date'
        reshape_members 'limit', 'shape' => 'Size'
        reshape_members 'partSize', 'shape' => 'Size'
        reshape_members 'archiveSize', 'shape' => 'Size'
      end

      customize 'importexport' do
        each_operation do |name, operation|
          operation['http']['requestUri'] = '/'
        end
      end

      customize 'route53' do
        add_plugin 'Aws::Plugins::Route53IdFix'
        reshape 'PageMaxItems', 'type' => 'integer'
      end

      customize 's3' do
        add_plugin 'Aws::Plugins::S3BucketDns'
        add_plugin 'Aws::Plugins::S3Expect100Continue'
        add_plugin 'Aws::Plugins::S3CompleteMultipartUploadFix'
        add_plugin 'Aws::Plugins::S3GetBucketLocationFix'
        add_plugin 'Aws::Plugins::S3LocationConstraint'
        add_plugin 'Aws::Plugins::S3Md5s'
        add_plugin 'Aws::Plugins::S3Redirects'
        add_plugin 'Aws::Plugins::S3SseCpk'
        add_plugin 'Aws::Plugins::S3UrlEncodedKeys'
      end

      customize 'sqs' do
        add_plugin 'Aws::Plugins::SQSQueueUrls'
        metadata 'errorPrefix', 'AWS.SimpleQueueService.'
      end

      customize 'swf' do
        add_plugin 'Aws::Plugins::SWFReadTimeouts'
      end

    end
  end
end
