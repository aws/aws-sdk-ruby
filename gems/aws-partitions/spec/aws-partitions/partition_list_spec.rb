# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Partitions
    describe PartitionList do
      let(:partition1) do
        p = Partition.new(id: 'aws')
        p.add_region(Region.new('us-east-1', partition_name: 'aws'))
        p.add_region(Region.new('us-west-2', partition_name: 'aws'))
        p
      end

      let(:partition2) do
        p = Partition.new(id: 'aws-cn')
        p.add_region(Region.new('cn-north-1', partition_name: 'aws-cn'))
        p
      end

      let(:partition_list) do
        pl = PartitionList.new
        pl.add_partition(partition1)
        pl.add_partition(partition2)
        pl
      end

      describe '#each' do
        it 'yields each partition' do
          partitions = partition_list.map { |p| p }
          expect(partitions.size).to eq(2)
          expect(partitions).to include(partition1)
          expect(partitions).to include(partition2)
        end

        it 'returns an enumerator if no block is given' do
          expect(partition_list.each).to be_kind_of(Enumerator)
        end
      end

      describe '#partition' do
        it 'returns the named partition' do
          expect(partition_list.partition('aws')).to be(partition1)
          expect(partition_list.partition('aws-cn')).to be(partition2)
        end

        it 'raises ArgumentError for unknown partition names' do
          expect do
            partition_list.partition('aws-not-real')
          end.to raise_error(ArgumentError, /invalid partition name/)
        end
      end

      describe '#partitions' do
        it 'returns an array of partitions' do
          expect(partition_list.partitions).to eq([partition1, partition2])
        end
      end

      describe '#add_partition' do
        it 'adds the partition' do
          list = PartitionList.new
          list.add_partition(partition1)
          expect(list.partitions).to eq([partition1])
        end

        it 'raises ArgumentError if the value is not a Partition' do
          list = PartitionList.new
          expect do
            list.add_partition('not-a-partition')
          end.to raise_error(ArgumentError, /expected Partition/)
        end
      end

      describe '#clear' do
        it 'removes all partitions' do
          expect(partition_list.partitions.size).to eq(2)
          partition_list.clear
          expect(partition_list.partitions.size).to eq(0)
        end
      end

      describe '#empty?' do
        it 'returns true if the list is empty' do
          list = PartitionList.new
          expect(list.empty?).to be(true)
          list.add_partition(partition1)
          expect(list.empty?).to be(false)
        end
      end
    end
  end
end
