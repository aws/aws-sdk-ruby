# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe Client do

      let(:client) { Client.new(stub_responses: true) }

      describe '#list_objects_v2' do
        # {
        #     id: "S3DefaultAddressing",
        #     documentation: "S3 clients should map the default addressing style to virtual host.",
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.us-west-2.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "list-type=2",
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #             },
        #         },
        #     },
        # },
        it 'S3DefaultAddressing' do
          client.config.region = 'us-west-2'
          resp = client.list_objects_v2(bucket: 'mybucket')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3.us-west-2.amazonaws.com')
          expect(request.endpoint.query).to include('list-type=2')
          expect(request.endpoint.path).to eq('/')
        end

        # {
        #     id: "S3VirtualHostAddressing",
        #     documentation: "S3 clients should support the explicit virtual host addressing style.",
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.us-west-2.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "list-type=2",
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "virtual",
        #                 },
        #             },
        #         },
        #     },
        # },
        it 'S3VirtualHostAddressing' do
          client.config.region = 'us-west-2'
          client.config.force_path_style = false
          resp = client.list_objects_v2(bucket: 'mybucket')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3.us-west-2.amazonaws.com')
          expect(request.endpoint.query).to include('list-type=2')
          expect(request.endpoint.path).to eq('/')
        end

        # {
        #     id: "S3PathAddressing",
        #     documentation: "S3 clients should support the explicit path addressing style.",
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/mybucket",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "s3.us-west-2.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "list-type=2",
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "path",
        #                 },
        #             },
        #         },
        #     },
        # },
        it 'S3PathAddressing' do
          client.config.region = 'us-west-2'
          client.config.force_path_style = true
          resp = client.list_objects_v2(bucket: 'mybucket')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('s3.us-west-2.amazonaws.com')
          expect(request.endpoint.query).to include('list-type=2')
          expect(request.endpoint.path).to eq('/mybucket')
        end

        # {
        #     id: "S3VirtualHostDualstackAddressing",
        #     documentation: """
        #         S3 clients should support the explicit virtual host
        #         addressing style with Dualstack.""",
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.dualstack.us-west-2.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "list-type=2",
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "virtual",
        #                     use_dualstack_endpoint: true,
        #                 },
        #             },
        #         },
        #     },
        # },
        it 'S3VirtualHostDualstackAddressing' do
          client.config.region = 'us-west-2'
          client.config.use_dualstack_endpoint = true
          resp = client.list_objects_v2(bucket: 'mybucket')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3.dualstack.us-west-2.amazonaws.com')
          expect(request.endpoint.query).to include('list-type=2')
          expect(request.endpoint.path).to eq('/')
        end

        # {
        #     id: "S3VirtualHostAccelerateAddressing",
        #     documentation: """
        #         S3 clients should support the explicit virtual host
        #         addressing style with S3 Accelerate.""",
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3-accelerate.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "list-type=2",
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "virtual",
        #                     use_accelerate_endpoint: true,
        #                 },
        #             },
        #         },
        #     },
        # },
        it 'S3VirtualHostAccelerateAddressing' do
          client.config.region = 'us-west-2'
          client.config.use_accelerate_endpoint = true
          resp = client.list_objects_v2(bucket: 'mybucket')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3-accelerate.amazonaws.com')
          expect(request.endpoint.query).to include('list-type=2')
          expect(request.endpoint.path).to eq('/')
        end

        # {
        #     id: "S3VirtualHostDualstackAccelerateAddressing",
        #     documentation: """
        #         S3 clients should support the explicit virtual host
        #         addressing style with Dualstack and S3 Accelerate.""",
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3-accelerate.dualstack.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "list-type=2",
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "virtual",
        #                     use_dualstack_endpoint: true,
        #                     use_accelerate_endpoint: true,
        #                 },
        #             },
        #         },
        #     },
        # },
        it 'S3VirtualHostDualstackAccelerateAddressing' do
          client.config.region = 'us-west-2'
          client.config.use_dualstack_endpoint = true
          client.config.use_accelerate_endpoint = true
          resp = client.list_objects_v2(bucket: 'mybucket')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3-accelerate.dualstack.amazonaws.com')
          expect(request.endpoint.query).to include('list-type=2')
          expect(request.endpoint.path).to eq('/')
        end

        # {
        #     id: "S3OperationAddressingPreferred",
        #     documentation: """
        #         S3 clients should resolve to the addressing style of the
        #         operation if defined on both the client and operation.""",
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.us-west-2.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "list-type=2",
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "path",
        #                 },
        #             },
        #             operation: {
        #                 s3: {
        #                     addressing_style: "virtual",
        #                 },
        #             },
        #         },
        #     },
        # },
        it 'S3OperationAddressingPreferred' do
          skip 'Operation addressing style is not supported'
        end
      end

      describe '#delete_object_tagging' do
        # {
        #     id: "S3EscapeObjectKeyInUriLabel",
        #     documentation: """
        #         S3 clients should escape special characters in Object Keys
        #         when the Object Key is used as a URI label binding.
        #     """,
        #     protocol: restXml,
        #     method: "DELETE",
        #     uri: "/my%20key.txt",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.us-west-2.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "tagging"
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #         Key: "my key.txt"
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #             },
        #         },
        #     },
        # },
        it 'S3EscapeObjectKeyInUriLabel' do
          client.config.region = 'us-west-2'
          resp = client.delete_object_tagging(bucket: 'mybucket', key: 'my key.txt')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3.us-west-2.amazonaws.com')
          expect(request.endpoint.query).to include('tagging')
          expect(request.endpoint.path).to eq('/my%20key.txt')
        end

        # {
        #     id: "S3EscapePathObjectKeyInUriLabel",
        #     documentation: """
        #         S3 clients should preserve an Object Key representing a path
        #         when the Object Key is used as a URI label binding, but still
        #         escape special characters.
        #     """,
        #     protocol: restXml,
        #     method: "DELETE",
        #     uri: "/foo/bar/my%20key.txt",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.us-west-2.amazonaws.com",
        #     body: "",
        #     queryParams: [
        #         "tagging"
        #     ],
        #     params: {
        #         Bucket: "mybucket",
        #         Key: "foo/bar/my key.txt"
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #             },
        #         },
        #     },
        # }
        it 'S3EscapePathObjectKeyInUriLabel' do
          client.config.region = 'us-west-2'
          resp = client.delete_object_tagging(bucket: 'mybucket', key: 'foo/bar/my key.txt')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3.us-west-2.amazonaws.com')
          expect(request.endpoint.query).to include('tagging')
          expect(request.endpoint.path).to eq('/foo/bar/my%20key.txt')
        end
      end

      describe '#get_object' do
        # {
        #     id: "S3PreservesLeadingDotSegmentInUriLabel",
        #     documentation: """
        #         S3 clients should not remove dot segments from request paths.
        #     """,
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/../key.txt",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.us-west-2.amazonaws.com",
        #     body: "",
        #     params: {
        #         Bucket: "mybucket",
        #         Key: "../key.txt"
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "virtual",
        #                 },
        #             },
        #         },
        #     },
        # },
        it 'S3PreservesLeadingDotSegmentInUriLabel' do
          client.config.region = 'us-west-2'
          resp = client.get_object(bucket: 'mybucket', key: '../key.txt')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3.us-west-2.amazonaws.com')
          expect(request.endpoint.path).to eq('/../key.txt')
        end

        # {
        #     id: "S3PreservesEmbeddedDotSegmentInUriLabel",
        #     documentation: """
        #         S3 clients should not remove dot segments from request paths.
        #     """,
        #     protocol: restXml,
        #     method: "GET",
        #     uri: "/foo/../key.txt",
        #     host: "s3.us-west-2.amazonaws.com",
        #     resolvedHost: "mybucket.s3.us-west-2.amazonaws.com",
        #     body: "",
        #     params: {
        #         Bucket: "mybucket",
        #         Key: "foo/../key.txt"
        #     },
        #     vendorParamsShape: aws.protocoltests.config#AwsConfig,
        #     vendorParams: {
        #         scopedConfig: {
        #             client: {
        #                 region: "us-west-2",
        #                 s3: {
        #                     addressing_style: "virtual",
        #                 },
        #             },
        #         },
        #     },
        # }
        it 'S3PreservesEmbeddedDotSegmentInUriLabel' do
          client.config.region = 'us-west-2'
          resp = client.get_object(bucket: 'mybucket', key: 'foo/../key.txt')
          request = resp.context.http_request
          expect(request.endpoint.host).to eq('mybucket.s3.us-west-2.amazonaws.com')
          expect(request.endpoint.path).to eq('/foo/../key.txt')
        end
      end

      describe '#get_bucket_location' do
        # {
        #     id: "GetBucketLocationUnwrappedOutput",
        #     documentation: """
        #         S3 clients should use the @s3UnwrappedXmlOutput trait to determine
        #         that the response shape is not wrapped in a restxml operation-level XML node.
        #     """,
        #     code: 200,
        #     body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<LocationConstraint xmlns=\"http://s3.amazonaws.com/doc/2006-03-01/\">us-west-2</LocationConstraint>",
        #     params: {
        #         "LocationConstraint": "us-west-2"
        #     },
        #     protocol: restXml
        # }
        it 'GetBucketLocationUnwrappedOutput' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<LocationConstraint xmlns=\"http://s3.amazonaws.com/doc/2006-03-01/\">us-west-2</LocationConstraint>"
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.get_bucket_location(bucket: 'mybucket')
          expect(resp.location_constraint).to eq('us-west-2')
        end
      end

      describe 'NoSuchBucket' do
        # {
        #     id: "S3OperationNoErrorWrappingResponse",
        #     documentation: """
        #         S3 operations return Error XML nodes unwrapped by
        #         the ErrorResponse XML node.
        #     """,
        #     protocol: restXml,
        #     code: 400,
        #     headers: {
        #         "Content-Type": "application/xml"
        #     },
        #     body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error>\n\t<Type>Sender</Type>\n\t<Code>NoSuchBucket</Code>\n</Error>",
        #     bodyMediaType: "application/xml",
        # }
        it 'S3OperationNoErrorWrappingResponse' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 400,
              headers: { 'Content-Type' => 'application/xml' },
              body: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error>\n\t<Type>Sender</Type>\n\t<Code>NoSuchBucket</Code>\n</Error>"
            )
            Seahorse::Client::Response.new(context: context)
          end
          expect {
            client.list_objects_v2(bucket: 'mybucket')
          }.to raise_error(Errors::NoSuchBucket)
        end
      end
    end
  end
end
