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
                  { 'target' => 'Band[].BandName',
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
                  { 'target' => 'Concerts[*].ConertName',
                    'source' => 'identifier',
                    'name' => 'ConcertName',
                  },
                  { 'target' => 'Concerts[*].ConertLocation',
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
    if ! options.is_a? Hash
      raise ArgumentError, 'expected :options to be a Hash.'
    end
    batch_enum.each do |batch|
      params = Aws::Util.deep_merge(options, {
        terminate: {
          concerts: []
        }
      })
      batch.each do |item|
        params[:terminate][:concerts] << {
          conert_name: item.conert_name,
          conert_location: item.conert_location
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
    if ! options.is_a? Hash
      raise ArgumentError, 'expected :options to be a Hash.'
    end
    batch_enum.each do |batch|
      params = Aws::Util.deep_merge(options, {
        bandgroup: batch[0].group_name,
        delete: {
          band: []
        }
      })
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

        it 'it validates batch args, accepts 0 or 1 arguments' do

        end
      end
    end
  end
end
