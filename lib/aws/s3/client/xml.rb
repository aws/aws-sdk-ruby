# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS
  class S3
    class Client < Core::Client

      # @private
      module XML

        Error = Core::XmlGrammar.customize { }

        module HasCommonPrefixes

          def self.included(mod)
            mod.module_eval do
              element "CommonPrefixes" do
                collect_values
                format_value {|value| value.prefix }
              end
            end
          end

        end

        ListBuckets = Core::XmlGrammar.customize do
          element "Buckets" do
            element "Bucket" do
              collect_values
            end
            format_value { |value| super(value.bucket) }
          end
        end

        GetBucketAcl = GetObjectAcl = Core::XmlGrammar.customize do
          wrapper(:acl,
                  :for => ["Owner",
                           "AccessControlList"]) do
            construct_value { AccessControlList.new }
          end

          element "Owner" do
            construct_value { AccessControlList::Owner.new }
          end

          element "AccessControlList" do
            element "Grant" do
              collect_values
              construct_value { AccessControlList::Grant.new }

              element "Grantee" do
                construct_value { AccessControlList::Grantee.new }
                element "ID" do
                  rename :canonical_user_id
                end
              end

              element "Permission" do
                symbol_value
              end
            end

            format_value { |value| super(value.grant) }
            rename :grants

          end
        end

        ListObjects = Core::XmlGrammar.customize do

          element("Name") { rename "bucket_name" }
          element("MaxKeys") { integer_value }
          element("IsTruncated") { rename "truncated"; boolean_value }
          element("Delimiter") { force }

          element("Contents") do
            list
            element("Owner") do
              element("ID") { }
              element("DisplayName") { }
            end
            element("Key") { }
            element("Size") { }
            element("StorageClass") { }
            element("ETag") { rename "etag" }

            # DateTime is more general, Time is much faster to construct
            element("LastModified") { time_value }
          end

          include HasCommonPrefixes

        end

        GetBucketVersioning = Core::XmlGrammar.customize do
          element("Status") do
            symbol_value
            format_value {|value| super(value) || :unversioned }
            force
          end
        end

        ListObjectVersions = Core::XmlGrammar.customize do

          element("MaxKeys") { integer_value }
          element("IsTruncated") { rename "Truncated"; boolean_value }
          element("NextKeyMarker") { force }
          element("NextVersionIdMarker") { force }

          %w(DeleteMarker Version).each do |element_name|
            element(element_name) do
              collect_values
              rename("versions")
              element("IsLatest") { rename "latest"; boolean_value }
              element("LastModified") { datetime_value }
              element("ETag") { rename "etag" }
              element("Size") { integer_value }
              element("StorageClass") { symbol_value }
            end
          end

          element "DeleteMarker" do
            add_method(:delete_marker?) { true }
            add_method(:version?) { false }
          end

          element "Version" do
            add_method(:delete_marker?) { false }
            add_method(:version?) { true }
          end

          include HasCommonPrefixes

        end

        # default behavior is good enough
        InitiateMultipartUpload = Core::XmlGrammar.customize do
          element("UploadId") { force }
        end

        ListMultipartUploads = Core::XmlGrammar.customize do
          element("IsTruncated") { rename "Truncated"; boolean_value }
          element("MaxUploads") { integer_value }
          element("NextKeyMarker") { force }
          element("NextUploadIdMarker") { force }
          element("Upload") do
            collect_values
            rename :uploads
            element("StorageClass") { symbol_value }
            element("Initiated") { datetime_value }
          end
          include HasCommonPrefixes
        end

        DeleteObjects = Core::XmlGrammar.customize do
          element("Deleted") do
            element("DeleteMarker") { boolean_value }
            list
          end
          element("Error") { list; rename('errors') }  
        end

        # keep default behavior
        CompleteMultipartUpload = Core::XmlGrammar.customize

        ListParts = Core::XmlGrammar.customize do
          element("StorageClass") { symbol_value }
          element("IsTruncated") { rename "Truncated"; boolean_value }
          element("MaxParts") { integer_value }
          element("PartNumberMarker") { integer_value }
          element("NextPartNumberMarker") { integer_value }
          element("Part") do
            collect_values
            rename :parts
            element("PartNumber") { integer_value }
            element("LastModified") { datetime_value }
            element("Size") { integer_value }
          end
        end

        GetBucketLifecycleConfiguration = Core::XmlGrammar.customize do
          element("Rule") do
            list
            rename("Rules")  
            element("Expiration") do
              element("Days") { integer_value }
            end
          end
        end

      end
    end
  end
end
