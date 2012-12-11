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

    # Manages the Website configuration for a single bucket.
    #
    # == Getting Rules
    #
    # To get the website configuration for a bucket, use the {Bucket#webite}
    # method.  This returns a WebsiteConfiguration for the bucket.
    #
    #   # getting website configuration info
    #   bucket.website.index_document
    #   bucket.website.error_document
    #
    # == Setting Rules
    #
    # You can set the website configuration for a bucket (replacing existing
    # configuration) using the {#set} method.
    #
    #   # accepts a hash of documents
    #   bucket.website.set(error_document: 'error.html', index_document: 'index.html')
    #
    #   # configuration can be set one at a time
    #   bucket.website.error_document = 'error.html'
    #   bucket.website.index_document = 'index.html'
    #
    #   # passing an empty hash or nil object removes the configuration
    #   bucket.website.set({})
    #   bucket.website.set(nil)
    #   bucket.website.clear # does the same thing
    #
    class WebsiteConfiguration

      # @param [Bucket] bucket
      # @param [Hash] options
      def initialize bucket, options = {}
        @bucket = bucket
      end

      # @return [Bucket]
      attr_reader :bucket
      
      # @return [String]
      def error_document
        website[:error_document][:key] if website[:error_document]
      end
      
      # Sets the error document for the bucket website.
      # @param [String]
      def error_document=(document)
        set(:error_document => document)
      end
      
      # @return [String]
      def index_document
        website[:index_document][:suffix] if website[:index_document]
      end
      
      # Sets the index document for the bucket website.
      # @param [String]
      def index_document=(document)
        set(:index_document => document)
      end

      # Replaces the website configuration for this bucket.
      #
      #   # replace all exisitng configuration
      #   bucket.cors.set(
      #     :index_document => 'index.html',
      #     :error_document => 'error.html')
      #
      # If you pass an empty hash or nil object, the configuration will be
      # removed from the bucket.
      #
      #    # these three lines are equivilent
      #    bucket.website.delete
      #    bucket.website = {}
      #    bucket.website = nil
      #
      # @param [Hash] options
      # @return [nil]
      #
      def set(options={})
        if options.nil? || options.empty?
          delete
        else
          options[:error_document] ||= error_document
          options[:index_document] ||= index_document
          # puts "Options"
          # puts options
          client.put_bucket_website(options.merge(:bucket_name => bucket.name))
        end
        @website = nil
        nil
      end

      # Removes all website configuration attached to this bucket.
      #
      # @return [nil]
      def delete
        client.delete_bucket_website(:bucket_name => bucket.name)
        nil
      end

      private
      
      def client
        bucket.client
      end
      
      def website
        @website ||= client.get_bucket_website(:bucket_name =>  bucket.name)
      end

    end
  end
end
