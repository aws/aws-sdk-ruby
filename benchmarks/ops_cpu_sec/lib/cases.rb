# frozen_string_literal: true

module OpsCpuSec
  # protocol => benchmark service (fixtures/models/<service>/)
  SERVICES = {
    'awsJson1_0' => 'AwsJsonRpcDataPlane',
    'rpcv2Cbor' => 'SmithyRpcV2CborDataPlane',
    'awsQuery' => 'AwsQueryDataPlane',
    'restJson1' => 'AwsRestJsonDataPlane',
    'restXml' => 'AwsRestXmlDataPlane'
  }.freeze

  # Smallest valid input for response cases (the model's response tests have
  # no request params).
  RESPONSE_CASE_PARAMS = {
    'GetItem' => { table_name: 'test-table', key: { 'id' => { s: 'test-id' } } },
    'GetMetricData' => { metric_data_queries: [], start_time: Time.at(0), end_time: Time.at(0) },
    'GetObject' => { bucket: 'test-bucket', key: 'test-key' },
    'CopyObject' => { bucket: 'test-bucket', key: 'test-key', copy_source: 'source-bucket/source-key' },
    'Healthcheck' => {}
  }.freeze

  Case = Struct.new(:id, :protocol, :kind, :operation, :method_name, :client, :params, :spec, :canned)

  # Loads fixtures/cases.json and builds one client per case.
  module Cases
    class << self
      def ids(filter)
        select(specs, filter).map { |spec| spec['id'] }
      end

      def load(filter)
        select(specs, filter).map { |spec| build(spec) }
      end

      def specs
        JSON.parse(File.read(File.join(FIXTURES, 'cases.json'), encoding: 'UTF-8'))
      end

      def select(specs, filter)
        filter ? specs.select { |spec| spec['id'].match?(filter) } : specs
      end

      def build(spec)
        mod = service_module(SERVICES.fetch(spec['protocol']))
        method_name = underscore(spec['operation']).to_sym
        operation_ref = mod::Client.api.operation(method_name)
        canned, params = response_and_params(spec, operation_ref)
        client = mod::Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('akid', 'secret'),
          plugins: [StubSendPlugin],
          ocs_response: canned
        )
        Case.new(spec['id'], spec['protocol'], spec['kind'], spec['operation'], method_name, client, params,
                 spec, canned)
      end

      # Request cases send the model's params and get the protocol's smallest
      # valid response; response cases get the model's response.
      def response_and_params(spec, operation_ref)
        if spec['kind'] == 'request'
          [trivial_response(spec['protocol'], spec['operation'], operation_ref),
           format_params(operation_ref.input, spec['params'])]
        else
          [canned_response(spec, operation_ref), RESPONSE_CASE_PARAMS.fetch(spec['operation'])]
        end
      end

      # Generates the service client in memory with this checkout's code
      # generator.
      def service_module(name)
        return Aws.const_get(name) if Aws.const_defined?(name, false)

        dir = File.join(FIXTURES, 'models', name)
        service = AwsSdkCodeGenerator::Service.new(
          name: name,
          module_name: "Aws::#{name}",
          gem_version: '1.0.0',
          api: File.join(dir, 'api-2.json'),
          endpoint_rules: File.join(dir, 'endpoint-rule-set-1.json'),
          gem_dependencies: { 'aws-sdk-core' => '3', 'aws-sigv4' => '1' }
        )
        code = AwsSdkCodeGenerator::CodeBuilder.new(
          aws_sdk_core_lib_path: File.join(ROOT, 'gems', 'aws-sdk-core', 'lib'),
          service: service
        ).source
        Object.module_eval(code, "(generated #{name})")
        Aws.const_get(name)
      end

      def underscore(name)
        AwsSdkCodeGenerator::Underscore.underscore(name)
      end

      # Converts the model's params to Ruby SDK params. Blob payloads (object
      # bodies) are base64 in the model; other blobs (AttributeValue B) are raw.
      def format_params(ref, src, payload: false)
        shape = ref.shape
        case shape
        when Seahorse::Model::Shapes::StructureShape then format_structure(shape, src)
        when Seahorse::Model::Shapes::ListShape then src.map { |value| format_params(shape.member, value) }
        when Seahorse::Model::Shapes::MapShape then src.transform_values { |value| format_params(shape.value, value) }
        when Seahorse::Model::Shapes::TimestampShape then src.is_a?(String) ? Time.parse(src) : Time.at(src)
        when Seahorse::Model::Shapes::BlobShape then payload ? Base64.strict_decode64(src) : src
        else src
        end
      end

      def format_structure(shape, src)
        src.each_with_object({}) do |(key, value), out|
          member = underscore(key).to_sym
          out[member] = format_params(shape.member(member), value, payload: shape[:payload] == member)
        end
      end

      # The model's response; CBOR bodies and blob payloads are base64 text
      # (text blocks may end in a newline) in the model.
      def canned_response(spec, operation_ref)
        body = spec['body']
        body = Base64.strict_decode64(body.strip) if spec['protocol'] == 'rpcv2Cbor' || blob_payload?(operation_ref)
        Canned.new(spec['code'], spec['headers'], body.b)
      end

      def blob_payload?(operation_ref)
        payload = operation_ref.output.shape[:payload]
        payload && operation_ref.output.shape.member(payload.to_sym).shape.is_a?(Seahorse::Model::Shapes::BlobShape)
      end

      # The protocol's smallest valid 200 response.
      def trivial_response(protocol, op_name, operation_ref)
        case protocol
        when 'awsJson1_0' then Canned.new(200, {}, '{}'.b)
        when 'rpcv2Cbor' then Canned.new(200, { 'smithy-protocol' => 'rpc-v2-cbor' }, [0xA0].pack('C'))
        when 'awsQuery'
          result = operation_ref.output ? "<#{op_name}Result/>" : ''
          Canned.new(200, {}, "<#{op_name}Response>#{result}</#{op_name}Response>".b)
        else Canned.new(200, {}, ''.b)
        end
      end
    end
  end
end
