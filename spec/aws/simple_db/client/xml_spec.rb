# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    class Client < BaseClient
      module XML

        describe BaseResponse do

          let(:request_id) { 'sample-request-id' }

          let(:box_usage) { 0.012345 }

          let(:response) { XML::BaseResponse.parse(<<-XML) }
            <?xml version="1.0"?>
            <GenericResponse xmlns="http://sdb.amazonaws.com/doc/2009-04-15/">
              <ResponseMetadata>
                <RequestId>#{request_id}</RequestId>
                <BoxUsage>#{box_usage}</BoxUsage>
              </ResponseMetadata>
            </GenericResponse>
          XML

          it 'should expose request id' do
            response.response_metadata.request_id.should == request_id
          end

          it 'should expose box usage' do
            response.response_metadata.box_usage.should == box_usage
          end

        end

        describe BaseError do

          let(:response) { XML::BaseError.parse(<<END) }
<Response>
<Errors>
  <Error>
    <Code>DuplicateItemName</Code>
    <Message>Something bad happened.</Message>
    <BoxUsage>0.0000071759</BoxUsage>
  </Error>
</Errors>
<RequestID>75297cee-3e48-9379-5d07-1769be265c2d</RequestID>
</Response>
END

          it 'should expose request_id' do
            response.request_id.should == "75297cee-3e48-9379-5d07-1769be265c2d"
          end

          it 'should expose code' do
            response.code.should == "DuplicateItemName"
          end

        end

        describe GetAttributes do

          let(:response) { XML::GetAttributes.parse(<<-XML.strip) }
            <?xml version="1.0"?>
            <GetAttributesResponse xmlns="http://sdb.amazonaws.com/doc/2009-04-15/">
              <GetAttributesResult>
                <Attribute>
                  <Name encoding="base64">Y29sb3IA</Name>
                  <Value encoding="base64">Ymx1ZQA=</Value>
                </Attribute>
              </GetAttributesResult>
              <ResponseMetadata>
                <RequestId>0252175f-074e-4957-25e8-7948df8bab16</RequestId>
                <BoxUsage>0.0000093222</BoxUsage>
              </ResponseMetadata>
            </GetAttributesResponse>
          XML

          it 'should decode the name and value' do
            response.attributes.first.name.should == "color\0"
            response.attributes.first.value.should == "blue\0"
          end

        end

#           describe CustomizedDomainMetadata do
#             let(:response) { described_class.parse(<<-XML.strip) }
#               <DomainMetadataResponse xmlns="http://sdb.amazonaws.com/doc/2009-04-15/">
#                 <DomainMetadataResult>
#                   <ItemCount>195078</ItemCount>
#                   <ItemNamesSizeBytes>2586634</ItemNamesSizeBytes>
#                   <AttributeNameCount >12</AttributeNameCount >
#                   <AttributeNamesSizeBytes>120</AttributeNamesSizeBytes>
#                   <AttributeValueCount>3690416</AttributeValueCount>
#                   <AttributeValuesSizeBytes>50149756</AttributeValuesSizeBytes>
#                   <Timestamp>1225486466</Timestamp>
#                 </DomainMetadataResult>
#                 <ResponseMetadata>
#                     <RequestId>b1e8f1f7-42e9-494c-ad09-2674e557526d</RequestId>
#                     <BoxUsage>0.0000219907</BoxUsage>
#                 </ResponseMetadata>
#               </DomainMetadataResponse>
#             XML
# 
#             it 'should wrap ItemCount in a metadata object' do
#               raise response.to_yaml
#               response.metadata.item_count.should == 195078  
#             end
# 
#             it 'should wrap ItemNamesSizeBytes in a metadata object' do
#               response.metadata.item_names_size_bytes.should == 2586634  
#             end
# 
#             it 'should wrap AttributeNameCount in a metadata object' do
#               response.metadata.attribute_name_count.should == 12  
#             end
# 
#             it 'should wrap AttributeNamesSizeBytes in a metadata object' do
#               response.metadata.attribute_names_size_bytes.should == 120
#             end
# 
#             it 'should wrap AttributeValueCount in a metadata object' do
#               response.metadata.attribute_value_count.should == 3690416
#             end
# 
#             it 'should wrap AttributeValuesSizeBytes in a metadata object' do
#               response.metadata.attribute_values_size_bytes.should == 50149756
#             end
# 
#             it 'should wrap Timestamp in a metadata object' do
#               response.metadata.timestamp.should == 1225486466
#             end
# 
#           end

        describe CustomizedSelect do
          
          let(:response) { described_class.parse('<foo/>') }

          it 'should always have a next token' do
            response.next_token.should be_nil
          end

        end

        describe CustomizedSelect do

          let(:response) { described_class.parse(<<-XML.strip) }
            <?xml version="1.0"?>
            <SelectResponse xmlns="http://sdb.amazonaws.com/doc/2009-04-15/">
              <SelectResult>
                <Item>
                  <Name>item001</Name>
                  <Attribute>
                    <Name>color</Name>
                    <Value>blue</Value>
                  </Attribute>
                </Item>
                <NextToken>nexttoken</NextToken>
              </SelectResult>
              <ResponseMetadata>
                <RequestId>1797867c-53d4-1a13-3125-f2ab549b2218</RequestId>
                <BoxUsage>0.0000228616</BoxUsage>
              </ResponseMetadata>
            </SelectResponse>
          XML

          it 'should expose an item list' do
            response.items.should be_an(Array)
          end

          it 'should have a single item in the list' do
            response.items.size.should == 1
          end

          it 'should return a next token' do
            response.next_token.should == 'nexttoken'
          end

          it 'should always repsonse to next_token' do
            described_class.parse("<foo/>").next_token.should be_nil
          end

          context 'item' do

            let(:item) { response.items.first }

            it 'should have a name' do
              item.name.should == "item001"
            end

            it 'should have an attributes list' do
              item.attributes.should be_an(Array)
            end

          end

        end

      end
    end
  end
end
