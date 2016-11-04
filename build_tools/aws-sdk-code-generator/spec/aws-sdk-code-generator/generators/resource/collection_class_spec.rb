require_relative '../../../spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe CollectionClass do

        let(:delete_api) {{
          'operations' => {
            'DeleteBands' => {
              'input' => {
                'shape' => 'DeleteBandsRequest'
              }
            }
          },
          'shapes' => {
            'DeleteBandsRequest' => {
              'type' => 'structure',
              'required' => [ 'BandGroup', 'Delete' ],
              'members' => {
                'BandGroup' => {
                  'shape' => 'GroupName',
                  'locationName' => 'BandGroup'  
                },
                'Delete' => {
                  'shape' => 'Delete',
                  'locationName' => 'Delete'
                },
                'BandsPrefix' => {
                  'shape' => 'String',
                }
              }
            },
            'String' => { 'type' => 'string' },
            'GroupName' => { 'type' => 'string' },
            'Delete' => {
              'type' => 'structure',
              'required' => [ 'Bands' ],
              'members' => {
                'Bands' => {
                  'shape' => 'BandIdentifierList',
                  'locationName' => 'Band'
                }
              }
            },
            'BandIdentifierList' => {
              'type' => 'list',
              'member' => {
                'shape' => 'BandIdentifier'
              }
            },
            'BandIdentifier' => {
              'type' => 'structure',
              'required' => [ 'BandName' ],
              'members' => {
                'BandName' => {
                  'shape' => 'String'
                }
              }
            }
          }
        }}

        let(:terminate_api) {{
          'operations' => {
            'TerminateConcerts' => {
              'input' => {
                'shape' => 'TerminateConcertsRequest'
              }
            }
          },
          'shapes' => {
            'TerminateConcertsRequest' => {
              'type' => 'structure',
              'required' => [ 'Resources','Concerts' ],
              'members' => {
                'Concerts' => {
                  'shape' => 'ConcertIdentifierList',
                  'locationName' => 'Concert'
                },
                'Resources' => {
                  'shape' => 'ResourceIdentifierList',
                  'locationName' => 'Resource'
                },
                'ConcertsPrefix' => {
                  'shape' => 'String',
                }
              }
            },
            'String' => { 'type' => 'string' },
            'ConcertIdentifierList' => {
              'type' => 'list',
              'member' => {
                'shape' => 'ConcertIdentifier'
              }
            },
            'ConcertIdentifier' => {
              'type' => 'structure',
              'required' => [ 'ConcertName', 'ConcertLocation' ],
              'members' => {
                'ConcertName' => {
                  'shape' => 'String'
                },
                'ConcertLocation' => {
                  'shape' => 'String'
                }
              }
            },
            'ResourceIdentifierList' => {
              'type' => 'list',
              'member' => {
                'shape' => 'ResourceIdentifier'
              }
            },
            'ResourceIdentifier' => {
              'type' => 'structure',
              'required' => [ 'ResourceId' ],
              'members' => {
                'ResourceId' => {
                  'shape' => 'String'
                }
              }
            }
          }
        }}

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
                  { 'target' => 'Delete.Band[]',
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
                  {
                    'target' => 'Resources[]',
                    'source' => 'identifier',
                    'name' => 'ResourceId'
                  },
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
            resource: terminate_sample,
            api: terminate_api
          )
          expect(SpecHelper.code(collection)).to eq(<<-CODE)
class Collection < Aws::Resources::Collection

  # @!group Batch Actions

  # @example Request syntax with placeholder values
  #
  #   concert.batch_terminate!({
  #     concerts_prefix: "String",
  #   })
  # @param options ({})
  # @option options [String] :concerts_prefix
  # @return [void]
  def batch_terminate!(options = {})
    batch_enum.each do |batch|
      params = Aws::Util.copy_hash(options)
      params[:resources] ||= []
      params[:concerts] ||= []
      batch.each do |item|
        params[:resources] << {
          resource_id: item.resource_id
        }
        params[:concerts] << {
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
            resource: delete_sample,
            api: delete_api
          )
          expect(SpecHelper.code(collection)).to eq(<<-CODE)
class Collection < Aws::Resources::Collection

  # @!group Batch Actions

  # @example Request syntax with placeholder values
  #
  #   band.batch_delete!({
  #     bands_prefix: "String",
  #   })
  # @param options ({})
  # @option options [String] :bands_prefix
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
