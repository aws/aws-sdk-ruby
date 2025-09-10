# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  describe Partitions do
    after { Aws::Partitions.reload_defaults! }

    describe '.each' do
      it 'yields each partition' do
        partitions = Aws::Partitions.map { |p| p }
        expect(partitions).to_not be_empty
        expect(partitions.map(&:id)).to include('aws', 'aws-cn', 'aws-us-gov')
      end

      it 'returns an enumerator when no block is given' do
        enum = Aws::Partitions.each
        expect(enum).to be_kind_of(Enumerator)
        expect(enum.map(&:id)).to include('aws', 'aws-cn', 'aws-us-gov')
      end
    end

    describe '.partition' do
      it 'returns the named partition' do
        aws = Aws::Partitions.partition('aws')
        expect(aws).to be_kind_of(Aws::Partitions::Partition)
        expect(aws.id).to eq('aws')
      end

      it 'raises an ArgumentError for unknown partition names' do
        expect do
          Aws::Partitions.partition('not-a-partition')
        end.to raise_error(ArgumentError, /invalid partition name/)
      end
    end

    describe '.partitions' do
      it 'returns an array of all partitions' do
        partitions = Aws::Partitions.partitions
        expect(partitions).to be_kind_of(Aws::Partitions::PartitionList)
        expect(partitions.map(&:id)).to include('aws', 'aws-cn', 'aws-us-gov')
      end
    end

    describe '.add' do
      it 'adds new partitions' do
        new_partition = {
          'partitions' => [
            {
              'id' => 'aws-mars',
              'outputs' => {
                'dnsSuffix' => 'amazonaws.com',
                'dualStackDnsSuffix' => 'api.aws',
                'implicitGlobalRegion' => 'mars-east-1',
                'supportsDualStack' => true,
                'supportsFIPS' => true
              },
              'regionRegex' => '^mars\\-\\w+\\-\\d+$',
              'regions' => {
                'mars-east-1' => {
                  'description' => 'Mars East (Colony 1)'
                }
              }
            }
          ]
        }
        Aws::Partitions.add(new_partition)

        mars = Aws::Partitions.partition('aws-mars')
        expect(mars.id).to eq('aws-mars')
        expect(mars.dns_suffix).to eq('amazonaws.com')
        expect(mars.dual_stack_dns_suffix).to eq('api.aws')
        expect(mars.implicit_global_region).to eq('mars-east-1')
        expect(mars.supports_dual_stack?).to be true
        expect(mars.supports_fips?).to be true
        expect(mars.region_regex).to eq(Regexp.new('^mars\\-\\w+\\-\\d+$'))
        expect(mars.regions.map(&:name)).to eq(%w[mars-east-1])
      end
    end

    describe '.clear' do
      it 'removes all partitions' do
        expect(Aws::Partitions.partitions).to_not be_empty
        Aws::Partitions.clear
        expect(Aws::Partitions.partitions).to be_empty
      end
    end

    describe '.reload_defaults!' do
      it 'reloads the default partitions' do
        Aws::Partitions.clear
        expect(Aws::Partitions.partitions).to be_empty
        Aws::Partitions.reload_defaults!
        expect(Aws::Partitions.partitions.map(&:id)).to include('aws', 'aws-cn', 'aws-us-gov')
        partition = { 'partitions' => [{ 'id' => 'aws-mars', 'regionRegex' => '^mars\\-\\w+\\-\\d+$' }] }
        Aws::Partitions.add(partition)
        expect(Aws::Partitions.partition('aws-mars').id).to eq('aws-mars')
        Aws::Partitions.reload_defaults!
        expect do
          Aws::Partitions.partition('aws-mars')
        end.to raise_error(ArgumentError, /invalid partition name/)
      end
    end
  end
end
