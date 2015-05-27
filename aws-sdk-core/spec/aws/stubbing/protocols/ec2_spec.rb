require 'spec_helper'
require 'rexml/document'

module Aws
  module Stubbing
    module Protocols
      describe EC2 do
        describe '#stub_response' do

          def normalize(xml)
            result = ''
            REXML::Document.new(xml).write(result, 2)
            result.strip
          end

          let(:api) { Aws::EC2::Client.api }

          let(:operation) { api.operation(:describe_instances) }

          it 'returns a stubbed http response' do
            resp = EC2.new.stub_response(api, operation, {})
            expect(resp).to be_kind_of(Seahorse::Client::Http::Response)
            expect(resp.status_code).to eq(200)
          end

          it 'populates the content-type header' do
            resp = EC2.new.stub_response(api, operation, {})
            expect(resp.headers['content-type']).to eq('text/xml;charset=UTF-8')
            expect(resp.headers['server']).to eq('AmazonEC2')
          end

          it 'populates the body with the stub data' do
            now = Time.now
            data = {
              reservations: [
                {
                  reservation_id: 'reservation-id',
                  owner_id: 'owner-id',
                  groups: [
                    {
                      group_id: 'group-id',
                      group_name: 'group-name',
                    }
                  ],
                  instances: [
                    {
                      instance_id: 'i-12345678',
                      image_id: 'ami-12345678',
                      state: {
                        code: 16,
                        name: 'running',
                      },
                      tags: [
                        { key: 'Abc', value: 'mno' },
                        { key: 'Name', value: '' }
                      ]
                    }
                  ]
                }
              ]
            }
            resp = EC2.new.stub_response(api, operation, data)
            expect(normalize(resp.body.string)).to eq(normalize(<<-XML))
              <DescribeInstancesResponse xmlns="http://ec2.amazonaws.com/doc/2015-04-15/">
                  <requestId>stubbed-request-id</requestId>
                  <reservationSet>
                      <item>
                          <reservationId>reservation-id</reservationId>
                          <ownerId>owner-id</ownerId>
                          <groupSet>
                              <item>
                                  <groupName>group-name</groupName>
                                  <groupId>group-id</groupId>
                              </item>
                          </groupSet>
                          <instancesSet>
                              <item>
                                  <instanceId>i-12345678</instanceId>
                                  <imageId>ami-12345678</imageId>
                                  <instanceState>
                                      <code>16</code>
                                      <name>running</name>
                                  </instanceState>
                                  <tagSet>
                                      <item>
                                          <key>Abc</key>
                                          <value>mno</value>
                                      </item>
                                      <item>
                                          <key>Name</key>
                                          <value/>
                                      </item>
                                  </tagSet>
                              </item>
                          </instancesSet>
                      </item>
                  </reservationSet>
              </DescribeInstancesResponse>
            XML
          end

        end
      end
    end
  end
end
