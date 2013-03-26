# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module AWS
  class Route53
    describe Client do

      let(:credentials) {{
        :access_key_id => 'akid',
        :secret_access_key => 'secret'
      }}

      let(:handler) { double('handler', :handle => nil) }

      let(:config) {
        AWS.config.with(credentials.merge(:http_handler => handler))
      }

      let(:client) { config.route_53_client }

      let(:now) { Time.now }

      let(:namespace) {
        'xmlns="https://route53.amazonaws.com/doc/2012-12-12/"'
      }

      context '#change_resource_record_sets' do

        let(:options) {{
          :hosted_zone_id => "zone-id",
          :change_batch => {
            :changes => [
              {
                :action => 'CREATE',
                :resource_record_set => {
                  # order of hash keys purposefully jumbled to test
                  # xml member ordering
                  :ttl => 3600,
                  :resource_records => [
                    { :value => 'value1' },
                  ],
                  :type => 'CNAME',
                  :name => 'sub.domain.com',
                },
              },
            ]
          }
        }}

        it 'makes a POST request' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("POST")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id/rrset/')
            req.body.xml_cleanup.should eq(<<-XML.xml_cleanup)
<ChangeResourceRecordSetsRequest #{namespace}>
  <ChangeBatch>
    <Changes>
      <Change>
        <Action>CREATE</Action>
        <ResourceRecordSet>
          <Name>sub.domain.com</Name>
          <Type>CNAME</Type>
          <TTL>3600</TTL>
          <ResourceRecords>
            <ResourceRecord>
              <Value>value1</Value>
            </ResourceRecord>
          </ResourceRecords>
        </ResourceRecordSet>
      </Change>
    </Changes>
  </ChangeBatch>
</ChangeResourceRecordSetsRequest>
XML
          end
          client.change_resource_record_sets(options)
        end

        it 'strips the /hostedzone/ prefix from the :hosted_zone_id param' do
          options[:hosted_zone_id] = '/hostedzone/zone-id'
          handler.should_receive(:handle) do |req,resp|
            req.uri.should eq('/2012-12-12/hostedzone/zone-id/rrset/')
          end
          client.change_resource_record_sets(options)
        end

        it 'parses the xml response' do

          handler.should_receive(:handle) do |req,resp|
            resp.status = 200
            resp.body = <<-XML.strip
              <?xml version="1.0"?>
              <ChangeResourceRecordSetsResponse #{namespace}>
                <ChangeInfo>
                  <Id>/change/change-id</Id>
                  <Status>PENDING</Status>
                  <SubmittedAt>#{now.iso8601}</SubmittedAt>
                </ChangeInfo>
              </ChangeResourceRecordSetsResponse>
            XML
          end

          resp = client.change_resource_record_sets(options)
          resp.data.should eq({
            :change_info => {
              :id => "/change/change-id",
              :status => "PENDING",
              :submitted_at => Time.parse(now.iso8601),
            },
          })

        end

      end

      context '#create_hosted_zone' do

        let(:options) {{
          :caller_reference => 'CALLER-REF', # purposefully ordered these
          :name => 'ZONE-NAME',              # backwards to test xml ordering
          :hosted_zone_config => {
            :comment => 'OPTIONAL-COMMENT',
          },
        }}

        it 'makes a POST request with an XML body', :ruby => '1.9' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("POST")
            req.uri.should eq('/2012-12-12/hostedzone')
            req.body.should eq(<<-XML.strip)
<CreateHostedZoneRequest #{namespace}>
  <Name>ZONE-NAME</Name>
  <CallerReference>CALLER-REF</CallerReference>
  <HostedZoneConfig>
    <Comment>OPTIONAL-COMMENT</Comment>
  </HostedZoneConfig>
</CreateHostedZoneRequest>
XML
          end
          client.create_hosted_zone(options)
        end

        it 'does not require the comment param', :ruby => '1.9' do
          handler.should_receive(:handle) do |req,resp|
            req.body.should eq(<<-XML.strip)
<CreateHostedZoneRequest #{namespace}>
  <Name>ZONE-NAME</Name>
  <CallerReference>CALLER-REF</CallerReference>
