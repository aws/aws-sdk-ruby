# frozen_string_literal: true

module Aws
  module EC2

    # 5 of EC2's old APIs DescribeInstances, DescribeImages, DescribeSnapshots, DescribeVolumes and DescribeTag
    # support paginated calls and will not paginate server side unless max_results is set to a non-nil value.
    # This module customizes the resource association methods by adding a default value of 1000 to max_results
    # to ensure results are paginated.
    module ResourcePaginationFix
      def images(options = {})
        # Prevent the error:
        # The parameter imageIdsSet cannot be used with the parameter maxResults
        if options[:image_ids].nil? || options[:image_ids].empty?
          options[:max_results] ||= 1000
        end
        super(options)
      end

      def instances(options = {})
        # Prevent the error:
        # The parameter instancesSet cannot be used with the parameter maxResults
        if options[:instance_ids].nil? || options[:instance_ids].empty?
          options[:max_results] ||= 1000
        end
        super(options)
      end

      def snapshots(options = {})
        # Prevent the error:
        # The parameter snapshotSet cannot be used with the parameter maxResults
        if options[:snapshot_ids].nil? || options[:snapshot_ids].empty?
          options[:max_results] ||= 1000
        end
        super(options)
      end

      def volumes(options = {})
        # Prevent the error:
        # The parameter volumeIdsSet cannot be used with the parameter maxResults
        if options[:volume_ids].nil? || options[:volume_ids].empty?
          options[:max_results] ||= 1000
        end
        super(options)
      end
    end

    class Resource
      prepend ResourcePaginationFix
      def create_tags(options)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.create_tags(options)
        end
        tags = []
        options[:resources].each do |resource_id|
          options[:tags].each do |tag|
            tags << Tag.new(resource_id, tag[:key], tag[:value], client: @client)
          end
        end
        Tag::Collection.new([tags], size: tags.size)
      end
    end

  end
end
