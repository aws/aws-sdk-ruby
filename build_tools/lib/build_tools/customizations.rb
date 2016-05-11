module BuildTools
  module Customizations

    @api_customizations = {}
    @doc_customizations = {}
    @plugins_to_add = Hash.new([])
    @plugins_to_remove = Hash.new([])

    class << self

      def api(svc_name, &block)
        @api_customizations[svc_name] = block
      end

      def doc(svc_name, &block)
        @doc_customizations[svc_name] = block
      end

      def plugins(svc_name, options)
        @plugins_to_add[svc_name] += options[:add] || []
        @plugins_to_remove[svc_name] += options[:remove] || []
      end

      def apply_api_customizations(svc_name, api)
        @api_customizations[svc_name].call(api) if @api_customizations[svc_name]
      end

      def apply_doc_customizations(svc_name, docs)
        @doc_customizations[svc_name].call(docs) if @doc_customizations[svc_name]
      end

      def plugins_to_add(svc_name)
        @plugins_to_add[svc_name]
      end

      def plugins_to_remove(svc_name)
        @plugins_to_remove[svc_name]
      end

      def apply_svc_module_customizations(svc_module)
        if svc_module.name == 'DynamoDB'

          svc_module.require('aws-sdk-core/dynamodb/attribute_value')

          svc_module.class('Client') do |client_class|
            client_class.method(:stub_data) do |m|
              m.param(:operation_name)
              m.param(:data, default: {})
              m.code(<<-CODE)
if config.simple_attributes
  rules = config.api.operation(operation_name).output
  translator = Plugins::DynamoDBSimpleAttributes::ValueTranslator
  data = translator.apply(rules, :marshal, data)
  data = super(operation_name, data)
  translator.apply(rules, :unmarshal, data)
else
  super
end
              CODE
            end
            client_class.method(:data_to_http_resp, access: :private) do |m|
              m.param(:operation_name)
              m.param(:data)
              m.code(<<-CODE)
api = config.api
operation = api.operation(operation_name)
translator = Plugins::DynamoDBSimpleAttributes::ValueTranslator
translator = translator.new(operation.output, :marshal)
data = translator.apply(data)
ParamValidator.validate!(operation.output, data)
protocol_helper.stub_data(api, operation, data)
              CODE
            end
          end

        end
      end

    end

    plugins('APIGateway',
      add: %w(Aws::Plugins::APIGatewayHeader),
    )

    api('CloudFront') do |api|

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

    plugins('CloudSearchDomain',
      add: %w(Aws::Plugins::CSDConditionalSigning),
      remove: %w(Aws::Plugins::RegionalEndpoint),
    )

    plugins('DynamoDB', add: %w(
      Aws::Plugins::DynamoDBExtendedRetries
      Aws::Plugins::DynamoDBSimpleAttributes
      Aws::Plugins::DynamoDBCRC32Validation
    ))

    api('EC2') do |api|
      if ENV['DOCSTRINGS']
        members = api['shapes']['CopySnapshotRequest']['members']
        members.delete('DestinationRegion')
        members.delete('PresignedUrl')
      end
    end

    plugins('EC2', add: %w(
      Aws::Plugins::EC2CopyEncryptedSnapshot
      Aws::Plugins::EC2RegionValidation
    ))

    api('Glacier') do |api|
      api['shapes']['Timestamp'] = {
        'type' => 'timestamp',
        'timestampFormat' => 'iso8601',
      }
      api['shapes'].each do |_, shape|
        if shape['members']
          shape['members'].each do |name, ref|
            case name
            when /date/i then ref['shape'] = 'Timestamp'
            when 'limit' then ref['shape'] = 'Size'
            when 'partSize' then ref['shape'] = 'Size'
            when 'archiveSize' then ref['shape'] = 'Size'
            end
          end
        end
      end
    end

    plugins('Glacier', add: %w(
      Aws::Plugins::GlacierAccountId
      Aws::Plugins::GlacierApiVersion
      Aws::Plugins::GlacierChecksums
    ))

    api('ImportExport') do |api|
      api['operations'].each do |_, operation|
        operation['http']['requestUri'] = '/'
      end
    end

    api('IoTDataPlane') do |api|
      api['metadata'].delete('endpointPrefix')
    end

    %w(Lambda LambdaPreview).each do |svc_name|

      api(svc_name) do |api|
        api['shapes']['Timestamp']['type'] = 'timestamp'
      end

      doc('lambda') do |docs|
        docs['shapes']['Blob']['refs']['UpdateFunctionCodeRequest$ZipFile'] =
          "<p>.zip file containing your packaged source code.</p>"
      end

    end

    plugins('MachineLearning', add: %w(
      Aws::Plugins::MachineLearningPredictEndpoint
    ))

    api('Route53') do |api|
      api['shapes']['PageMaxItems']['type'] = 'integer'
    end

    plugins('Route53', add: %w(
      Aws::Plugins::Route53IdFix
    ))

    api('S3') do |api|
      api['metadata'].delete('signatureVersion')
    end

    plugins('S3', add: %w(
      Aws::Plugins::S3Accelerate
      Aws::Plugins::S3BucketDns
      Aws::Plugins::S3Expect100Continue
      Aws::Plugins::S3Http200Errors
      Aws::Plugins::S3GetBucketLocationFix
      Aws::Plugins::S3LocationConstraint
      Aws::Plugins::S3Md5s
      Aws::Plugins::S3Redirects
      Aws::Plugins::S3SseCpk
      Aws::Plugins::S3UrlEncodedKeys
      Aws::Plugins::S3RequestSigner
    ))

    api('SQS') do |api|
      api['metadata']['errorPrefix'] = 'AWS.SimpleQueueService.'
    end

    plugins('SQS', add: %w(
      Aws::Plugins::SQSQueueUrls
      Aws::Plugins::SQSMd5s
    ))

    plugins('SWF', add: %w(
      Aws::Plugins::SWFReadTimeouts
    ))

  end
end