</CreateHostedZoneRequest>
XML
          end
          options.delete(:hosted_zone_config)
          client.create_hosted_zone(options)
        end

        it 'parses the XML response and headers' do
          handler.should_receive(:handle) do |req,resp|
            resp.status = 201
            resp.headers['location'] = 'location-header-value'
            resp.body = <<-XML.strip
              <?xml version="1.0"?>
              <CreateHostedZoneResponse #{namespace}>
                <HostedZone>
                  <Id>/hostedzone/ABCDEFGHIJKLMN</Id>
                  <Name>domain.com.</Name>
                  <CallerReference>caller-ref</CallerReference>
                  <Config>
                    <Comment>abc</Comment>
                  </Config>
                  <ResourceRecordSetCount>2</ResourceRecordSetCount>
                </HostedZone>
                <ChangeInfo>
                  <Id>/change/C2YOKTS3TOHM1E</Id>
                  <Status>PENDING</Status>
                  <SubmittedAt>#{now.iso8601}</SubmittedAt>
                </ChangeInfo>
                <DelegationSet>
                  <NameServers>
                    <NameServer>ns-1861.awsdns-40.co.uk</NameServer>
                    <NameServer>ns-143.awsdns-17.com</NameServer>
                    <NameServer>ns-550.awsdns-04.net</NameServer>
                    <NameServer>ns-1418.awsdns-49.org</NameServer>
                  </NameServers>
                </DelegationSet>
              </CreateHostedZoneResponse>
            XML
          end

          resp = client.create_hosted_zone(options)
          resp.data.should eq({
            :hosted_zone => {
              :id => "/hostedzone/ABCDEFGHIJKLMN",
              :name => "domain.com.",
              :caller_reference => "caller-ref",
              :config => { :comment => "abc" },
              :resource_record_set_count => 2
            },
            :change_info => {
              :id => "/change/C2YOKTS3TOHM1E",
              :status => "PENDING",
              :submitted_at => Time.parse(now.iso8601),
            },
            :delegation_set => {
              :name_servers => [
                "ns-1861.awsdns-40.co.uk",
                "ns-143.awsdns-17.com",
                "ns-550.awsdns-04.net",
                "ns-1418.awsdns-49.org"
              ],
            },
            :location => 'location-header-value',
          })
        end

      end

      context '#delete_hosted_zone' do

        it 'makes a DELETE request' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("DELETE")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id')
            req.body.should eq(nil)
          end
          client.delete_hosted_zone(:id => 'zone-id')
        end

        it 'strips the /hosted/ prefix from the zone id' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("DELETE")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id')
            req.body.should eq(nil)
          end
          client.delete_hosted_zone(:id => '/hostedzone/zone-id')
        end

        it 'parsers the response' do
          handler.should_receive(:handle) do |req,resp|
            resp.status = 200
            resp.body = <<-XML.strip
              <?xml version="1.0"?>
              <DeleteHostedZoneResponse #{namespace}>
                <ChangeInfo>
                  <Id>/change/ABCXYZMNO</Id>
                  <Status>PENDING</Status>
                  <SubmittedAt>#{now.iso8601}</SubmittedAt>
                </ChangeInfo>
              </DeleteHostedZoneResponse>
            XML
          end

          resp = client.delete_hosted_zone(:id => 'ABCXYZMNO')
          resp.data.should eq({
            :change_info=> {
              :id=> "/change/ABCXYZMNO",
              :status => "PENDING",
              :submitted_at =>  Time.parse(now.iso8601),
            }
          })
        end

      end

      context '#get_change' do

        it 'makes a GET request' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/change/change-id')
            req.body.should eq(nil)
          end
          client.get_change(:id => 'change-id')
        end

        it 'strips the /change/ prefix from the zone id' do
          handler.should_receive(:handle) do |req,resp|
            req.uri.should eq('/2012-12-12/change/change-id')
          end
          client.get_change(:id => '/change/change-id')
        end

        it 'parses the response' do

          handler.should_receive(:handle) do |req,resp|
            resp.status = 200
            resp.body = <<-XML.strip
              <?xml version="1.0"?>
              <GetChangeResponse #{namespace}>
                <ChangeInfo>
                  <Id>/change/C1LGM5V4D2F38O</Id>
                  <Status>PENDING</Status>
                  <SubmittedAt>#{now.iso8601}</SubmittedAt>
                </ChangeInfo>
              </GetChangeResponse>
            XML
          end

          resp = client.get_change :id => 'change-id'
          resp.data.should eq({
            :change_info => {
              :id => "/change/C1LGM5V4D2F38O",
              :status => "PENDING",
              :submitted_at => Time.parse(now.iso8601),
            },
          })

        end

      end

      context '#get_hosted_zone' do

        it 'makes a GET request' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id')
            req.body.should eq(nil)
          end
          client.get_hosted_zone(:id => 'zone-id')
        end

        it 'strips the /hostedzone/ prefix from the id' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id')
            req.body.should eq(nil)
          end
          client.get_hosted_zone(:id => '/hostedzone/zone-id')
        end

      end

      context '#list_hosted_zones' do

        it 'makes a GET request' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone')
            req.body.should eq(nil)
          end
          client.list_hosted_zones
        end

        it 'accepts :marker' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone?marker=abc')
            req.body.should eq(nil)
          end
          client.list_hosted_zones :marker => 'abc'
        end

        it 'accepts :max_items' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone?maxitems=123')
            req.body.should eq(nil)
          end
          client.list_hosted_zones :max_items => 123
        end

        it 'accepts :marker and :max_items' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone?marker=abc&maxitems=123')
            req.body.should eq(nil)
          end
          client.list_hosted_zones :marker => 'abc', :max_items => 123
        end

        it 'parses the XML response and headers' do
          handler.should_receive(:handle) do |req,resp|
            resp.status = 200
            resp.body = <<-XML.strip
              <?xml version="1.0"?>
              <ListHostedZonesResponse #{namespace}>
                <HostedZones>
                  <HostedZone>
                    <Id>/hostedzone/ABCMNOXYZ</Id>
                    <Name>foo.com.</Name>
                    <CallerReference>1233</CallerReference>
                    <Config/>
                    <ResourceRecordSetCount>2</ResourceRecordSetCount>
                  </HostedZone>
                </HostedZones>
                <IsTruncated>false</IsTruncated>
                <MaxItems>100</MaxItems>
              </ListHostedZonesResponse>"
            XML
          end

          resp = client.list_hosted_zones
          resp.data.should eq({
            :hosted_zones => [{
              :id => '/hostedzone/ABCMNOXYZ',
              :name => 'foo.com.',
              :caller_reference => '1233',
              :config => nil,
              :resource_record_set_count => 2,
            }],
            :is_truncated => false,
            :max_items => 100,
          })

        end

      end

      context '#list_resource_record_sets' do

        let(:options) {{ :hosted_zone_id => 'zone-id' }}

        it 'makes a GET request' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id/rrset')
            req.body.should eq(nil)
          end
          client.list_resource_record_sets(options)
        end

        it 'removes the /hostedzone/ prefix' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id/rrset')
            req.body.should eq(nil)
          end
          options[:hosted_zone_id] = '/hostedzone/zone-id'
          client.list_resource_record_sets(options)
        end

        it 'accepts options' do
          handler.should_receive(:handle) do |req,resp|
            req.http_method.should eq("GET")
            req.uri.should eq('/2012-12-12/hostedzone/zone-id/rrset?type=A&name=foo.com.&identifier=offset&maxitems=50')
            req.body.should eq(nil)
          end
          options[:start_record_type] = 'A'
          options[:start_record_name] = 'foo.com.'
          options[:start_record_identifier] = 'offset'
          options[:max_items] = 50
          client.list_resource_record_sets(options)
        end

        it 'parses the response' do
          handler.should_receive(:handle) do |req,resp|
            resp.status = 200
            resp.body = <<-XML.strip
              <?xml version="1.0"?>\n
              <ListResourceRecordSetsResponse #{namespace}>
                <ResourceRecordSets>
                  <ResourceRecordSet>
                    <Name>domain4.com.</Name>
                    <Type>SOA</Type>
                    <TTL>900</TTL>
                    <ResourceRecords>
                      <ResourceRecord>
                        <Value>string-value</Value>
                        </ResourceRecord>
                      </ResourceRecords>
                    </ResourceRecordSet>
                    <ResourceRecordSet>
                      <Name>foo.domain4.com.</Name>
                      <Type>CNAME</Type>
                      <TTL>3600</TTL>
                      <ResourceRecords>
                        <ResourceRecord>
                          <Value>value1</Value>
                        </ResourceRecord>
                      </ResourceRecords>
                    </ResourceRecordSet>
                  </ResourceRecordSets>
                <IsTruncated>false</IsTruncated>
                <MaxItems>100</MaxItems>
              </ListResourceRecordSetsResponse>
            XML
          end

          resp = client.list_resource_record_sets :hosted_zone_id => 'zone-id'
          resp.data.should eq({
            :resource_record_sets => [
              {
                :name => "domain4.com.",
                :type => "SOA",
                :ttl => 900,
                :resource_records => [{ :value => "string-value" }],
              },
              {
                :resource_records => [{ :value => "value1" }],
                :name => "foo.domain4.com.",
                :type => "CNAME",
                :ttl => 3600
              }
            ],
            :is_truncated => false,
            :max_items => 100,
          })

        end

      end

    end
  end
end
