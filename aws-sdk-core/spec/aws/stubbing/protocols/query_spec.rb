require 'spec_helper'
require 'rexml/document'

module Aws
  module Stubbing
    module Protocols
      describe Query do
        describe '#stub_data' do

          def normalize(xml)
            result = ''
            REXML::Document.new(xml).write(result, 2)
            result.strip
          end

          let(:api) { IAM::Client.api }

          let(:operation) { api.operation(:list_users) }

          it 'returns a stubbed http response' do
            resp = Query.new.stub_data(api, operation, {})
            expect(resp).to be_kind_of(Seahorse::Client::Http::Response)
            expect(resp.status_code).to eq(200)
          end

          it 'populates the body with the stub data' do
            now = Time.now
            data = {
              is_truncated: false,
              users: [
                {
                  path: '/',
                  arn: 'arn:aws:iam::123456789012:user/name',
                  user_name: 'name',
                  user_id: 'user-id',
                  create_date: now,
                }
              ]
            }
            resp = Query.new.stub_data(api, operation, data)
            expect(normalize(resp.body.string)).to eq(normalize(<<-XML))
              <ListUsersResponse xmlns="https://iam.amazonaws.com/doc/2010-05-08/">
                <ListUsersResult>
                  <Users>
                    <member>
                      <Path>/</Path>
                      <UserName>name</UserName>
                      <UserId>user-id</UserId>
                      <Arn>arn:aws:iam::123456789012:user/name</Arn>
                      <CreateDate>#{now.utc.iso8601}</CreateDate>
                    </member>
                  </Users>
                  <IsTruncated>false</IsTruncated>
                </ListUsersResult>
                <ResponseMetadata>
                  <RequestId>stubbed-request-id</RequestId>
                </ResponseMetadata>
              </ListUsersResponse>
            XML
          end

          it 'can stub errors' do
            resp = Query.new.stub_error('error-code')
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
