# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Xml
    describe ErrorHandler do

      let(:cloudfront) {
        ApiHelper.sample_service(
          api: JSON.load(File.read(File.expand_path('../../../fixtures/apis/cloudfront.json', __FILE__)))
        )::Client.new(
          region: 'us-west-2',
          retry_limit: 0,
          validate_params: false,
          credentials: Aws::Credentials.new('akid', 'secret')
        )
      }

      let(:route53) {
        ApiHelper.sample_service(
          api: JSON.load(File.read(File.expand_path('../../../fixtures/apis/route53.json', __FILE__)))
        )::Client.new(
          region: 'us-west-2',
          retry_limit: 0,
          validate_params: false,
          credentials: Aws::Credentials.new('akid', 'secret')
        )
      }

      let(:ec2) {
        ApiHelper.sample_ec2::Client.new(
          region: 'us-west-2',
          retry_limit: 0,
          validate_params: false,
          credentials: Aws::Credentials.new('akid', 'secret')
        )
      }

      let(:sns) {
        ApiHelper.sample_service(
          api: JSON.load(File.read(File.expand_path('../../../fixtures/apis/sns.json', __FILE__)))
        )::Client.new(
          region: 'us-west-2',
          retry_limit: 0,
          validate_params: false,
          credentials: Aws::Credentials.new('akid', 'secret')
        )
      }

      let(:ec2_error) { <<-XML.strip }
<Response>
  <Errors>
    <Error>
      <Code>InvalidRequest</Code>
      <Message>Required parameter 'AvailabilityZone' is not provided.</Message>
    </Error>
  </Errors>
  <RequestId>549b7a4f-088e-41f1-8db0-905f3c3e0e03</RequestId>
</Response>
      XML

      let(:query_error) { <<-XML.strip }
<ErrorResponse xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
  <Error>
    <Type>Sender</Type>
    <Code>InvalidParameter</Code>
    <Message>Invalid parameter: TopicArn Reason: no value for required parameter</Message>
  </Error>
  <RequestId>e9e9cfe5-9023-5f6f-a9fc-9f817a196bcd</RequestId>
</ErrorResponse>
      XML

      let(:unmodeled_error) { <<-XML.strip }
<?xml version="1.0"?>
<ErrorResponse xmlns="http://cloudfront.amazonaws.com/doc/2018-11-05/">
  <Error>
    <Type>Sender</Type>
    <Code>MalformedXML</Code>
    <Message>1 validation error detected: Value null at 'cloudFrontOriginAccessIdentityConfig' failed to satisfy constraint: Member must not be null</Message>
  </Error>
  <RequestId>b25f48e8-84fd-11e6-80d9-574e0c4664cb</RequestId>
</ErrorResponse>
      XML

      let(:empty_struct_error) { <<-XML.strip }
<?xml version="1.0"?>
<ErrorResponse xmlns="http://cloudfront.amazonaws.com/doc/2016-09-07/">
  <Error>
    <Type>Sender</Type>
    <Code>AccessDenied</Code>
    <Message>foo</Message>
  </Error>
  <RequestId>b25f48e8-84fd-11e6-80d9-574e0c4664cb</RequestId>
</ErrorResponse>
      XML

      let(:route53_error) { <<-XML.strip }
<?xml version="1.0" encoding="UTF-8"?>
<InvalidChangeBatch xmlns="https://route53.amazonaws.com/doc/2013-04-01/">
  <Messages>
    <Message>Tried to create resource record set duplicate.example.com. type A, but it already exists</Message>
  </Messages>
</InvalidChangeBatch>
      XML

      it 'extracts code and message for empty struct errors' do
        stub_request(:post, 'https://cloudfront.amazonaws.com/2018-11-05/distribution').
          to_return(:status => 400, :body => empty_struct_error)
        expect {
          cloudfront.create_distribution(
            distribution_config: {}
          )
        }.to raise_error { |error|
          expect(error.code).to eq('AccessDenied')
          expect(error.message).to eq('foo')
          expect(error.context[:request_id]).to eq('b25f48e8-84fd-11e6-80d9-574e0c4664cb')
        }
      end

      it 'extracts code and message for unmodeled errors' do
        stub_request(:post, 'https://cloudfront.amazonaws.com/2018-11-05/origin-access-identity/cloudfront').
          to_return(:status => 400, :body => unmodeled_error)
        msg = '1 validation error detected: Value null at'\
              ' \'cloudFrontOriginAccessIdentityConfig\' failed to satisfy'\
              ' constraint: Member must not be null'
        expect {
          cloudfront.create_cloud_front_origin_access_identity(
            cloud_front_origin_access_identity_config: {
              caller_reference: 'foo',
              comment: ''
            }
          )
        }.to raise_error { |error|
          expect(error.code).to eq('MalformedXML')
          expect(error.message).to eq(msg)
          expect(error.context[:request_id]).to eq('b25f48e8-84fd-11e6-80d9-574e0c4664cb')
        }
      end

      it 'handles route53 error format with message' do
        stub_request(:post, 'https://route53.amazonaws.com/2013-04-01/hostedzone/ResourceId/rrset/').
          to_return(:status => 400, :body => route53_error)
        expect {
          route53.change_resource_record_sets(hosted_zone_id: 'ResourceId')
        }.to raise_error { |error|
          expected_msg =
            'Tried to create resource record set '\
            'duplicate.example.com. type A, but it already exists'
          expect(error.message).to eq(expected_msg)
        }
      end

      it 'supports unmodeled `ec2-query` error' do
        stub_request(:post, 'https://ec2.us-west-2.amazonaws.com/').
          to_return(:status => 400, :body => ec2_error)
        expect {
          ec2.create_subnet
        }.to raise_error { |error|
          expect(error.code).to eq('InvalidRequest')
          expect(error.message).to eq('Required parameter \'AvailabilityZone\' is not provided.')
          expect(error.context[:request_id]).to eq('549b7a4f-088e-41f1-8db0-905f3c3e0e03')
        }
      end

      it 'supports modeled query error' do
        stub_request(:post, 'https://sns.us-west-2.amazonaws.com/').
          to_return(:status => 400, :body => query_error)
        expect {
          sns.create_topic
        }.to raise_error { |error|
          expect(error.code).to eq('InvalidParameter')
          expect(error.message).to eq('Invalid parameter: TopicArn Reason: no value for required parameter')
          expect(error.context[:request_id]).to eq('e9e9cfe5-9023-5f6f-a9fc-9f817a196bcd')
        }
      end
    end
  end
end
