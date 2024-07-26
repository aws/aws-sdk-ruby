# frozen_string_literal: true

# Modify load path to include all of our gems from local repo
Dir.glob("gems/*/lib") do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

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