module Aws
  module Api
    module Customizations

      @apis = {}
      @plugins = {}

      class << self

        def api(prefix, &block)
          @apis[prefix] = block
        end

        def plugins(prefix, options)
          @plugins[prefix] = {
            add: options[:add] || [],
            remove: options[:remove] || [],
          }
        end

        def apply_api_customizations(api)
          metadata = api['metadata'] || {}
          prefix = metadata['endpointPrefix']
          @apis[prefix].call(api) if @apis[prefix]
        end

        def apply_plugins(client_class)
          protocol = client_class.api.metadata['protocol']
          plugin = case protocol
            when 'ec2'       then Aws::Plugins::Protocols::EC2
            when 'query'     then Aws::Plugins::Protocols::Query
            when 'json'      then Aws::Plugins::Protocols::JsonRpc
            when 'rest-json' then Aws::Plugins::Protocols::RestJson
            when 'rest-xml'  then Aws::Plugins::Protocols::RestXml
          end
          client_class.add_plugin(plugin) if plugin
          prefix = client_class.api.metadata['endpointPrefix']
          if @plugins[prefix]
            @plugins[prefix][:add].each { |p| client_class.add_plugin(p) }
            @plugins[prefix][:remove].each { |p| client_class.remove_plugin(p) }
          end
        end

      end

      api('cloudfront') do |api|

        api['shapes'].each do |_, shape|
          if shape['members'] && shape['members']['MaxItems']
            shape['members']['MaxItems']['shape'] = 'integer'
          end
        end

        api['operations'].keys.each do |name|
          symbolized = name.sub(/\d{4}_\d{2}_\d{2}$/, '')
          api['operations'][symbolized] = api['operations'].delete(name)
        end

      end

      plugins('cloudsearchdomain',
        add: %w(Aws::Plugins::CSDConditionalSigning),
        remove: %w(Aws::Plugins::RegionalEndpoint),
      )

      plugins('dynamodb', add: %w(
        Aws::Plugins::DynamoDBExtendedRetries
        Aws::Plugins::DynamoDBSimpleAttributes
        Aws::Plugins::DynamoDBCRC32Validation
      ))

      plugins('ec2', add: %w(
        Aws::Plugins::EC2CopyEncryptedSnapshot
      ))

      api('glacier') do |api|
        api['shapes']['Date'] = { 'type' => 'timestamp' }
        api['shapes'].each do |_, shape|
          if shape['members']
            shape['members'].each do |name, ref|
              case name
              when /date/i then ref['shape'] = 'Date'
              when 'limit' then ref['shape'] = 'Size'
              when 'partSize' then ref['shape'] = 'Size'
              when 'archiveSize' then ref['shape'] = 'Size'
              end
            end
          end
        end
      end

      plugins('glacier', add: %w(
        Aws::Plugins::GlacierAccountId
        Aws::Plugins::GlacierApiVersion
        Aws::Plugins::GlacierChecksums
      ))

      api('importexport') do |api|
        api['operations'].each do |_, operation|
          operation['http']['requestUri'] = '/'
        end
      end

      api('lambda') do |api|
        api['shapes']['Timestamp']['type'] = 'timestamp'
      end

      plugins('machinelearning', add: %w(
        Aws::Plugins::MachineLearningPredictEndpoint
      ))

      api('route53') do |api|
        api['shapes']['PageMaxItems']['type'] = 'integer'
      end

      plugins('route53', add: %w(
        Aws::Plugins::Route53IdFix
      ))

      api('s3') do |api|
        api['metadata'].delete('signatureVersion')
        api['operations']['GetBucketLocation'].delete('output')
      end

      plugins('s3', add: %w(
        Aws::Plugins::S3BucketDns
        Aws::Plugins::S3Expect100Continue
        Aws::Plugins::S3CompleteMultipartUploadFix
        Aws::Plugins::S3GetBucketLocationFix
        Aws::Plugins::S3LocationConstraint
        Aws::Plugins::S3Md5s
        Aws::Plugins::S3Redirects
        Aws::Plugins::S3SseCpk
        Aws::Plugins::S3UrlEncodedKeys
        Aws::Plugins::S3RequestSigner
      ))

      api('sqs') do |api|
        api['metadata']['errorPrefix'] = 'AWS.SimpleQueueService.'
      end

      plugins('sqs', add: %w(
        Aws::Plugins::SQSQueueUrls
      ))

      plugins('swf', add: %w(
        Aws::Plugins::SWFReadTimeouts
      ))

    end
  end
end
