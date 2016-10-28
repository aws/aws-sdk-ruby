require_relative '../../../spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe CollectionClass do

        let(:delete_sample) {{
          'batchActions' => {
             'Delete' => {
              'request' => {
                'operation' => 'DeleteBands',
                'params' => [
                  {
                    'target' => 'BandGroup',
                    'source' => 'identifier',
                    'name' => 'GroupName'
                  },
                  { 'target' => 'Band[]',
                    'source' => 'identifier',
                    'name' => 'BandName',
                  },
                ],
              }
            }
          }
        }}

        let(:terminate_sample) {{
          'batchActions' => {
             'Terminate' => {
              'request' => {
                'operation' => 'TerminateConcerts',
                'params' => [
                  { 'target' => 'Concerts[*].ConcertName',
                    'source' => 'identifier',
                    'name' => 'ConcertName',
                  },
                  { 'target' => 'Concerts[*].ConcertLocation',
                    'source' => 'identifier',
                    'name' => 'ConcertLocation',
                  },
                ],
              }
            }
          }
        }}

        it 'prefixes batch operation with batch_ and suffixes terminate with a bang(!)' do
          collection = CollectionClass.new(
            resource_name: 'Concert',
            resource: terminate_sample
          )
          expect(SpecHelper.code(collection)).to eq(<<-CODE)
class Collection < Aws::Resources::Collection

  # @!group Batch Actions

  # @param options ({})
  # @return [void]
  def batch_terminate!(options = {})
    batch_enum.each do |batch|
      params = Aws::Util.copy_hash(options)
      params[:terminate] ||= {}
      params[:terminate][:concerts] ||= []
      batch.each do |item|
        params[:terminate][:concerts] << {
          concert_name: item.concert_name,
          concert_location: item.concert_location
        }
      end
      batch[0].client.terminate_concerts(params)
    end
    nil
  end

  # @!endgroup

end
          CODE
        end

        it 'prefixes batch operation with batch_ and suffixes delete with a bang(!)' do
          collection = CollectionClass.new(
            resource_name: 'Band',
            resource: delete_sample
          )
          expect(SpecHelper.code(collection)).to eq(<<-CODE)
class Collection < Aws::Resources::Collection

  # @!group Batch Actions

  # @param options ({})
  # @return [void]
  def batch_delete!(options = {})
    batch_enum.each do |batch|
      params = Aws::Util.copy_hash(options)
      params[:band_group] = batch[0].group_name
      params[:delete] ||= {}
      params[:delete][:band] ||= []
      batch.each do |item|
        params[:delete][:band] << {
          band_name: item.band_name
        }
      end
      batch[0].client.delete_bands(params)
    end
    nil
  end

  # @!endgroup

end
          CODE
        end
      end
    end
  end
end
