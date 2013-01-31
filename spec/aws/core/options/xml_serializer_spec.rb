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
    module Options
      describe XMLSerializer do

        let(:options) {{}}

        let(:rules) {{}}

        let(:http) { nil }

        let(:operation) {{ :inputs => rules }}

        let(:serializer) {
          XMLSerializer.new('http://namespace.com/doc/', 'OperationName', operation)
        }

        let(:xml) { serializer.serialize(options) }

        before(:each) do
          operation[:http] = http if http
        end

        context '#rules' do

          it 'returns the rules' do
            serializer.rules.should eq(rules)
          end

        end

        context "#validator" do

          it 'returns a validator' do
            serializer.validator.should be_a(Validator)
          end

          it 'returns validator with the given rules' do
            serializer.validator.rules.should eq(rules)
          end

        end

        context '#serialize' do

          context 'with request payload' do

            let(:http) {{ :request_payload => :config }}

            it 'uses the name of the request payload as the root xml element' do
              rules[:config] = {
                :name => 'Configuration',
                :type => :hash,
                :members => {},
              }
              xml.should eq("<Configuration xmlns=\"http://namespace.com/doc/\"/>")
            end

          end

          context 'strings' do

            it 'returns string as is' do
              rules[:name] = { :name => 'Name', :type => :string }
              options[:name] = 'name-value'
              xml.should include("<Name>name-value</Name>")
            end

          end

          context 'integers' do

            it 'returns integers as is' do
              rules[:count] = { :name => 'Count', :type => :integer }
              options[:count] = 123
              xml.should include("<Count>123</Count>")
            end

          end

          context 'booleans' do

            it 'it encodes true as a string' do
              rules[:enabled] = { :name => 'Enabled', :type => :boolean }
              options[:enabled] = true
              xml.should include("<Enabled>true</Enabled>")
            end

            it 'it encodes false as a string' do
              rules[:enabled] = { :name => 'Enabled', :type => :boolean }
              options[:enabled] = false
              xml.should include("<Enabled>false</Enabled>")
            end

          end

          context 'timestamps' do

            it 'encodes numbers as strings' do
              rules[:date] = { :name => 'Date', :type => :timestamp }
              options[:date] = 123456789
              xml.should include("<Date>123456789</Date>")
            end

            it 'calls #to_s on other date-like objects' do
              now = Time.now
              rules[:date] = { :name => 'Date', :type => :timestamp }
              options[:date] = now
              xml.should include("<Date>#{now.to_s}</Date>")
            end

          end

          context 'hashes' do

            it 'encodes hashes into nested xml elements', :ruby => '1.9' do
              now = Time.now
              rules[:config] = {
                :name => 'Configuration',
                :type => :hash,
                :members => {
                  :abc   => { :name => 'Abc', :type => :string },
                  :hjk   => { :name => 'Hjk', :type => :integer },
                  :mno   => { :name => 'Mno', :type => :boolean },
                  :xyz   => { :name => 'Xyz', :type => :timestamp },
                  :list  => {
                    :name => 'List',
                    :type => :array,
                    :members => {
                      :type => :integer,
                      :name => 'Value',
                    }
                  },
                },
              }
              options[:config] = {
                :abc => 'abc-value',
                :hjk => 12345,
                :mno => false,
                :xyz => now,
                :list => [1,2,3],
              }
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <Configuration>
    <Abc>abc-value</Abc>
    <Hjk>12345</Hjk>
    <Mno>false</Mno>
    <Xyz>#{now}</Xyz>
    <List>
      <Value>1</Value>
      <Value>2</Value>
      <Value>3</Value>
    </List>
  </Configuration>
</OperationNameRequest>
XML
            end

            context 'with ordered members' do

              ## route53 cares about the order of sibling xml elements
              ## so we are adding support for :order to the xml serializer

              it 'encodes hashes into nested xml elements in the order' do
                rules[:ordered_hash] = {
                  :name => 'OrderedHash',
                  :type => :hash,
                  :members => {
                    :last => { :name => 'Last', :position => 2 },
                    :first => { :name => 'First', :position => 0 },
                    :second => { :name => 'Second', :position => 1 },
                  },
                }

                options[:ordered_hash] = {
                  :second => 'b',
                  :last => 'c',
                  :first => 'a',
                }

                xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <OrderedHash>
    <First>a</First>
    <Second>b</Second>
    <Last>c</Last>
  </OrderedHash>
