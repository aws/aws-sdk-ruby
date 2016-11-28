require_relative 'spec_helper'

module Aws
  describe Partitions do

    let(:partitions) { Partitions.partitions }

    describe '.partition' do

      %w(aws aws-cn aws-us-gov).each do |p|
        it "can return a partition by name: #{p.inspect}" do
          partition = partitions.partition(p)
          expect(partition).to be_kind_of(Partitions::Partition)
          expect(partition.name).to eq(p)
        end
      end

      it 'raises ArgumentError on unknown partition names' do
        expect {
          partitions.partition('fake-name')
        }.to raise_error(ArgumentError, /invalid partition name/)
      end

    end

    describe '.partitions' do

      it 'returns a list of Partition objects' do
        expect(partitions.map(&:name).sort).to eq(%w(aws aws-cn aws-us-gov).sort)
        partitions.each do |p|
          expect(p).to be_kind_of(Partitions::Partition)
        end
      end

    end

    describe Partitions::Partition do

      describe '#name' do

        it 'returns the partition name' do
          expect(partitions.partition('aws').name).to eq('aws')
        end

      end

      describe '#region' do

        it 'gets a region by name' do
          region = partitions.partition('aws').region('us-east-1')
          expect(region).to be_kind_of(Partitions::Region)
          expect(region.name).to eq('us-east-1')
        end

        it 'returns a list of supported services with the region' do
          region = partitions.partition('aws').region('us-east-1')
          expect(region.services.sort).to include('DynamoDB')
        end

        it 'raises ArgumentError for unknown regions' do
          expect {
            partitions.partition('aws').region('us-EAST-1') # wrong format
          }.to raise_error(ArgumentError, /invalid region name/)
        end

        it 'provides a list of valid region names in the argument error' do
          expect {
            partitions.partition('aws').region('fake-region')
          }.to raise_error(ArgumentError, /us-east-1, /)
        end

      end

      describe '#regions' do

        it 'returns an array of Region objects' do
          expect(partitions.partition('aws').regions).to be_kind_of(Array)
        end

        it 'includes regions from the current partition' do
          {
            'aws' => 'us-east-1',
            'aws-cn' => 'cn-north-1',
            'aws-us-gov' => 'us-gov-west-1',
          }.each_pair do |p, r|
            expect(partitions.partition(p).regions.map(&:name)).to include(r)
          end
        end

        it 'does not include the partition global endpoint name' do
          regions = partitions.partition('aws').regions
          expect(regions.map(&:name)).not_to include('aws-global')
        end

      end

      describe '#service' do

        it 'can return a service by name' do
          service = partitions.partition('aws').service('EC2')
          expect(service).to be_kind_of(Partitions::Service)
          expect(service.name).to eq('EC2')
        end

        it 'raises ArgumentError for unknown regions' do
          expect {
            partitions.partition('aws').region('us-EAST-1') # wrong format
          }.to raise_error(ArgumentError, /invalid region name/)
        end

        it 'provides a list of valid region names in the argument error' do
          expect {
            partitions.partition('aws').region('fake-region')
          }.to raise_error(ArgumentError, /us-east-1, /)
        end
      end

      describe '#services' do

        it 'returns a list of supported services' do
          services = partitions.partition('aws').services.map(&:name)
          expect(services).to include('EC2')
          expect(services).to include('DynamoDB')
          expect(services).to include('S3')
        end

      end

    end

    describe Partitions::Region do

      it '#name returns the region name' do
        region = partitions.partition('aws').region('us-east-1')
        expect(region.name).to eq('us-east-1')
      end

      it '#description returns the region name' do
        region = partitions.partition('aws').region('us-east-1')
        expect(region.description).to eq('US East (N. Virginia)')
      end

      it '#partition_name returns the partition name' do
        region = partitions.partition('aws').region('us-east-1')
        expect(region.partition_name).to eq('aws')
      end

      it '#services returns the list of services available in region' do
        region = partitions.partition('aws').region('us-east-1')
        expect(region.services.sort).to include('DynamoDB')
      end

    end

    describe Partitions::Service do

      it '#name returns the service name' do
        expect(partitions.partition('aws').service('IAM').name).to eq('IAM')
      end

      it '#partition_name returns the parition name' do
        expect(partitions.partition('aws').service('IAM').partition_name).to eq('aws')
      end

      it '#regions returns partition regions for the service' do
        expect(partitions.partition('aws').service('IAM').partition_name).to eq('aws')
      end

      it '#partition_region returns the partition global endpoint region' do
        svc = partitions.partition('aws').service('IAM')
        expect(svc.partition_region).to eq('aws-global')
        svc = partitions.partition('aws-cn').service('IAM')
        expect(svc.partition_region).to eq('aws-cn-global')
        svc = partitions.partition('aws').service('EC2')
        expect(svc.partition_region).to be(nil)
      end

      it '#regionalized? returns true if the service is regionalized' do
        svc = partitions.partition('aws').service('IAM')
        expect(svc.regionalized?).to be(false)
        svc = partitions.partition('aws').service('EC2')
        expect(svc.regionalized?).to be(true)
      end

      it '#regions returns the list of regions the service is available in' do
        svc = partitions.partition('aws').service('IAM')
        expect(svc.regions.sort).to eq([])
        svc = partitions.partition('aws').service('EC2')
        expect(svc.regions).to include('us-east-1')
        expect(svc.regions).to include('us-west-1')
        expect(svc.regions).to include('us-west-2')
      end

    end

    describe 'symmetry' do
      Partitions::PartitionList.new.each do |partition|

        partition.services.each do |service|
          service.regions.each do |region|
            it "#{partition.name} : service #{service.name} : region #{region}" do
              expect(partition.region(region).services).to include(service.name)
            end
          end
        end

        partition.regions.each do |region|
          region.services.each do |service|

            it "#{partition.name} : region #{region.name} : service #{service}" do
              expect(partition.service(service).regions).to include(region.name)
            end

          end
        end

      end
    end
  end
end
