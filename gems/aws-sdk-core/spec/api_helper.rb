# frozen_string_literal: true

require 'smithy'

module ApiHelper
  class << self
    def sample_shapes
      {
        'smithy.ruby.tests#SampleClient' => {
          'type' => 'service',
          'operations' => [
            { 'target' => 'smithy.ruby.tests#Operation' }
          ],
          'errors' => [
            { 'target' => 'smithy.ruby.tests#Error' }
          ],
          'traits' => { 'smithy.protocols#rpcv2Cbor' => {} }
        },
        'smithy.ruby.tests#Operation' => {
          'type' => 'operation',
          'input' => { 'target' => 'smithy.ruby.tests#Structure' },
          'output' => { 'target' => 'smithy.ruby.tests#Structure' }
        },
        'smithy.ruby.tests#Enum' => {
          'type' => 'enum',
          'members' => {
            'member' => {
              'target' => 'smithy.api#Unit',
              'traits' => { 'smithy.api#enumValue' => 'value' }
            }
          }
        },
        'smithy.ruby.tests#Error' => {
          'type' => 'structure',
          'members' => {
            'message' => { 'target' => 'smithy.api#String' }
          },
          'traits' => { 'smithy.api#error' => {} }
        },
        'smithy.ruby.tests#intEnum' => {
          'type' => 'intEnum',
          'members' => {
            'member' => {
              'target' => 'smithy.api#Unit',
              'traits' => { 'smithy.api#enumValue' => 1 }
            }
          }
        },
        'smithy.ruby.tests#List' => {
          'type' => 'list',
          'member' => { 'target' => 'smithy.api#String' }
        },
        'smithy.ruby.tests#StructureList' => {
          'type' => 'list',
          'member' => { 'target' => 'smithy.ruby.tests#Structure' }
        },
        'smithy.ruby.tests#Map' => {
          'type' => 'map',
          'key' => { 'target' => 'smithy.api#String' },
          'value' => { 'target' => 'smithy.api#String' }
        },
        'smithy.ruby.tests#StructureMap' => {
          'type' => 'map',
          'key' => { 'target' => 'smithy.api#String' },
          'value' => { 'target' => 'smithy.ruby.tests#Structure' }
        },
        'smithy.ruby.tests#StreamingBlob' => {
          'type' => 'blob',
          'traits' => { 'smithy.api#streaming' => {} }
        },
        'smithy.ruby.tests#Structure' => {
          'type' => 'structure',
          'members' => {
            'bigDecimal' => { 'target' => 'smithy.api#BigDecimal' },
            'bigInteger' => { 'target' => 'smithy.api#BigInteger' },
            'blob' => { 'target' => 'smithy.api#Blob' },
            'boolean' => { 'target' => 'smithy.api#Boolean' },
            'byte' => { 'target' => 'smithy.api#Byte' },
            'document' => { 'target' => 'smithy.api#Document' },
            'double' => { 'target' => 'smithy.api#Double' },
            'enum' => { 'target' => 'smithy.ruby.tests#Enum' },
            'float' => { 'target' => 'smithy.api#Float' },
            'intEnum' => { 'target' => 'smithy.ruby.tests#intEnum' },
            'integer' => { 'target' => 'smithy.api#Integer' },
            'list' => { 'target' => 'smithy.ruby.tests#List' },
            'long' => { 'target' => 'smithy.api#Long' },
            'map' => { 'target' => 'smithy.ruby.tests#Map' },
            'short' => { 'target' => 'smithy.api#Short' },
            'streamingBlob' => {
              'target' => 'smithy.ruby.tests#StreamingBlob',
              'traits' => {
                'smithy.api#required' => {},
                'smithy.api#clientOptional' => {}
              }
            },
            'string' => { 'target' => 'smithy.api#String' },
            'structure' => { 'target' => 'smithy.ruby.tests#Structure' },
            'structureList' => { 'target' => 'smithy.ruby.tests#StructureList' },
            'structureMap' => { 'target' => 'smithy.ruby.tests#StructureMap' },
            'timestamp' => { 'target' => 'smithy.api#Timestamp' },
            'union' => { 'target' => 'smithy.ruby.tests#Union' }
          }
        },
        'smithy.ruby.tests#Union' => {
          'type' => 'union',
          'members' => {
            'string' => { 'target' => 'smithy.api#String' },
            'structure' => { 'target' => 'smithy.ruby.tests#Structure' },
            'unit' => { 'target' => 'smithy.api#Unit' }
          }
        }
      }
    end

    def sample_client(options = {})
      module_name = options[:module_name] || next_sample_module_name
      model = options[:model] ||= model(options)
      plan = create_plan(module_name, model, options)
      source = Smithy.source(plan)
      Object.module_eval(source)
      Object.const_get(module_name)
    rescue LoadError => e
      puts "Error evaluating source:\n#{source}"
      raise e
    end

    private

    def create_plan(module_name, model, options)
      plan_options = {
        module_name: module_name,
        gem_version: options[:gem_version] || '0.1.0',
        quiet: true
      }
      Smithy::Plan.new(model, :client, plan_options)
    end

    def model(options)
      {
        'smithy' => smithy(options),
        'shapes' => shapes(options)
      }
    end

    def smithy(options)
      options.delete(:smithy) || '2.0'
    end

    def shapes(options)
      options.delete(:shapes) || sample_shapes
    end

    def next_sample_module_name
      @sample_client_count ||= 0
      @sample_client_count += 1
      "SampleClient#{@sample_client_count}"
    end
  end
end
