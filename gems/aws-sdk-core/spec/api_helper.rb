# frozen_string_literal: true

require 'json'

module ApiHelper
  class << self

    def sample_json # dynamodb
      @sample_json ||= begin
        api = File.expand_path('../fixtures/apis/dynamodb.json', __FILE__)
        api = JSON.load(File.read(api))
        sample_service(api: api)
      end
    end

    def sample_query # iam
      @sample_query ||= begin
        api = File.expand_path('../fixtures/apis/iam.json', __FILE__)
        api = JSON.load(File.read(api))
        sample_service(api: api)
      end
    end

    def sample_rest_xml # s3
      @sample_rest_xml ||= begin
        api = File.expand_path('../fixtures/apis/s3.json', __FILE__)
        api = JSON.load(File.read(api))
        sample_service(api: api)
      end
    end

    def sample_rest_json # glacier
      @sample_rest_json ||= begin
        api = File.expand_path('../fixtures/apis/glacier.json', __FILE__)
        api = JSON.load(File.read(api))
        sample_service(api: api)
      end
    end

    def sample_ec2 # ec2 has its own protocol
      @sample_ec2 ||= begin
        api = File.expand_path('../fixtures/apis/ec2.json', __FILE__)
        api = JSON.load(File.read(api))
        sample_service(api: api)
      end
    end

    def sample_shapes
      {
        'StructureShape' => {
          'type' => 'structure',
          'members' => {
            # complex members
            'Nested' => { 'shape' => 'StructureShape' },
            'NestedList' => { 'shape' => 'StructureList' },
            'NestedMap' => { 'shape' => 'StructureMap' },
            'NumberList' => { 'shape' => 'IntegerList' },
            'StringMap' => { 'shape' => 'StringMap' },
            'SensitiveString' => { 'shape' => 'SensitiveStringShape' },
            # scalar members
            'Blob' => { 'shape' => 'BlobShape' },
            'Byte' => { 'shape' => 'ByteShape' },
            'Boolean' => { 'shape' => 'BooleanShape' },
            'Character' => { 'shape' => 'CharacterShape' },
            'Double' => { 'shape' => 'DoubleShape' },
            'Float' => { 'shape' => 'FloatShape' },
            'Integer' => { 'shape' => 'IntegerShape' },
            'Long' => { 'shape' => 'LongShape' },
            'String' => { 'shape' => 'StringShape' },
            'StringWithConsecutiveSpaces' => { 'shape' => 'StringShape' },
            'StringWithLF' => { 'shape' => 'StringShape' },
            'Timestamp' => { 'shape' => 'TimestampShape' },
            'EventStream' => { 'shape' => 'EventStream' },
            'DocumentType' => { 'shape' => 'DocumentShape' }
          }
        },
        'PayloadStructureShape' => {
          'type' => 'structure',
          'payload' => 'StreamingBlob',
          'members' => {
            'StreamingBlob' => { 'shape' => 'BlobShape', 'streaming' => 'true' }
          }
        },
        'EventStream' => {
          'type' => 'structure',
          'members' => {
            'EventA' => {
              'shape' => 'EventA'
            }
          },
          'eventstream' => true
        },
        'EventA' => {
          'type' => 'structure',
          'members' => {
            'MemberA' => { 'shape' => 'StringShape' }
          },
          'event' => true
        },
        'StructureList' => {
          'type' => 'list',
          'member' => { 'shape' => 'StructureShape' }
        },
        'StructureMap' => {
          'type' => 'map',
          'key' => { 'shape' => 'StringShape' },
          'value' => { 'shape' => 'StructureShape' }
        },
        'IntegerList' => {
          'type' => 'list',
          'member' => { 'shape' => 'IntegerShape' }
        },
        'StringMap' => {
          'type' => 'map',
          'key' => { 'shape' => 'StringShape' },
          'value' => { 'shape' => 'StringShape' }
        },
        'BlobShape' => { 'type' => 'blob' },
        'ByteShape' => { 'type' => 'byte' },
        'BooleanShape' => { 'type' => 'boolean' },
        'CharacterShape' => { 'type' => 'character' },
        'DoubleShape' => { 'type' => 'double' },
        'FloatShape' => { 'type' => 'float' },
        'IntegerShape' => { 'type' => 'integer' },
        'LongShape' => { 'type' => 'long' },
        'StringShape' => { 'type' => 'string' },
        'SensitiveStringShape' => { 'type' => 'string', 'sensitive' => true },
        'TimestampShape' => { 'type' => 'timestamp' },
        'DocumentShape' => { 'type' => 'structure', 'document' => true }
      }
    end

    def sample_service(options = {})
      api_hash = options.fetch(:api, api(options))
      api_hash['metadata'] ||= metadata(options)
      module_name = next_sample_module_name
      code = AwsSdkCodeGenerator::CodeBuilder.new(
        aws_sdk_core_lib_path: File.expand_path('../../lib/', __FILE__),
        service: AwsSdkCodeGenerator::Service.new(
          name: module_name,
          module_name: module_name,
          api: api_hash,
          paginators: options[:paginators],
          waiters: options[:waiters],
          resources: options[:resources],
          endpoint_rules: options[:endpoint_rules],
          endpoint_tests: options[:endpoint_tests],
          gem_dependencies: { 'aws-sdk-core' => '3' },
          gem_version: '1.0.0'
        )
      )
      begin
        Object.module_eval(code.source)
      rescue => err
        puts(code.source)
        raise err
      end
      Object.const_get(module_name)
    end

    def sample_rest_service(options)
      sample_service(options)
    end

    def sample_api(options = {})
      sample_service(options).const_get(:ClientApi).const_get(:API)
    end

    private

    def api(options)
      {
        'metadata' => metadata(options),
        'operations' => operations(options),
        'shapes' => shapes(options),
      }
    end

    def metadata(options)
      {
        'endpointPrefix' => 'svc',
        'protocol' => 'json',
        'jsonVersion' => '1.1',
      }.merge(options.delete(:metadata) || {})
    end

    def operations(options)
      options.delete(:operations) || {
        'ExampleOperation' => {
          'http' => { 'method' => 'POST', 'requestUri' => '/' },
          'input' => { 'shape' => 'StructureShape' },
          'output' => { 'shape' => 'StructureShape' },
        }
      }
    end

    def shapes(options)
      options.delete(:shapes) || sample_shapes
    end

    def next_sample_module_name
      @sample_api_count ||= 0
      @sample_api_count += 1
      "SampleApi#{@sample_api_count}"
    end

  end
end
