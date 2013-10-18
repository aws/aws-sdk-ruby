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
  class S3
    class Client < Core::Client

      describe XML::ListBuckets do

        context "one bucket" do

          let(:response) { described_class.parse(<<-XML) }
            <ListAllMyBucketsResult xmlns="http://doc.s3.amazonaws.com/2006-03-01">
              <Owner>
                <ID>bcaf1ffd86f461ca5fb16fd081034f</ID>
                <DisplayName>webfile</DisplayName>
              </Owner>
              <Buckets>
                <Bucket>
                  <Name>quotes</Name>
                  <CreationDate>2006-02-03T16:45:09.000Z</CreationDate>
                </Bucket>
              </Buckets>
            </ListAllMyBucketsResult>
          XML

          it 'should expose owner ID and display name' do
            response.owner.id.should == "bcaf1ffd86f461ca5fb16fd081034f"
            response.owner.display_name.should == "webfile"
          end

          it 'should expose a list of buckets' do
            response.buckets.should be_an(Array)
          end

          it 'should expose the bucket name and creation date' do
            response.buckets.first.name.should == "quotes"
            response.buckets.first.creation_date.should == "2006-02-03T16:45:09.000Z"
          end

        end

        context "two buckets" do

          let(:response) { described_class.parse(<<-XML.strip) }
            <ListAllMyBucketsResult xmlns="http://doc.s3.amazonaws.com/2006-03-01">
              <Owner>
                <ID>bcaf1ffd86f461ca5fb16fd081034f</ID>
                <DisplayName>webfile</DisplayName>
              </Owner>
              <Buckets>
                <Bucket>
                  <Name>quotes</Name>
                  <CreationDate>2006-02-03T16:45:09.000Z</CreationDate>
                </Bucket>
                <Bucket>
                  <Name>quotes2</Name>
                  <CreationDate>2009-02-03T16:45:09.000Z</CreationDate>
                </Bucket>
              </Buckets>
            </ListAllMyBucketsResult>
          XML

          it 'should expose a list of buckets' do
            response.buckets.should be_an(Array)
          end

          it 'should expose the correct names and creation dates' do
            response.buckets[0].name.should == "quotes"
            response.buckets[0].creation_date.should == "2006-02-03T16:45:09.000Z"
            response.buckets[1].name.should == "quotes2"
            response.buckets[1].creation_date.should == "2009-02-03T16:45:09.000Z"
          end

        end

        context "no buckets" do

          let(:response) { described_class.parse(<<-XML.strip) }
            <ListAllMyBucketsResult xmlns="http://doc.s3.amazonaws.com/2006-03-01">
              <Owner>
                <ID>bcaf1ffd86f461ca5fb16fd081034f</ID>
                <DisplayName>webfile</DisplayName>
              </Owner>
              <Buckets/>
            </ListAllMyBucketsResult>
          XML

          it 'should expose an empty list of buckets' do
            response.buckets.should be_an(Array)
            response.buckets.should be_empty
          end

        end

      end

      describe XML::GetBucketAcl do

        context 'one grant' do

          let(:response) { described_class.parse(<<-XML.strip) }
            <AccessControlPolicy>
              <Owner>
                <ID>8a6925ce4adee97f21c32aa379004fef</ID>
                <DisplayName>CustomersName@amazon.com</DisplayName>
              </Owner>
              <AccessControlList>
                <Grant>
                  <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser">
                    <ID>8a6925ce4adf57f21c32aa379004fef</ID>
                    <DisplayName>CustomersName@amazon.com</DisplayName>
                  </Grantee>
                  <Permission>FULL_CONTROL</Permission>
                </Grant>
              </AccessControlList>
            </AccessControlPolicy>
          XML

          it 'should add an acl attribute' do
            response.to_hash.should == {
              :grants => [
                {
                  :grantee=>{
                    :type=>"CanonicalUser",
                    :canonical_user_id=>"8a6925ce4adf57f21c32aa379004fef",
                    :display_name=>"CustomersName@amazon.com"
                  },
                  :permission=>:full_control
                }
              ],
              :owner=>{
                :id=>"8a6925ce4adee97f21c32aa379004fef",
                :display_name=>"CustomersName@amazon.com"
              }
            }
          end

        end

      end

      shared_examples_for "s3 xml returns common prefixes" do

        context 'common prefixes' do

          let(:xml) { <<-XML.strip }
              <root>
                <CommonPrefixes>
                  <Prefix>foo</Prefix>
                </CommonPrefixes>
                <CommonPrefixes>
                  <Prefix>bar</Prefix>
                </CommonPrefixes>
              </root>
            XML

          let(:response) { described_class.parse(xml) }

          it 'should always respond to common prefixes as an array' do
            described_class.parse('<foo/>').common_prefixes.should == []
          end

          it 'groups common prefixes into an array' do
            response.common_prefixes.length.should == 2
          end

          it 'flatttens CommonPrefix.Prefix to #common_prefixes' do
            response.common_prefixes.should == [
              { :prefix => 'foo' },
              { :prefix => 'bar' },
            ]
          end

        end

      end

      describe XML::ListObjects do

        context 'one contents' do

          let(:response) { described_class.parse(<<-XML) }
            <ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
              <Name>trowe-bucket</Name>
              <Prefix>some_prefix</Prefix>
              <Marker>some_marker</Marker>
              <MaxKeys>2</MaxKeys>
              <IsTruncated>true</IsTruncated>
              <CommonPrefixes>
                <Prefix>foo</Prefix>
              </CommonPrefixes>
              <CommonPrefixes>
                <Prefix>bar</Prefix>
              </CommonPrefixes>
              <Contents>
                <Key>some/key</Key>
                <LastModified>2011-02-07T17:24:19.000Z</LastModified>
                <ETag>&quot;5ceaa7ed396ccb8e959c02753cb4bd18&quot;</ETag>
                <Size>8</Size>
                <Owner>
                  <ID>154b2f3550127d0439dfe1e89a03a7a4178048cc05c6fdaeb40796841a5cfcef</ID>
                  <DisplayName>awssandbox</DisplayName>
                </Owner>
                <StorageClass>STANDARD</StorageClass>
              </Contents>
              <Contents>
                <Key>foo/bar</Key>
                <LastModified>2011-02-07T17:24:19.000Z</LastModified>
                <ETag>&quot;d41d8cd98f00b204e9800998ecf8427e&quot;</ETag>
                <Size>0</Size>
                <Owner>
                  <ID>154b2f3550127d0439dfe1e89a03a7a4178048cc05c6fdaeb40796841a5cfcef</ID>
                  <DisplayName>awssandbox</DisplayName>
                </Owner>
                <StorageClass>STANDARD</StorageClass>
              </Contents>
            </ListBucketResult>
          XML

          it 'should expose Name as bucket_name' do
            response.bucket_name.should == 'trowe-bucket'
          end

          it 'should expose Prefix as prefix' do
            response.prefix.should == 'some_prefix'
          end

          it 'should expose Marker as marker' do
            response.marker.should == 'some_marker'
          end

          it 'should expose MaxKeys as a numeric max_keys' do
            response.max_keys.should == 2
          end

          it 'should always respond to delimiter' do
            described_class.parse('<foo/>').delimiter.should be_nil
          end

          it 'should expose IsTruncated as boolean truncated?' do
            response.truncated?.should be_true
          end

          it 'should expose Contents as an array' do
            response.contents.should be_an(Array)
          end

          it 'should have 2 contents entries' do
            response.contents.length.should == 2
          end

          it 'should expose Contents\Key as .key' do
            response.contents.first.key.should == 'some/key'
          end

          it 'should expose Contents\LastModified as Time .last_modified' do
            response.contents.first.last_modified.should ==
              Time.parse('2011-02-07T17:24:19.000Z')
          end

          it 'should expose Contents\ETag as etag' do
            response.contents.first.etag.should ==
              "\"5ceaa7ed396ccb8e959c02753cb4bd18\""
          end

          it 'should expose Contents\Owner\ID as .owner.id' do
            response.contents.first.owner.id.should ==
            '154b2f3550127d0439dfe1e89a03a7a4178048cc05c6fdaeb40796841a5cfcef'
          end

          it 'should expose Contents\Owner\DisplayName as .owner.id' do
            response.contents.first.owner.display_name.should == 'awssandbox'
          end

          it_should_behave_like "s3 xml returns common prefixes"

        end

      end

      describe XML::GetBucketVersioning do

        let(:enabled) { <<-XML }
          <VersioningConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
            <Status>Enabled</Status>
          </VersioningConfiguration>
        XML

        let(:suspended) { <<-XML }
          <VersioningConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
            <Status>Suspended</Status>
          </VersioningConfiguration>
        XML

        let(:default_state) { <<-XML }
          <VersioningConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/"/>
        XML

        it 'reports enabled as a symbol' do
          described_class.parse(enabled).status.should == :enabled
        end

        it 'reports suspended as a symbol' do
          described_class.parse(suspended).status.should == :suspended
        end

        it 'reports never enabled/suspended as :unversioned' do
          described_class.parse(default_state).status.should == :unversioned
        end

      end

      describe XML::ListObjectVersions do
        let(:xml) { <<-XML.strip }
          <ListVersionsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01">
            <Name>bucket</Name>
            <Prefix>my</Prefix>
            <KeyMarker/>
            <VersionIdMarker/>
            <MaxKeys>5</MaxKeys>
            <IsTruncated>false</IsTruncated>
            <Version>
              <Key>my-image.jpg</Key>
              <VersionId>3/L4kqtJl40Nr8X8gdRQBpUMLUo</VersionId>
              <IsLatest>true</IsLatest>
              <LastModified>2009-10-12T17:50:30.000Z</LastModified>
              <ETag>&quot;fba9dede5f27731c9771645a39863328&quot;</ETag>
              <Size>434234</Size>
              <StorageClass>STANDARD</StorageClass>
              <Owner>
                <ID>8a6925ce4adf58897f21c32aa379004fef</ID>
                <DisplayName>mtd@amazon.com</DisplayName>
              </Owner>
            </Version>
            <DeleteMarker>
              <Key>my-second-image.jpg</Key>
              <VersionId>03jpff543dhffds434rfdsFDN943fdsFkdmqnh892</VersionId>
              <IsLatest>true</IsLatest>
              <LastModified>2009-11-12T17:50:30.000Z</LastModified>
              <Owner>
                <ID>8a6925ce4adf7f21c32aa379004fef</ID>
                <DisplayName>mtd@amazon.com</DisplayName>
              </Owner>
            </DeleteMarker>
            <Version>
              <Key>my-second-image.jpg</Key>
              <VersionId>QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</VersionId>
              <IsLatest>false</IsLatest>
              <LastModified>2009-10-10T17:50:30.000Z</LastModified>
              <ETag>&quot;9b2cf535f27731c974343645a3985328&quot;</ETag>
              <Size>166434</Size>
              <StorageClass>STANDARD</StorageClass>
              <Owner>
                <ID>8a6925ce421c32aa379004fef</ID>
                <DisplayName>mtd@amazon.com</DisplayName>
              </Owner>
            </Version>
            <DeleteMarker>
              <Key>my-third-image.jpg</Key>
              <VersionId>03jpff543dhffds434rfdsFDN943fdsFkdmqnh892</VersionId>
              <IsLatest>true</IsLatest>
              <LastModified>2009-10-15T17:50:30.000Z</LastModified>
              <Owner>
                <ID>8a6925ce4adf532aa379004fef</ID>
                <DisplayName>mtd@amazon.com</DisplayName>
              </Owner>
            </DeleteMarker>
            <Version>
              <Key>my-third-image.jpg</Key>
              <VersionId>UIORUnfndfhnw89493jJFJ</VersionId>
              <IsLatest>false</IsLatest>
              <LastModified>2009-10-11T12:50:30.000Z</LastModified>
              <ETag>&quot;772cf535f27731c974343645a3985328&quot;</ETag>
              <Size>64</Size>
              <StorageClass>STANDARD</StorageClass>
              <Owner>
                <ID>8a6925ce4adf5887f21c32aa379004fef</ID>
                <DisplayName>mtd@amazon.com</DisplayName>
              </Owner>
             </Version>
          </ListVersionsResult>
        XML

        it 'should always have an NextKeyMarker method' do
          described_class.parse('<foo/>').next_key_marker.should be_nil
        end

        it 'should always have an NextVersionIdMarker method' do
          described_class.parse('<foo/>').next_version_id_marker.should be_nil
        end

        it 'should make MaxKeys an integer' do
          described_class.parse(xml).max_keys.should == 5
        end

        it 'should make IsTruncated a boolean truncated?' do
          described_class.parse(xml).truncated?.should == false
        end

        it 'should combine versions and delete markers' do
          described_class.parse(xml).versions.length.should == 5
        end

        context 'Delete markers' do

          let(:delete_marker) { described_class.parse(xml).versions[1] }

          it 'should respond to #delete_marker? with true' do
            delete_marker.delete_marker?.should == true
          end

          it 'should respond to #version? with false' do
            delete_marker.version?.should == false
          end

          it 'should respond to #latest? with a boolean' do
            delete_marker.latest?.should == true
          end

          it 'should respond to #last_modified? with a date time' do
            delete_marker.last_modified.should be_a(DateTime)
          end

          it 'should not respond to #etag' do
            delete_marker.should_not respond_to(:etag)
          end

          it 'should not respond to #size' do
            delete_marker[:size].should == nil
          end

          it 'should not respond to #storage_class' do
            delete_marker.should_not respond_to(:storage_class)
          end

        end

        context 'Versions' do

          let(:version) { described_class.parse(xml).versions[0] }

          it 'should respond to #delete_marker? with false' do
            version.delete_marker?.should == false
          end

          it 'should respond to #version? with true' do
            version.version?.should == true
          end

          it 'should respond to #latest? with a boolean' do
            version.latest?.should == true
          end

          it 'should respond to #last_modified? with a date time' do
            version.last_modified.should be_a(DateTime)
          end

          it 'should symbolze the storage class STANDARD to :standard' do
            version.storage_class.should == :standard
          end

          it 'should respond to #size with an integer' do
            version.size.should == 434234
          end

          it 'should respond to #etag with a quoted string' do
            version.etag.should == '"fba9dede5f27731c9771645a39863328"'
          end

        end

        it_should_behave_like "s3 xml returns common prefixes"

      end

      describe XML::InitiateMultipartUpload do

        let(:response) { described_class.parse(<<-XML) }
          <InitiateMultipartUploadResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
          <Bucket>example-bucket</Bucket>
          <Key>example-object</Key>
          <UploadId>VXBsb2FkIElEIGZvciA2aWWpbmcncyBteS1tb3ZpZS5tMnRzIHVwbG9hZA</UploadId>
          </InitiateMultipartUploadResult>
        XML

        it 'should respond to upload_id' do
          response.upload_id.
            should == "VXBsb2FkIElEIGZvciA2aWWpbmcncyBteS1tb3ZpZS5tMnRzIHVwbG9hZA"
        end

        it 'should respond to bucket' do
          response.bucket.should == "example-bucket"
        end

        it 'should respond to key' do
          response.key.should == "example-object"
        end

      end

      describe XML::ListMultipartUploads do

        let(:response) { described_class.parse(<<-XML) }
          <ListMultipartUploadsResult xmlns='http://s3.amazonaws.com/doc/2006-03-01/'>
          <Bucket>ruby_manual_testing</Bucket>
          <KeyMarker/>
          <UploadIdMarker/>
          <NextKeyMarker>foo</NextKeyMarker>
          <NextUploadIdMarker>F6hez6AVKtgp_.83rK._emo8MYL7pd29BTCBX2houAu6S9RS4YZkU4wyEDZZYmiECyTRM.fY6gDTSFSCcidcPQ--</NextUploadIdMarker>
          <MaxUploads>1000</MaxUploads>
          <IsTruncated>false</IsTruncated>
          <Upload>
            <Key>foo</Key>
            <UploadId>F6hez6AVKtgp_.83rK._emo8MYL7pd29BTCBX2houAu6S9RS4YZkU4wyEDZZYmiECyTRM.fY6gDTSFSCcidcPQ--</UploadId>
            <Initiator>
              <ID>d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df</ID>
              <DisplayName>aws-dr-tools-test</DisplayName>
            </Initiator>
            <Owner>
              <ID>d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df</ID>
              <DisplayName>aws-dr-tools-test</DisplayName>
            </Owner>
            <StorageClass>STANDARD</StorageClass>
            <Initiated>2011-03-30T20:57:31.000Z</Initiated>
          </Upload>
          </ListMultipartUploadsResult>
        XML

        it 'should expose a truncated? method' do
          response.should respond_to(:truncated?)
          response.truncated?.should be_false
        end

        it 'should return a number for max_uploads' do
          response.max_uploads.should == 1000
        end

        it 'should expose an uploads list' do
          response.uploads.should be_kind_of(Array)
        end

        it 'should force the next_*_marker methods' do
          response.should respond_to(:next_key_marker)
          response.should respond_to(:next_upload_id_marker)
        end

        context 'uploads' do

          let(:upload) { response.uploads.first }

          it 'should expose storage_class as a symbol' do
            upload.storage_class.should == :standard
          end

          it 'should expose initiated as a DateTime' do
            upload.initiated.should be_a(DateTime)
          end

        end

        it_should_behave_like "s3 xml returns common prefixes"

      end

      describe XML::ListParts do

        let(:response) { described_class.parse(<<-XML) }
          <ListPartsResult xmlns='http://s3.amazonaws.com/doc/2006-03-01/'>
          <Bucket>ruby_manual_testing</Bucket>
          <Key>foo</Key>
          <UploadId>A24elvMhVHcW1Fp5fTvjpPToV503NQagpyhME3dhrp2KsmUWLziX6Qu6TroL1ZufIlWPHtvbxK5ZrsstrejT0w--</UploadId>
          <Initiator>
            <ID>d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df</ID>
            <DisplayName>aws-dr-tools-test</DisplayName>
          </Initiator>
          <Owner>
            <ID>d25639fbe9c19cd30a4c0f43fbf00e2d3f96400a9aa8dabfbbebe19069d1a5df</ID>
            <DisplayName>aws-dr-tools-test</DisplayName>
          </Owner>
          <StorageClass>STANDARD</StorageClass>
          <PartNumberMarker>0</PartNumberMarker>
          <NextPartNumberMarker>0</NextPartNumberMarker>
          <MaxParts>1000</MaxParts>
          <IsTruncated>false</IsTruncated>
          <Part>
            <PartNumber>1</PartNumber>
            <LastModified>2011-04-01T00:34:36.000Z</LastModified>
            <ETag>quot;eb61eead90e3b899c6bcbe27ac581660&quot;</ETag>
            <Size>5</Size>
          </Part>
          </ListPartsResult>
        XML

        it 'should expose storage_class as a symbol' do
          response.storage_class.should == :standard
        end

        it 'should expose truncated? as a boolean' do
          response.truncated?.should == false
        end

        it 'should expose part_number_marker as an integer' do
          response.part_number_marker.should == 0
        end

        it 'should expose next_part_number_marker as an integer' do
          response.next_part_number_marker.should == 0
        end

        it 'should expose max_parts as an integer' do
          response.max_parts.should == 1000
        end

        it 'should expose parts as an array' do
          response.parts.should be_an(Array)
        end

        context 'parts' do

          let(:part) { response.parts.first }

          it 'should expose part_number as an integer' do
            part.part_number.should == 1
          end

          it 'should expose last_modified as a DateTime' do
            part.last_modified.should be_a(DateTime)
          end

          it 'should expose size as an integer' do
            part.size.should == 5
          end

        end

      end

    end
  end
end
