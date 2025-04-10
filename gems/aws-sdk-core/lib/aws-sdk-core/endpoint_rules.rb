# frozen_string_literal: true

require 'json'

module Aws
  module Core
    # @api private
    module EndpointRules
      # aws.partition(region: string) Option<Partition>
      def self.aws_partition(region)
        # TODO: aws-partitions gem or aws-sdk-core gem
        path = File.expand_path('partitions.json', __dir__)
        partitions = JSON.load_file(path)['partitions']

        partition =
          partitions.find { |p| p['regions']&.fetch(region, nil) } ||
          partitions.find { |p| region.match(p['regionRegex']) } ||
          partitions.find { |p| p['id'] == 'aws' }

        return nil unless partition

        partition['outputs']
      end
    end
  end
end
