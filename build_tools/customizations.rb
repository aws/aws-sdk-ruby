module BuildTools
  module Customizations

    @api_customizations = {}
    @doc_customizations = {}
    @example_customizations = {}

    class << self

      def api(svc_name, &block)
        @api_customizations[svc_name] = block
      end

      def doc(svc_name, &block)
        @doc_customizations[svc_name] = block
      end

      def example(svc_name, &block)
        @example_customizations[svc_name] = block
      end

      def apply_api_customizations(svc_name, api)
        @api_customizations[svc_name].call(api) if @api_customizations[svc_name]
      end

      def apply_doc_customizations(svc_name, docs)
        @doc_customizations[svc_name].call(docs) if @doc_customizations[svc_name]
      end

      def apply_example_customizations(svc_name, examples)
        @example_customizations[svc_name].call(examples) if @example_customizations[svc_name]
      end

      private

      def dynamodb_example_deep_transform(subsegment, keys)
        if subsegment.is_a?(Hash)
          if subsegment.keys.size == 1 && keys.include?(subsegment.keys.first)
            subsegment[subsegment.keys.first] # reduce to value only
          else
            subsegment.each do |key, value|
              subsegment[key] = dynamodb_example_deep_transform(value, keys)
            end
          end
        elsif subsegment.is_a?(Array)
          subsegment.map do |item|
            dynamodb_example_deep_transform(item, keys)
          end
        else
          subsegment
        end
      end

    end

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

    api('EC2') do |api|
      if ENV['DOCSTRINGS']
        members = api['shapes']['CopySnapshotRequest']['members']
        members.delete('DestinationRegion')
        members.delete('PresignedUrl')
      end
    end

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

    api('RDS') do |api|
      %w(
        CopyDBSnapshotMessage
        CreateDBInstanceReadReplicaMessage
        CopyDBClusterSnapshotMessage
        CreateDBClusterMessage
      ).each do |shape_name|
        api['shapes'][shape_name]['members']['DestinationRegion'] = {"shape" => "String", "documented" => false }
        api['shapes'][shape_name]['members']['SourceRegion'] = {"shape" => "String"}
      end
    end

    doc('RDS') do |docs|
      %w(
        CopyDBSnapshotMessage
        CreateDBInstanceReadReplicaMessage
        CopyDBClusterSnapshotMessage
        CreateDBClusterMessage
      ).each do |shape_name|
        docs['shapes']['String']['refs']["#{shape_name}$SourceRegion"] =
          "<p>The source region of the snapshot. This is only needed when the shapshot is encrypted and in a different region.</p>"
      end
    end

    api('Route53') do |api|
      api['shapes']['PageMaxItems']['type'] = 'integer'
    end

    api('S3') do |api|
      api['metadata'].delete('signatureVersion')
      api['shapes']['ExpiresString'] = { 'type' => 'string' }
      %w(HeadObjectOutput GetObjectOutput).each do |shape|
        members = api['shapes'][shape]['members']
        # inject ExpiresString directly after Expires
        api['shapes'][shape]['members'] = members.inject({}) do |h, (k,v)|
          h[k] = v
          if k == 'Expires'
            h['ExpiresString'] = {
              'shape' => 'ExpiresString',
              'location' => 'header',
              'locationName' => 'Expires',
            }
          end
          h
        end
      end
    end

    api('SQS') do |api|
      api['metadata']['errorPrefix'] = 'AWS.SimpleQueueService.'
      api['shapes']['StringList']['flattened'] = true
      api['shapes']['BinaryList']['flattened'] = true
      api['shapes']['MessageAttributeValue']['members']['StringListValues'].delete('flattened')
      api['shapes']['MessageAttributeValue']['members']['BinaryListValues'].delete('flattened')
    end

    api('STS') do |api|
      operations = %w(AssumeRoleWithSAML AssumeRoleWithWebIdentity)
      operations.each do |operation|
        api['operations'][operation]['authtype'] = 'none'
      end
    end

    api('CognitoIdentity') do |api|
      operations = %w(
        GetCredentialsForIdentity
        GetId
        GetOpenIdToken
        UnlinkIdentity
      )
      operations.each do |operation|
        api['operations'][operation]['authtype'] = 'none'
      end
    end

    api('CognitoIdentityProvider') do |api|
      operations = %w(
        InitiateAuth
        RespondToAuthChallenge
      )
      operations.each do |operation|
        api['operations'][operation]['authtype'] = 'none'
      end
    end
  end
end
