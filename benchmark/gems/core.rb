# frozen_string_literal: true

module Benchmark
  module Gems
    class Core < Benchmark::Gem

      def gem_name
        'aws-sdk-core'
      end

      # Core does not have a client and does not have any operation benchmarks
    end
  end
end