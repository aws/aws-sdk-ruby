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
  class SimpleDB
    describe Client do

      let(:test_credentials) do
        { :access_key_id => "access key id",
          :secret_access_key => "secret access key" }
      end

      let(:http_handler) { double("http handler",
                                  :handle => true,
                                  :handle_async => true) }

      let(:client) do
        Client.new(test_credentials).with_http_handler(http_handler)
      end

      def has_param? param_name, value = nil
        client.params
      end

      it 'should be accessible from the configuration' do
        config = AWS.config.with(
          :access_key_id => 'foo',
          :secret_access_key => 'bar'
        )
        config.simple_db_client.should be_a(SimpleDB::Client)
      end

      it_should_behave_like "an aws client", :list_domains

      context '::valid_domain_name?' do

        it 'returns true for good names' do
          client.valid_domain_name?('sample').should be_true
        end

        it 'returns false for names shorter than 3 chars' do
          client.valid_domain_name?('ab').should be_false
        end

        it 'returns false for names longer than 255 chars' do
          client.valid_domain_name?('a' * 256).should be_false
        end

      end

      shared_examples_for "a simple db request" do

        it 'should have the correct action param' do
          action = nil
          client.with_http_handler {|req, resp|
            action = req.body.match(/Action=(\w+)\b/)[1]
          }.send(method, opts)
          action.should == method.to_s.split(/_/).collect{|s| s.capitalize }.join
        end

        it 'should have version param' do
          api_version = nil
          client.with_http_handler {|req, resp|
            api_version = req.body.match(/Version=(#{Client::API_VERSION})\b/)[1]
          }.send(method, opts)
          api_version.should == Client::API_VERSION
        end

        it 'should have a timestamp param' do
          regex = '\d{4}-\d\d-\d\dT\d\d%3A\d\d%3A\d\dZ'
          timestamp = nil
          client.with_http_handler {|req, resp|
            timestamp = req.body.match(/Timestamp=(#{regex})/)[1]
          }.send(method, opts)
          timestamp.should match(/^#{regex}$/)
        end

        it 'should be a post request' do
          http_method = nil
          client.with_http_handler {|req, resp|
            http_method = req.http_method
          }.send(method, opts)
          http_method.should == 'POST'
        end

        it 'should have a form url encoded content type' do
          content_type = nil
          client.with_http_handler {|req, resp|
            content_type = req.headers['Content-Type']
          }.send(method, opts)
          content_type.should == 'application/x-www-form-urlencoded; charset=utf-8'
        end

        it 'should return an object that response to response_metadata' do
          a_client = client.with_http_handler do |req, resp|
            resp.body = <<-XML.strip
              <GenericResponse xmlns="http://sdb.amazonaws.com/doc/2009-04-15/">
                <ResponseMetadata>
                  <RequestId>request-id</RequestId>
                  <BoxUsage>0.012345</BoxUsage>
                </ResponseMetadata>
              </GenericResponse>
            XML
          end
          resp = a_client.send(method, opts)
          resp.response_metadata.request_id.should == 'request-id'
          resp.response_metadata.box_usage.should == 0.012345
        end

        context 'exceptions' do

          before(:each) do
            Kernel.stub(:sleep)
            http_handler.stub(:handle) do |req, resp|
              resp.status = status_code
              resp.body = error_xml
            end
          end

          let(:error_xml) { <<-XML.strip }
            <Response>
              <Errors>
                <Error>
                  <Code>DuplicateItemName</Code>
                  <Message>Something bad happened</Message>
                  <BoxUsage>0.0000071759</BoxUsage>
                </Error>
              </Errors>
              <RequestID>75297cee-3e48-9379-5d07-1769be265c2d</RequestID>
            </Response>
          XML

          let(:status_code) { 400 }

          it 'should raise modeled exceptions for unsuccessful requests' do
            lambda { client.send(method, opts) }.
              should raise_error(Errors::DuplicateItemName,
                                 "Something bad happened")
          end

        end

      end

      shared_examples_for "requires a domain name" do

        it 'requires a domain name' do
          lambda {
            opts.delete(:domain_name)
            client.send(method, opts)
          }.should raise_error(ArgumentError, /domain_name/)
        end

        it 'should have the domain name as a param' do
          name_param = nil
          client.with_http_handler { |req, resp|
            name_param = req.body.match(/DomainName=(\w+)\b/)[1]
          }.send(method, opts.merge(:domain_name => 'somedomainname'))
          name_param.should == 'somedomainname'
        end

      end

      context '#create_domain' do

        let(:method) { :create_domain }

        let(:opts) { { :domain_name => 'sample-domain' } }

        it_should_behave_like "an aws http request", 'POST'

        it_should_behave_like "a simple db request"

        it_should_behave_like "requires a domain name"

      end

      context '#list_domains' do

        let(:method) { :list_domains }

        let(:opts) { {} }

        it_should_behave_like "an aws http request", 'POST'

        it_should_behave_like "a simple db request"

        it 'should accept a limit and pass it as a request param' do
          limit = nil
          client.with_http_handler { |req, resp|
            limit = req.body.match(/MaxNumberOfDomains=(\w+)\b/)[1]
          }.list_domains(:max_number_of_domains => 10)
          limit.should == "10"
        end

        it 'should accept a next_token and pass it as a request param' do
          next_token = nil
          client.with_http_handler { |req, resp|
            next_token = req.body.match(/NextToken=(\w+)\b/)[1]
          }.list_domains(:next_token => 'token')
          next_token.should == 'token'
        end

        let(:response_body) { <<-XML }
          <ListDomainsResponse xmlns="http://sdb.amazonaws.com/doc/2009-04-15/">
            <ListDomainsResult>
              <DomainName>foo</DomainName>
              <DomainName>bar</DomainName>
              <DomainName>yuck</DomainName>
            </ListDomainsResult>
            <ResponseMetadata>
              <RequestId>a3e1df08-8227-2dd2-b473-50c6ae934e13</RequestId>
              <BoxUsage>0.0000071759</BoxUsage>
            </ResponseMetadata>
          </ListDomainsResponse>
        XML

        let(:response) {
          body = response_body
          client.with_http_handler{|req, resp| resp.body = body }.list_domains
        }

        context 'response#domain_names' do

          it 'should be an array of domain name strings' do
            response.domain_names.should == %w(foo bar yuck)
          end

        end

      end

      context '#delete_domain' do

        let(:method) { :delete_domain }

        let(:opts) { { :domain_name => 'sample-domain' } }

        it_should_behave_like "an aws http request", 'POST'

        it_should_behave_like "a simple db request"

        it_should_behave_like "requires a domain name"

      end

      context '#domain_metadata' do

        let(:method) { :domain_metadata }

        let(:opts) { { :domain_name => 'sample-domain' } }

        it_should_behave_like "an aws http request", 'POST'

        it_should_behave_like "a simple db request"

        it_should_behave_like "requires a domain name"

        let(:response_body) { <<-XML.strip }
          <?xml version="1.0"?>
          <DomainMetadataResponse xmlns="http://sdb.amazonaws.com/doc/2009-04-15/">
            <DomainMetadataResult>
              <ItemCount>1</ItemCount>
              <ItemNamesSizeBytes>2</ItemNamesSizeBytes>
              <AttributeNameCount>3</AttributeNameCount>
              <AttributeNamesSizeBytes>4</AttributeNamesSizeBytes>
              <AttributeValueCount>5</AttributeValueCount>
              <AttributeValuesSizeBytes>6</AttributeValuesSizeBytes>
              <Timestamp>1234567890</Timestamp>
            </DomainMetadataResult>
            <ResponseMetadata>
              <RequestId>request_id</RequestId>
              <BoxUsage>0.012345</BoxUsage>
            </ResponseMetadata>
          </DomainMetadataResponse>
        XML

        let(:response) {
          body = response_body
          client.with_http_handler { |req, resp|
            resp.body = body
          }.domain_metadata(:domain_name => 'sample-domain')
        }

        it 'should expose ItemCount as an integer' do
          response.item_count.should == 1
        end

        it 'should expose ItemNamesSizeBytes as an integer' do
          response.item_names_size_bytes.should == 2
        end

        it 'should expose AttributeNameCount as an integer' do
          response.attribute_name_count.should == 3
        end

        it 'should expose AttributeNamesSizeBytes as an integer' do
          response.attribute_names_size_bytes.should == 4
        end

        it 'should expose AttributeValueCount as an integer' do
          response.attribute_value_count.should == 5
        end

        it 'should expose AttributeValuesSizeBytes as an integer' do
          response.attribute_values_size_bytes.should == 6
        end

        it 'should expose Timestamp as an integer', :tagged => true do
          response.timestamp.should == 1234567890
        end

      end

    end
  end
end
