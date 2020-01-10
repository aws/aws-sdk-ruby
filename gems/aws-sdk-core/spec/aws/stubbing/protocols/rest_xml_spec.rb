require_relative '../../../spec_helper'
require 'json'

module Aws
  module Stubbing
    module Protocols
      describe RestXml do
        describe '#stub_data' do

          def normalize(xml)
            result = ''
            REXML::Document.new(xml).write(result, 2)
            result.strip
          end

          let(:api) { ApiHelper.sample_rest_xml::Client.api }

          let(:operation) { api.operation(:list_buckets) }

          before(:each) do
            api.metadata['xmlNamespace'] = 'http://xmlns'
          end

          it 'returns a stubbed http response' do
            resp = RestXml.new.stub_data(api, operation, {})
            expect(resp).to be_kind_of(Seahorse::Client::Http::Response)
            expect(resp.status_code).to eq(200)
          end

          it 'populates the expected headers' do
            resp = RestXml.new.stub_data(api, operation, {})
            expect(resp.headers.to_h).to eq({
              "x-amzn-requestid" => "stubbed-request-id",
            })
          end

          it 'populates the body with the stub data' do
            now = Time.now
            data = {
              buckets: [
                {
                  name: 'aws-sdk',
                  creation_date: now,
                }
              ],
              owner: {
                display_name: 'owner-name',
                id: 'owner-id',
              }
            }
            resp = RestXml.new.stub_data(api, operation, data)
            expect(normalize(resp.body.string)).to eq(normalize(<<-XML))
              <ListBucketsResult xmlns="http://xmlns">
                <Buckets>
                  <Bucket>
                    <Name>aws-sdk</Name>
                    <CreationDate>#{now.utc.iso8601}</CreationDate>
                  </Bucket>
                </Buckets>
                <Owner>
                  <DisplayName>owner-name</DisplayName>
                  <ID>owner-id</ID>
                </Owner>
              </ListBucketsResult>
            XML
          end

          it 'supports stubbing streaming response bodies' do
            data = StringIO.new('DATA')
            params = {
              body: data,
              etag: 'etag-value',
            }
            operation = api.operation(:get_object)
            resp = RestXml.new.stub_data(api, operation, params)
            expect(resp.status_code).to eq(200)
            expect(resp.headers['ETag']).to eq('etag-value')
            expect(resp.body).to be(data)
            expect(resp.body.read).to eq('DATA')
          end

          it 'supports structure payloads' do
            params = {
              policy: 'policy-document'
            }
            operation = api.operation(:get_bucket_policy)
            resp = RestXml.new.stub_data(api, operation, params)
            expect(resp.status_code).to eq(200)
            expect(normalize(resp.body.string)).to eq(normalize(<<-JSON))
              {
                "Policy": "policy-document"
              }
            JSON
          end

          it 'can stub errors' do
            resp = RestXml.new.stub_error('error-code')
            expect(normalize(resp.body.string)).to eq(normalize(<<-XML))
              <ErrorResponse>
                <Error>
                  <Code>error-code</Code>
                  <Message>stubbed-response-error-message</Message>
                </Error>
              </ErrorResponse>
            XML
          end

        end
      end
    end
  end
end
