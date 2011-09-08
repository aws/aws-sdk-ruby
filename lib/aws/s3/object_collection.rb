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

module AWS
  class S3

    # Represents a collection of S3 objects.
    #
    # == Getting an S3Object by Key
    #
    # If you know the key of the object you want, you can reference it this way:
    #
    #   # this will not make any requests against S3
    #   object = bucket.objects['foo.jpg']
    #   object.key #=> 'foo.jpg'
    # 
    # == Finding objects with a Prefix
    #
    # Given a bucket with the following keys:
    #
    #   photos/sunset.jpg
    #   photos/sunrise.jpg
    #   photos/winter.jpg
    #   videos/comedy.mpg
    #   videos/dancing.mpg
    #
    # You can list objects that share a prefix:
    #
    #   bucket.objects.with_prefix('videos').collect(&:key)
    #   #=> ['videos/comedy.mpg', 'videos/dancing.mpg']
    #   
    # == Exploring Objects with a Tree Interface
    #
    # Given a bucket with the following keys:
    #
    #   README.txt
    #   videos/wedding.mpg
    #   videos/family_reunion.mpg
    #   photos/2010/house.jpg
    #   photos/2011/fall/leaves.jpg
    #   photos/2011/summer/vacation.jpg
    #   photos/2011/summer/family.jpg
    #
    #   tree = bucket.objects.with_prefix.prefix('photos').as_tree
    #
    #   directories = tree.children.select(&:branch?).collect(&:prefix)
    #   #=> ['photos/2010', 'photos/2011']
    #
    class ObjectCollection

      include Core::Model
      include Enumerable
      include PrefixAndDelimiterCollection

      # @param [Bucket] The S3 bucket this object collection belongs to.
      def initialize(bucket, options = {})
        @bucket = bucket
        super
      end

      # @return [Bucket] The bucket this collection belongs to.
      attr_reader :bucket

      # Writes a new object to S3.
      #
      # The first param is the key you want to write this object to.
      # All other params/options are documented in {S3Object#write}.
      #
      # @see S3Object#write
      #
      # @param [String] key Where in S3 to write the object.
      # @return [S3Object]
      def create key, *args
        self[key].write(*args)
      end

      # Returns an S3Object given its name.  For example:
      #
      # @example
      #   
      #   object = bucket.objects['file.txt']
      #   object.class #=> S3Object
      #
      # @param [String] key The object key.
      # @return [S3Object]
      def [] key
        S3Object.new(bucket, key.to_s)
      end

      # (see PrefixedCollection#with_prefix)
      def with_prefix prefix, mode = :replace
        super(prefix, mode)
      end

      # Iterates the collection, yielding instances of S3Object.
      #
      # Use break or raise an exception to terminate the enumeration.
      #
      # @param [Hash] options
      # @option options [Integer] :limit (nil) The maximum number of 
      #   objects to yield.
      # @option options [Integer] :batch_size (1000) The number of objects to
      #   fetch each request to S3.  Maximum is 1000 keys at time. 
      # @return [nil]
      def each options = {}, &block
        super
      end

      # @private
      protected
      def each_member_in_page(page, &block)
        super
        page.contents.each do |content|
          yield(S3Object.new(bucket, content.key))
        end
      end

      # @private
      protected
      def list_request(options)
        client.list_objects(options)
      end

      # @private
      protected
      def limit_param
        :max_keys
      end

      # @private
      protected
      def page_size resp
        super + resp.contents.size
      end

      # @private
      protected
      def next_markers page
        { :marker => (last = page.contents.last and last.key) }
      end

    end

  end
end
