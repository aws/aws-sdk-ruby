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
  module Core
    describe RESTRequestBuilder do

      let(:namespace) { 'http://namespace.com/doc/' }

      let(:inputs) {{}}

      let(:http) {{
        :verb => 'PUT',
        :uri => '/uri',
      }}

      let(:operation) {{
        :name => 'OperationName',
        :http => http,
        :inputs => inputs,
      }}

      let(:options) {{}}

      let(:handler) {
        RESTRequestBuilder.new(operation,
          :xmlnamespace => namespace,
          :format => :xml)
      }

      let(:request) {
        req = Http::Request.new
        handler.populate_request(req, options)
        req
      }

      context '#populate_request' do

        context 'request#http_verb' do

          it 'should be the verb from the operation http verb' do
            http[:verb] = 'DELETE'
            request.http_method.should == 'DELETE'
          end

        end

        context 'request#uri' do

          it 'populates simple uri strings without replacements' do
            http[:uri] = '/uri/path'
            request.uri.should == '/uri/path'
          end

          it 'makes simple subsitutions' do
            http[:uri] = '/uri/:id'
            inputs[:id] = { :type => :string, :required => true }
            options[:id] = 'abc'
            request.uri.should == '/uri/abc'
          end

          it 'can make substitutions in the querystring' do
            http[:uri] = '/uri/path?id=:id'
            inputs[:id] = { :type => :string }
            options[:id] = 'VALUE'
            request.uri.should == '/uri/path?id=VALUE'
          end

          it 'can make multiple substitutions' do

            http[:uri] = '/id/:id/name/:name?age=:age&foo=:foo'

            inputs.merge!(
              :id => { :type => :string, :required => true },
              :name => { :type => :string, :required => true },
              :age => { :type => :integer },
              :foo => { :type => :string })

            options.merge!(
              :id => 'abc',
              :name => 'JohnDoe',
              :age => 40,
              :foo => 'bar')

            request.uri.should == '/id/abc/name/JohnDoe?age=40&foo=bar'

          end

          it 'uri-encodes substitutions' do

            http[:uri] = '/abc/:abc/xyz/:xyz?mno=:mno&qrs=:qrs'

            inputs.merge!(
              :abc => { :type => :string, :required => true },
              :xyz => { :type => :string, :required => true },
              :mno => { :type => :string },
              :qrs => { :type => :string })

            options.merge!(
              :abc => 'abc abc&abc',
              :xyz => 'xy=z',
              :mno => "mno\nmno",
              :qrs => 'q!r~s')

            request.uri.should ==
              "/abc/abc%20abc%26abc/xyz/xy%3Dz?mno=mno%0Amno&qrs=q%21r~s"

          end

          it 'raises an error if the uri path is missing a param' do

            http[:uri] = '/Id/:id'
            # note the :required option is omitted
            inputs[:id] = { :type => :string }
            msg = 'missing required option :id'

            lambda {
              request.uri
            }.should raise_error(ArgumentError, msg)

          end

          it 'drops query string params that were not provided' do

            http[:uri] = '/id/:id/name/:name?age=:age&foo=:foo'

            inputs.merge!(
              :id => { :type => :string, :required => true },
              :name => { :type => :string, :required => true },
              :age => { :type => :integer },
              :foo => { :type => :string })

            options.merge!(:id => 'abc', :name => 'JohnDoe', :age => 40)

            request.uri.should == '/id/abc/name/JohnDoe?age=40'

          end

          it 'can omit early query string params' do

            http[:uri] = '/id/:id/name/:name?age=:age&foo=:foo'

            inputs.merge!(
              :id => { :type => :string, :required => true },
              :name => { :type => :string, :required => true },
              :age => { :type => :integer },
              :foo => { :type => :string })

            options.merge!(:id => 'abc', :name => 'JohnDoe', :foo => 'baz')

            request.uri.should == '/id/abc/name/JohnDoe?foo=baz'

          end

          it 'omits the question mark when no querystring params exist' do

            http[:uri] = '/id/:id/name/:name?age=:age&foo=:foo'

            inputs.merge!(
              :id => { :type => :string, :required => true },
              :name => { :type => :string, :required => true },
              :age => { :type => :integer },
              :foo => { :type => :string })

            options.merge!(:id => 'abc', :name => 'JohnDoe')

            request.uri.should == '/id/abc/name/JohnDoe'

          end

        end

        context 'request#headers' do

          it 'does nothing special when :http => :headers is missing' do
            http[:headers].should == nil
            request.uri.should == '/uri'
            request.headers.should == {}
          end

          it 'moves header inputs into the headers hash' do
            http[:request_headers] = { :foo_bar => 'x-amz-foo-bar' }
            inputs[:foo_bar] = { :type => :string }
            options[:foo_bar] = 'yuck'
            request.headers['x-amz-foo-bar'].should eq('yuck')
          end

          it 'does nothing special if the header value is omitted' do
            http[:headers] = { :foo_bar => 'x-amz-foo-bar' }
            inputs[:foo_bar] = { :type => :string }
            options.should == {}
            request.headers.should == {}
          end

        end

        context 'request#body' do

          it 'leaves body nil when there are no params' do
            options.should == {}
            request.body.should == nil
          end

          it 'uses the :payload param for the body' do
            message = StringIO.new('abcmnoxyz')
            message.rewind
            http[:request_payload] = :message
            inputs[:message] = { :type => :blob, :required => true }
            options[:message] = message
            request.body.should eq('abcmnoxyz')
          end

          it 'converts the payload to xml when it is a hash', :ruby => '1.9' do

            http[:payload] = :data

            inputs[:data] = {
              :type => :hash,
              :required => true,
              :members => {
                :name => {
                  :type => :string,
                  :required => true
                },
                :aliases => {
                  :type => :array,
                  :members => {
                    :name => 'CNAME',
                    :type => :string,
                  },
                },
                :config => {
                  :type => :hash,
                  :members => {
                    :id => { :type => :integer },
                    :name => { :type => :string },
                    :enabled => { :type => :boolean },
                  },
                },
              },
            }

            options[:data] = {
              :name => 'name-string',
              :aliases => %w(alias-1 alias-2),
              :config => {
                :id => 12345,
                :name => 'xyz-name',
                :enabled => true,
              }
            }

            request.body.should == <<-XML.strip
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <Data>
    <Name>name-string</Name>
    <Aliases>
      <CNAME>alias-1</CNAME>
      <CNAME>alias-2</CNAME>
    </Aliases>
    <Config>
      <Id>12345</Id>
      <Name>xyz-name</Name>
      <Enabled>true</Enabled>
    </Config>
  </Data>
</OperationNameRequest>
XML

          end

        end

      end
    end
  end
end
