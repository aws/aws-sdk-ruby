# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Partitions
    describe Region do
      let(:options) do
        {
          description: 'US East (N. Virginia)',
          partition_name: 'aws'
        }
      end

      let(:region) { Region.new('us-east-1', options) }

      describe '#name' do
        it 'returns the region name' do
          expect(region.name).to eq('us-east-1')
        end
      end

      describe '#description' do
        it 'returns the region description' do
          expect(region.description).to eq('US East (N. Virginia)')
        end
      end

      describe '#partition_name' do
        it 'returns the partition name' do
          expect(region.partition_name).to eq('aws')
        end
      end
    end
  end
end