</OperationNameRequest>
XML
              end

            end

          end

          context 'arrays' do

            it 'encodes lists of strings' do
              rules[:list] = {
                :name => 'List',
                :type => :array,
                :members => { :type => :string, :name => 'Value' },
              }
              options[:list] = %w(abc mno xyz)
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <List>
    <Value>abc</Value>
    <Value>mno</Value>
    <Value>xyz</Value>
  </List>
</OperationNameRequest>
XML
            end

            it 'encodes lists of integers' do
              rules[:list] = {
                :name => 'Years',
                :type => :array,
                :members => { :type => :integer, :name => 'Year' },
              }
              options[:list] = [1990, 1995, 2000]
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <Years>
    <Year>1990</Year>
    <Year>1995</Year>
    <Year>2000</Year>
  </Years>
</OperationNameRequest>
XML
            end

            it 'encodes lists of booleans' do
              rules[:states] = {
                :name => 'Statuses',
                :type => :array,
                :members => { :type => :boolean, :name => 'state' },
              }
              options[:states] = [true, true, false]
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <Statuses>
    <state>true</state>
    <state>true</state>
    <state>false</state>
  </Statuses>
</OperationNameRequest>
XML
            end

            it 'encodes lists of timestamps' do
              times = [Time.now, Time.now + 1000]
              rules[:times] = {
                :name => 'Timestamps',
                :type => :array,
                :members => { :type => :timestamp, :name => 'When' },
              }
              options[:times] = times
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <Timestamps>
    <When>#{times[0]}</When>
    <When>#{times[1]}</When>
  </Timestamps>
</OperationNameRequest>
XML
            end

            it 'encodes lists of hashes', :ruby => '1.9' do
              rules[:tags] = {
                :name => 'Tags',
                :type => :array,
                :members => {
                  :name => 'Tag',
                  :type => :hash,
                  :members => {
                    :key => { :name => 'Key', :type => :string },
                    :value => { :name => 'Value', :type => :string },
                  },
                },
              }
              options[:tags] = [
                { :key => 'abc', :value => '1' },
                { :key => 'mno', :value => '2' },
              ]
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <Tags>
    <Tag>
      <Key>abc</Key>
      <Value>1</Value>
    </Tag>
    <Tag>
      <Key>mno</Key>
      <Value>2</Value>
    </Tag>
  </Tags>
</OperationNameRequest>
XML
            end

            it 'defaults list member names to "member"' do
              rules[:list] = { :type => :array, :members => { :type => :integer }}
              options[:list] = [1,2,3]
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <List>
    <member>1</member>
    <member>2</member>
    <member>3</member>
  </List>
</OperationNameRequest>
XML

            end

            it 'encodes lists of lists', :ruby => '1.9' do
              rules[:buckets] ={
                :name => 'Buckets',
                :type => :array,
                :members => {
                  :name => 'Bucket',
                  :type => :array,
                  :members => {
                    :name => 'Objects',
                    :type => :array,
                    :members => {
                      :name => 'Object',
                      :type => :hash,
                      :members => {
                        :key => { :type => :string, :name => 'Key' },
                        :size => { :type => :integer, :name => 'Size' },
                      }
                    },
                  }
                }
              }
              options[:buckets] = [
                [
                  [
                    { :key => 'abc', :size => 10 },
                    { :key => 'mno', :size => 15 },
                  ],
                  [
                    { :key => 'hjk', :size => 2 },
                    { :key => 'xyz', :size => 4 },
                  ],
                ]
              ]
              xml.xml_cleanup.should == <<-XML.xml_cleanup
<OperationNameRequest xmlns="http://namespace.com/doc/">
  <Buckets>
    <Bucket>
      <Objects>
        <Object>
          <Key>abc</Key>
          <Size>10</Size>
        </Object>
        <Object>
          <Key>mno</Key>
          <Size>15</Size>
        </Object>
      </Objects>
      <Objects>
        <Object>
          <Key>hjk</Key>
          <Size>2</Size>
        </Object>
        <Object>
          <Key>xyz</Key>
          <Size>4</Size>
        </Object>
      </Objects>
    </Bucket>
  </Buckets>
</OperationNameRequest>
XML
            end

          end

        end
      end
    end
  end
end
