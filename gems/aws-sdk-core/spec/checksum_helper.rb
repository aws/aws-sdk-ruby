# frozen_string_literal: true

# Shared model and client builders for checksum specs.
module ChecksumHelper
  def checksum_shapes(operation_traits = nil)
    operation_traits ||= checksum_operation_traits

    ClientHelper.sample_shapes.tap do |shapes|
      structure = shapes['smithy.ruby.tests#Structure']
      structure['members'].delete('streamingBlob')
      structure['members']['ChecksumAlgorithm'] = {
        'target' => 'smithy.api#String',
        'traits' => {
          'smithy.api#httpHeader' => 'x-amz-sdk-checksum-algorithm'
        }
      }
      structure['members']['ChecksumMode'] = {
        'target' => 'smithy.api#String',
        'traits' => {
          'smithy.api#httpHeader' => 'x-amz-checksum-mode'
        }
      }

      shapes['smithy.ruby.tests#SampleClient']['traits'] = {
        'aws.protocols#restJson1' => {}
      }
      shapes['smithy.ruby.tests#Operation']['traits'] = {
        'smithy.api#http' => {
          'method' => 'POST',
          'uri' => '/',
          'code' => 200
        }
      }.merge(operation_traits)
    end
  end

  def checksum_client_class(shapes)
    ClientHelper.sample_client(shapes: shapes).const_get(:Client)
  end

  def checksum_client_options
    {
      stub_responses: true,
      endpoint: 'https://example.com'
    }
  end

  def checksum_client(client_class, **options)
    client_class.new(**checksum_client_options, **options)
  end

  def checksum_for(algorithm, body)
    digest = Aws::Core::Checksums.digest_for(algorithm)
    body.rewind
    digest.update(body.read)
    digest.base64digest
  ensure
    body.rewind
  end

  def add_streaming_request_behavior
    shapes['smithy.ruby.tests#Operation']['traits']['aws.auth#unsignedPayload'] = {}
    shapes['smithy.ruby.tests#Structure']['members']['StreamingBlob'] = {
      'target' => 'smithy.ruby.tests#StreamingBlob',
      'traits' => { 'smithy.api#httpPayload' => {} }
    }
  end

  def add_response_checksum_behavior(algorithms)
    shapes['smithy.ruby.tests#Operation']['traits']['aws.protocols#httpChecksum']
      .merge!(
        'requestValidationModeMember' => 'ChecksumMode',
        'responseAlgorithms' => algorithms
      )
  end

  def checksum_header_plugin(name, value)
    Class.new(Smithy::Client::Plugin) do
      handler(
        Class.new(Smithy::Client::Handler) do
          define_method(:call) do |context|
            context.http_request.headers[name] = value
            @handler.call(context)
          end
        end,
        step: :build,
        priority: 20
      )
    end
  end

  private

  def checksum_operation_traits
    {
      'aws.protocols#httpChecksum' => {
        'requestAlgorithmMember' => 'ChecksumAlgorithm'
      }
    }
  end
end
