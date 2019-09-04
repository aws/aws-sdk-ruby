require 'spec_helper'

module Aws
  module Partitions
    describe 'Partitions' do

      describe '.partition' do

        %w(aws aws-cn aws-us-gov).each do |p|
          it "can return a partition by name: #{p.inspect}" do
            partition = Aws.partition(p)
            expect(partition).to be_kind_of(Partition)
            expect(partition.name).to eq(p)
          end
        end

        it 'raises ArgumentError on unknown partition names' do
          expect {
            Aws.partition('fake-name')
          }.to raise_error(ArgumentError, /invalid partition name/)
        end

      end

      describe '.partitions' do

        it 'returns a list of Partition objects' do
          partitions = Aws.partitions
          expect(partitions.map(&:name).sort).to include("aws", "aws-cn", "aws-us-gov")
          partitions.each do |p|
            expect(p).to be_kind_of(Partition)
          end
        end

      end

      describe Partition do

        describe '#name' do

          it 'returns the partition name' do
            expect(Aws.partition('aws').name).to eq('aws')
          end

        end

        describe '#region' do

          it 'gets a region by name' do
            region = Aws.partition('aws').region('us-east-1')
            expect(region).to be_kind_of(Partitions::Region)
            expect(region.name).to eq('us-east-1')
          end

          it 'returns a list of supported services with the region' do
            region = Aws.partition('aws').region('us-east-1')
            expect(region.services).to include('EC2')
            expect(region.services).not_to include('Route53')
          end

          it 'raises ArgumentError for unknown regions' do
            expect {
              Aws.partition('aws').region('us-EAST-1') # wrong format
            }.to raise_error(ArgumentError, /invalid region name/)
          end

          it 'provides a list of valid region names in the argument error' do
            expect {
              Aws.partition('aws').region('fake-region')
            }.to raise_error(ArgumentError, /us-east-1, /)
          end

        end

        describe '#regions' do

          it 'returns an array of Region objects' do
            expect(Aws.partition('aws').regions).to be_kind_of(Array)
          end

          it 'includes regions from the current partition' do
            {
              'aws' => 'us-east-1',
              'aws-cn' => 'cn-north-1',
              'aws-us-gov' => 'us-gov-west-1',
            }.each_pair do |p, r|
              expect(Aws.partition(p).regions.map(&:name)).to include(r)
            end
          end

          it 'does not include the partition global endpoint name' do
            regions = Aws.partition('aws').regions
            expect(regions.map(&:name)).not_to include('aws-global')
          end

        end

        describe '#service' do

          Aws::SERVICE_MODULE_NAMES.each do |svc_name|
            next if svc_name == 'CloudSearchDomain'
            it "can return a service by name: #{svc_name}" do
              service = Aws.partition('aws').service(svc_name)
              expect(service).to be_kind_of(Partitions::Service)
              expect(service.name).to eq(svc_name)
            end
          end

          it 'raises ArgumentError for unknown regions' do
            expect {
              Aws.partition('aws').region('us-EAST-1') # wrong format
            }.to raise_error(ArgumentError, /invalid region name/)
          end

          it 'provides a list of valid region names in the argument error' do
            expect {
              Aws.partition('aws').region('fake-region')
            }.to raise_error(ArgumentError, /us-east-1, /)
          end
        end

        describe '#services' do

          it 'returns a list of supported services' do
            services = Aws.partition('aws').services.map(&:name)
            Aws::SERVICE_MODULE_NAMES.each do |svc_name|
              expect(services).to include(svc_name)
            end
          end

        end

      end

      describe Region do

        it '#name returns the region name' do
          region = Aws.partition('aws').region('us-east-1')
          expect(region.name).to eq('us-east-1')
        end

        it '#description returns the region name' do
          region = Aws.partition('aws').region('us-east-1')
          expect(region.description).to eq('US East (N. Virginia)')
        end

        it '#partition_name returns the partition name' do
          region = Aws.partition('aws').region('us-east-1')
          expect(region.partition_name).to eq('aws')
        end

        it '#services returns the list of services available in region' do
          region = Aws.partition('aws').region('us-east-1')
          expect(region.services).to include('EC2')
          expect(region.services).not_to include('Route53')
        end

      end

      describe Service do

        it '#name returns the service name' do
          expect(Aws.partition('aws').service('IAM').name).to eq('IAM')
        end

        it '#partition_name returns the parition name' do
          expect(Aws.partition('aws').service('IAM').partition_name).to eq('aws')
        end

        it '#regions returns partition regions for the service' do
          expect(Aws.partition('aws').service('IAM').partition_name).to eq('aws')
        end

        it '#partition_region returns the partition global endpoint region' do
          svc = Aws.partition('aws').service('IAM')
          expect(svc.partition_region).to eq('aws-global')
          svc = Aws.partition('aws-cn').service('IAM')
          expect(svc.partition_region).to eq('aws-cn-global')
          svc = Aws.partition('aws').service('EC2')
          expect(svc.partition_region).to be(nil)
        end

        it '#regionalized? returns true if the service is regionalized' do
          svc = Aws.partition('aws').service('IAM')
          expect(svc.regionalized?).to be(false)
          svc = Aws.partition('aws').service('EC2')
          expect(svc.regionalized?).to be(true)
        end

        it '#regions returns the list of regions the service is available in' do
          svc = Aws.partition('aws').service('IAM')
          expect(svc.regions.sort).to eq([])
          expect(svc.partition_region).to eq('aws-global')
          svc = Aws.partition('aws').service('EC2')
          expect(svc.regions).not_to include('aws-global')
          expect(svc.regions).to include('us-east-1')
          expect(svc.regions).to include('us-west-1')
          expect(svc.regions).to include('us-west-2')
        end

      end

      describe 'symmetry' do
        Aws.partitions.each do |partition|

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
end
