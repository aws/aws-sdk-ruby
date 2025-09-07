# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Partitions
    describe Partition do
      let(:options) do
        {
          id: 'aws',
          dns_suffix: 'amazonaws.com',
          dual_stack_dns_suffix: 'api.aws',
          implicit_global_region: 'us-east-1',
          supports_dual_stack: true,
          supports_fips: true,
          region_regex: /^us-\w+-\d+$/
        }
      end

      let(:partition) { Partition.new(options) }

      describe '#id' do
        it 'returns the partition ID' do
          expect(partition.id).to eq('aws')
        end
      end

      describe '#dns_suffix' do
        it 'returns the DNS suffix' do
          expect(partition.dns_suffix).to eq('amazonaws.com')
        end
      end

      describe '#dual_stack_dns_suffix' do
        it 'returns the dual-stack DNS suffix' do
          expect(partition.dual_stack_dns_suffix).to eq('api.aws')
        end
      end

      describe '#implicit_global_region' do
        it 'returns the implicit global region' do
          expect(partition.implicit_global_region).to eq('us-east-1')
        end
      end

      describe '#supports_dual_stack' do
        it 'returns whether dual-stack is supported' do
          expect(partition.supports_dual_stack).to be(true)
        end
      end

      describe '#supports_fips' do
        it 'returns whether FIPS is supported' do
          expect(partition.supports_fips).to be(true)
        end
      end

      describe '#region_regex' do
        it 'returns the region regex' do
          expect(partition.region_regex).to eq(/^us-\w+-\d+$/)
        end
      end

      describe '#region' do
        it 'returns the named region' do
          region = Region.new('us-east-1', partition_name: 'aws')
          partition.add_region(region)
          expect(partition.region('us-east-1')).to be(region)
        end

        it 'raises ArgumentError for unknown region names' do
          expect do
            partition.region('not-a-region')
          end.to raise_error(ArgumentError, /invalid region name/)
        end
      end

      describe '#regions' do
        it 'returns an array of regions' do
          region1 = Region.new('us-east-1', partition_name: 'aws')
          region2 = Region.new('us-west-2', partition_name: 'aws')
          partition.add_region(region1)
          partition.add_region(region2)
          expect(partition.regions).to eq([region1, region2])
        end
      end

      describe '#add_region' do
        it 'adds a region to the partition' do
          region = Region.new('us-east-1', partition_name: 'aws')
          partition.add_region(region)
          expect(partition.regions).to include(region)
        end

        it 'raises ArgumentError if the value is not a Region' do
          expect do
            partition.add_region('not-a-region')
          end.to raise_error(ArgumentError, /expected Region/)
        end
      end
    end
  end
end
