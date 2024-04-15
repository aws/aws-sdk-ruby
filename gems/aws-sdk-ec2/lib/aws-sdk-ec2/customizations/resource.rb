# frozen_string_literal: true

module Aws
  module EC2

    # 5 of EC2's old APIs DescribeInstances, DescribeImages, DescribeSnapshots, DescribeVolumes and DescribeTag
    # support paginated calls and will not paginate server side unless max_results is set to a non-nil value.
    # This module customizes the resource association methods by adding a default value of 1000 to max_results
    # to ensure results are paginated.
    module ResourcePaginationFix
      def images(options = {})
        options[:max_results] ||= 1000
        super(options)
      end

      def instances(options = {})
        options[:max_results] ||= 1000
        super(options)
      end

      def snapshots(options = {})
        options[:max_results] ||= 1000
        super(options)
      end

      def volumes(options = {})
        options[:max_results] ||= 1000
        super(options)
      end
    end

    class Resource
      prepend ResourcePaginationFix
      def create_tags(options)
        resp = Aws::Plugins::UserAgent.feature('resource') do
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
