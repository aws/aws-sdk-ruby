require_relative 'spec_helper'

module Aws
  describe Partitions do
    let(:partitions) { Partitions.partitions }

    describe '.partition' do
      %w[aws aws-cn aws-us-gov].each do |p|
        it "can return a partition by name: #{p.inspect}" do
          partition = partitions.partition(p)
          expect(partition).to be_kind_of(Partitions::Partition)
          expect(partition.name).to eq(p)
        end
      end

      it 'raises ArgumentError on unknown partition names' do
        expect do
          partitions.partition('fake-name')
        end.to raise_error(ArgumentError, /invalid partition name/)
      end
    end

    describe '.partitions' do
      it 'returns a list of Partition objects' do
        expect(partitions.map(&:name)).to include('aws', 'aws-cn', 'aws-us-gov')
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
          expect do
            partitions.partition('aws').region('us-EAST-1') # wrong format
          end.to raise_error(ArgumentError, /invalid region name/)
        end

        it 'provides a list of valid region names in the argument error' do
          expect do
            partitions.partition('aws').region('fake-region')
          end.to raise_error(ArgumentError, /us-east-1, /)
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
            'aws-us-gov' => 'us-gov-west-1'
          }.each_pair do |p, r|
            expect(partitions.partition(p).regions.map(&:name)).to include(r)
          end
        end

        it 'does not include the partition global endpoint name' do
          regions = partitions.partition('aws').regions
          expect(regions.map(&:name)).not_to include('aws-global')
        end
      end

      describe '#region?' do
        it 'returns true if the region is in the current partition' do
          partition = partitions.partition('aws')
          expect(partition.region?('us-east-1')).to be true
        end

        it 'returns false if the region is not in the current partition' do
          partition = partitions.partition('aws')
          expect(partition.region?('fake-region')).to be false
        end
      end

      describe '#service' do
        it 'can return a service by name' do
          service = partitions.partition('aws').service('EC2')
          expect(service).to be_kind_of(Partitions::Service)
          expect(service.name).to eq('EC2')
        end

        it 'raises ArgumentError for unknown regions' do
          expect do
            partitions.partition('aws').region('us-EAST-1') # wrong format
          end.to raise_error(ArgumentError, /invalid region name/)
        end

        it 'provides a list of valid region names in the argument error' do
          expect do
            partitions.partition('aws').region('fake-region')
          end.to raise_error(ArgumentError, /us-east-1, /)
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

      describe '#service?' do
        it 'returns true if the service is in the current partition' do
          partition = partitions.partition('aws')
          expect(partition.service?('S3')).to be true
        end

        it 'returns false if the service is not in the current partition' do
          partition = partitions.partition('aws')
          expect(partition.service?('PeccyService')).to be false
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
        expect(region.services).to include('DynamoDB')
      end
    end

    describe Partitions::Service do
      it '#name returns the service name' do
        svc = partitions.partition('aws').service('S3')
        expect(svc.name).to eq('S3')
      end

      it '#partition_name returns the parition name' do
        svc = partitions.partition('aws').service('S3')
        expect(svc.partition_name).to eq('aws')
      end

      it '#regions returns partition regions for the service' do
        svc = partitions.partition('aws').service('S3')
        expect(svc.regions).to include('us-east-1')
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
            it "#{partition.name}; service #{service.name}; region #{region}" do
              expect(partition.region(region).services).to include(service.name)
            end
          end
        end

        partition.regions.each do |region|
          region.services.each do |service|
            it "#{partition.name}; region #{region.name}; service #{service}" do
              expect(partition.service(service).regions).to include(region.name)
            end
          end
        end
      end
    end

    describe Partitions::EndpointProvider do
      let(:partition_json) do
        path = File.expand_path('../test_partition.json', __FILE__)
        JSON.load(File.read(path))
      end

      before { Partitions.add(partition_json) }

      describe '.resolve' do
        it 'resolves the endpoint to the pattern with https' do
          expect(
            Partitions::EndpointProvider.resolve(
              'us-peccy-1',
              'peccy-service'
            )
          ).to eq('https://peccy-service.us-peccy-1.amazonaws.com')
        end

        it 'respects hostname formulas' do
          expect(
            Partitions::EndpointProvider.resolve(
              'us-peccy-1',
              'crazy-peccy-service'
            )
          ).to eq('https://us-peccy-1.crazy-peccy-service.amazonaws.com')
        end

        context 'global service' do
          it 'resolves a global endpoint' do
            expect(
              Partitions::EndpointProvider.resolve(
                'peccy-global',
                'global-peccy-service'
              )
            ).to eq('https://global-peccy-service.amazonaws.com')
          end
        end

        context 'STS' do
          it 'resolves an STS regional endpoint' do
            expect(
              Partitions::EndpointProvider.resolve(
                'us-east-1',
                'sts',
                'regional'
              )
            ).to eq('https://sts.us-east-1.amazonaws.com')
          end

          it 'defaults to legacy global behavior' do
            expect(
              Partitions::EndpointProvider.resolve(
                'us-east-1',
                'sts'
              )
            ).to eq('https://sts.amazonaws.com')
          end
        end
      end

      describe '.signing_region' do
        it 'gets the signing region for a given region and service' do
          expect(
            Partitions::EndpointProvider.signing_region(
              'peccy-global',
              'global-peccy-service'
            )
          ).to eq('us-peccy-1')
        end
      end

      describe '.dns_suffix_for' do
        it 'gets the dns suffix for a region' do
          expect(
            Partitions::EndpointProvider.dns_suffix_for('us-peccy-1')
          ).to eq('amazonaws.com')
        end
      end
    end
  end
end
