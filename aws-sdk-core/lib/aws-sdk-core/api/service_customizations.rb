module Aws
  module Api
    module ServiceCustomizations

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
          apply_protocol_plugin(client_class)
          endpoint_prefix = client_class.api.metadata('endpointPrefix')
          @customizations[endpoint_prefix].each do |customization|
            Customizer.new(client_class).apply(&customization)
          end
        end

        private

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
        api.operations.each do |method_name|
          operation = api.operation(method_name)
          name = operation.name.sub(/\d{4}_\d{2}_\d{2}$/, '')
          operation.instance_variable_set("@name", name)
        end
      end

      customize 'cloudsearchdomain' do
        remove_plugin 'Aws::Plugins::RegionalEndpoint'
        add_plugin 'Aws::Plugins::CSDConditionalSigning'
      end

      customize 'dynamodb' do
        add_plugin 'Aws::Plugins::DynamoDBExtendedRetries'
        add_plugin 'Aws::Plugins::DynamoDBSimpleAttributes'
        add_plugin 'Aws::Plugins::DynamoDBCRC32Validation'
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

      customize 'lambda' do
        reshape 'Timestamp', 'type' => 'timestamp'
      end

      customize 'machinelearning' do
        add_plugin 'Aws::Plugins::MachineLearningPredictEndpoint'
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
        add_plugin 'Aws::Plugins::S3RequestSigner'

        api.definition['metadata'].delete('signatureVersion')

        # required for the GetBucketLocation fix to work, disabled normal
        # parsing of the output
        client_class.api.operation(:get_bucket_location).
          instance_variable_set("@output", nil)
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
