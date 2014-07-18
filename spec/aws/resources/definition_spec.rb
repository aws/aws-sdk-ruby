require 'spec_helper'

module Aws
  module Resource
    describe Definition do

      describe '#define_service' do

        let(:client_class) { double('client-class', api: api) }

        let(:client) { double('client', class: client_class) }

        let(:definition) {{
          'service' => {},
          'resources' => {},
        }}

        let(:shapes) {{}}

        let(:api) { Seahorse::Model::Api.new('shapes' => shapes) }

        let(:namespace) { Module.new }

        let(:service_class) {
          errors = Validator.validate(definition, api)
          expect(errors).to be_empty, lambda { errors.join("\n") }
          Definition.new(namespace, definition).apply('Svc', client_class)
        }

        let(:service) { service_class.new }

        before(:each) do
          allow(client_class).to receive(:new).and_return(client)
        end

        describe 'service' do

          it 'constructs default clients' do
            expect(client_class).to receive(:new).and_return(client)
            definition = Definition.new(namespace, definition)
            definition.apply('Name', client_class)
            expect(svc.client_class).to be(client_class)
            expect(svc.new.client).to be(client)
          end

          it 'defines a resource class for each named resource' do
            definition['resources'] = {
              'Group' => { 'identifiers' => [{ 'name' => 'Id' }] },
              'User' => { 'identifiers' => [{ 'name' => 'Name' }] },
            }

            service_class

            expect(namespace.constants.sort).to eq([:Group, :User])

            user = namespace::User.new(name:'user-name')
            expect(user).to be_kind_of(Resource::Base)
            expect(user.identifiers).to eq(name:'user-name')

            group = namespace::Group.new(id:'group-id')
            expect(group).to be_kind_of(Resource::Base)
            expect(group.identifiers).to eq(id:'group-id')
          end

          describe 'actions' do

            it 'supports basic operations' do
              definition['service'] = {
                'actions' => {
                  'DoSomething' => {
                    'request' => {
                      'operation' => 'ClientMethod'
                    }
                  }
                }
              }

              expect(service).to respond_to(:do_something)

              client_response = double('client-response')
              expect(client).to receive(:client_method).
                with(foo:'bar').
                and_return(client_response)

              resp = service.do_something(foo:'bar')
              expect(resp).to be(client_response)
            end

            it 'supports operations that extract data' do
              definition['service'] = {
                'actions' => {
                  'DoSomething' => {
                    'request' => {
                      'operation' => 'ClientMethod'
                    },
                    'path' => 'Nested.Value'
                  }
                }
              }

              expect(client).to receive(:client_method).
                and_return(double('client-response',
                  data: { 'nested' => { 'value' => 'nested-value' }}
                ))

              resp = service.do_something(foo:'bar')
              expect(resp).to eq('nested-value')
            end

            it 'supports operations that return singular resources' do
              definition.update(
                'service' => {
                  'actions' => {
                    'CreateThing' => {
                      'request' => {
                        'operation' => 'MakeThing'
                      },
                      'resource' => {
                        'type' => 'Thing',
                        'identifiers' => [
                          {
                            'target' => 'Name',
                            'sourceType' => 'requestParameter',
                            'source' => 'ThingName'
                          }
                        ]
                      }
                    }
                  }
                },
                'resources' => {
                  'Thing' => {
                    'identifiers' => [{ 'name' => 'Name' }]
                  }
                }
              )

              expect(client).to receive(:make_thing).
                with(thing_name:'thing-name') do |params|
                  double('client-response',
                    context: double('request-context', params:params))
                end

              thing = service.create_thing(thing_name:'thing-name')
              expect(thing).to be_kind_of(service_class::Thing)
              expect(thing.client).to be(service.client)
              expect(thing.name).to eq('thing-name')
            end

            it 'accepts identifier names in place of request params' do
              # For this test case to work, request params must be renamed
              # following the resource identifier soources.  In this example
              # the "MakeThing" request requires a "ThingName" param, and
              # we want the user to be able to specify "Name" (the idenitifer
              # target) or "ThingName" (the request param).
              pending('not implemented')
              definition.update(
                'service' => {
                  'actions' => {
                    'CreateThing' => {
                      'request' => {
                        'operation' => 'MakeThing'
                      },
                      'resource' => {
                        'type' => 'Thing',
                        'identifiers' => [
                          {
                            'target' => 'Name',
                            'sourceType' => 'requestParameter',
                            'source' => 'ThingName'
                          }
                        ]
                      }
                    }
                  }
                },
                'resources' => {
                  'Thing' => {
                    'identifiers' => [{ 'name' => 'Name' }]
                  }
                }
              )

              expect(client).to receive(:make_thing).
                with(thing_name:'thing-name') do |params|
                  double('client-response',
                    context: double('request-context', params:params))
                end

              thing = service.create_thing(name:'thing-name')
              expect(thing.name).to eq('thing-name')
            end

            it 'can return an array of resources' do
              definition.update(
                'service' => {
                  'actions' => {
                    'CreateThings' => {
                      'request' => {
                        'operation' => 'MakeThings'
                      },
                      'resource' => {
                        'type' => 'Thing',
                        'identifiers' => [
                          {
                            # using JMESPath to extract thing names
                            'target' => 'Name',
                            'sourceType' => 'responsePath',
                            'source' => 'Things[].Name'
                          }
                        ]
                      }
                    }
                  }
                },
                'resources' => {
                  'Thing' => {
                    'identifiers' => [{ 'name' => 'Name' }]
                  }
                }
              )

              client_response = double('client-response', data: {
                'things' => [
                  { 'name' => 'thing1' },
                  { 'name' => 'thing2' },
                ]
              })
              expect(client).to receive(:make_things).
                and_return(client_response)

              things = service.create_things
              expect(things).to be_an(Array)
              expect(things[0]).to be_kind_of(service_class::Thing)
              expect(things[1].client).to be(service.client)
              expect(things.map(&:name)).to eq(['thing1', 'thing2'])
            end

            it 'can return hydrated resources' do
              definition.update(
                'service' => {
                  'actions' => {
                    'CreateThings' => {
                      'request' => {
                        'operation' => 'MakeThings'
                      },
                      'resource' => {
                        'type' => 'Thing',
                        'identifiers' => [
                          {
                            # using JMESPath to extract thing names
                            'target' => 'Name',
                            'sourceType' => 'responsePath',
                            'source' => 'Things[].Name'
                          }
                        ],
                      },
                      'path' => 'Things[]'
                    }
                  }
                },
                'resources' => {
                  'Thing' => {
                    'identifiers' => [{ 'name' => 'Name' }]
                  }
                }
              )

              client_response = double('client-response', data: {
                'things' => [
                  { 'name' => 'thing1', 'arn' => 'thing1-arn' },
                  { 'name' => 'thing2', 'arn' => 'thing2-arn' },
                ]
              })
              expect(client).to receive(:make_things).
                and_return(client_response)

              things = service.create_things
              expect(things.map(&:data)).to eq([
                { 'name' => 'thing1', 'arn' => 'thing1-arn' },
                { 'name' => 'thing2', 'arn' => 'thing2-arn' },
              ])
            end

          end

          describe 'has many associations' do

            let(:definition) {{
              'service' => {
                'hasMany' => {
                  'Things' => {
                    'request' => { 'operation' => 'ListThings' },
                    'resource' => {
                      'type' => 'Thing',
                      'identifiers' => [
                        {
                          'target' => 'Name',
                          'sourceType' => 'responsePath',
                          'source' => 'Things[].Name'
                        }
                      ],
                    },
                    'path' => 'Things[]'
                  }
                }
              },
              'resources' => {
                'Thing' => {
                  'identifiers' => [{ 'name' => 'Name' }]
                }
              }
            }}

            it 'returns an resource enumerator' do
              expect(client).to receive(:list_things).
                with(batch_size:2).
                and_return([
                  double('client-response-1', data: {
                    'things' => [
                      { 'name' => 'thing1', 'arn' => 'thing1-arn' },
                      { 'name' => 'thing2', 'arn' => 'thing2-arn' },
                    ]
                  }),
                  double('client-response-2', data: {
                    'things' => [
                      { 'name' => 'thing3', 'arn' => 'thing3-arn' },
                      { 'name' => 'thing4', 'arn' => 'thing4-arn' },
                    ]
                  }),
                ]
              )
              things = service.things(batch_size:2)
              expect(things).to be_an(Enumerator)
              expect(things.map(&:name)).to eq(%w(thing1 thing2 thing3 thing4))
            end

            it 'defines getter helpers for top-level resources' do
              thing = service.thing('thing-name')
              expect(thing).to be_kind_of(service_class::Thing)
              expect(thing.name).to eq('thing-name')
              expect(thing.client).to be(service.client)
            end

          end

        end

        describe 'resources' do

          describe 'data attributes' do

            it 'defines a getter for each member of the resource shape'

            it 'does not redefine identifiers that have the same name'

            it 'raises an error if method already exists for the the data attr'

          end

          describe '#load' do

            it 'raises a NotImplementedError when not specified'

            it 'loads and returns resource data'

            it 'caches resource data'

            it 'reloads data on request'

          end

          describe 'actions' do

            let(:thing) { service_class::Thing.new(name:'thing-name') }

            it 'supports basic operations that return the client response' do
              definition['resources'] = {
                'Thing' => {
                  'identifiers' => [
                    { 'name' => 'Name' }
                  ],
                  'actions' => {
                    'Delete' => {
                      'request' => {
                        'operation' => 'DeleteThing',
                        'params' => [
                          { "target" => "ThingName", "sourceType" => "identifier", "source" => "Name" }
                        ]
                      }
                    }
                  }
                }
              }

              client_resp = double('client-response')
              expect(client).to receive(:delete_thing).
                with(thing_name: 'thing-name', foo:'bar').
                and_return(client_resp)

              resp = thing.delete(foo:'bar')
              expect(resp).to be(client_resp)
            end

            it 'supports operations that extract data' do
              definition['resources'] = {
                'Thing' => {
                  'identifiers' => [
                    { 'name' => 'Name' }
                  ],
                  'actions' => {
                    'Deactivate' => {
                      'request' => {
                        'operation' => 'DeactivateThing',
                        'params' => [
                          { "target" => "ThingName", "sourceType" => "identifier", "source" => "Name" }
                        ]
                      },
                      'path' => 'Thing.Status'
                    }
                  }
                }
              }

              data = { 'thing' => { 'status' => 'inactive' } }
              client_resp = double('client-response', data:data)
              expect(client).to receive(:deactivate_thing).
                and_return(client_resp)

              expect(thing.deactivate).to eq('inactive')
            end

            it 'supports operations that return singular resources' do
              definition['resources'] = {
                'Thing' => {
                  'identifiers' => [
                    { 'name' => 'Name' }
                  ],
                  'actions' => {
                    'Copy' => {
                      'request' => {
                        'operation' => 'CopyThing'
                      },
                      'resource' => {
                        'type' => 'Thing',
                        'identifiers' => [
                          {
                            'target' => 'Name',
                            'sourceType' => 'requestParameter',
                            'source' => 'ThingName'
                          }
                        ]
                      }
                    }
                  }
                }
              }

              expect(client).to receive(:copy_thing).
                with(thing_name:'new-thing-name') do |params|
                  double('client-response',
                    context: double('request-context', params:params))
                end

              new_thing = thing.copy(thing_name:'new-thing-name')
              expect(new_thing).to be_kind_of(service_class::Thing)
              expect(new_thing.client).to be(thing.client)
              expect(new_thing.name).to eq('new-thing-name')
            end

            it 'can return an array of resources' do
              definition['resources'] = {
                'Thing' => {
                  'identifiers' => [{ 'name' => 'Name' }],
                  'actions' => {
                    'CreateDooDad' => {
                      'request' => {
                        'operation' => 'CreateDooDad',
                        'params' => [
                          {
                            'target' => 'ThingName',
                            'sourceType' => 'identifier',
                            'source' => 'Name'
                          }
                        ]
                      },
                      'resource' => {
                        'type' => 'DooDad',
                        'identifiers' => [
                          {
                            'target' => 'ThingName',
                            'sourceType' => 'identifier',
                            'source' => 'Name'
                          },
                          {
                            'target' => 'Name',
                            'sourceType' => 'responsePath',
                            'source' => 'DooDad.DooDadName'
                          }
                        ]
                      }
                    }
                  }
                },
                'DooDad' => {
                  'identifiers' => [
                    { 'name' => 'ThingName' },
                    { 'name' => 'Name' }
                  ]
                }
              }

              client_response = double('client-response', data: {
                'doo_dad' => {
                  'doo_dad_name' => 'doo-dad-name'
                }
              })
              expect(client).to receive(:create_doo_dad).
                with(thing_name: 'thing-name').
                and_return(client_response)

              doo_dad = thing.create_doo_dad
              expect(doo_dad).to be_an(service_class::DooDad)
              expect(doo_dad.name).to eq('doo-dad-name')
              expect(doo_dad.client).to be(thing.client)
            end

            it 'can return hydrated resources' do
              definition['resources'] = {
                'Thing' => {
                  'identifiers' => [{ 'name' => 'Name' }],
                  'actions' => {
                    'CreateDooDad' => {
                      'request' => {
                        'operation' => 'CreateDooDad',
                        'params' => [
                          {
                            'target' => 'ThingName',
                            'sourceType' => 'identifier',
                            'source' => 'Name'
                          }
                        ]
                      },
                      'resource' => {
                        'type' => 'DooDad',
                        'identifiers' => [
                          {
                            'target' => 'ThingName',
                            'sourceType' => 'identifier',
                            'source' => 'Name'
                          },
                          {
                            'target' => 'Name',
                            'sourceType' => 'responsePath',
                            'source' => 'DooDad.DooDadName'
                          }
                        ]
                      },
                      'path' => 'DooDad'
                    }
                  }
                },
                'DooDad' => {
                  'identifiers' => [
                    { 'name' => 'ThingName' },
                    { 'name' => 'Name' }
                  ],
                  'shape' => 'DooDadShape'
                }
              }
              shapes['DooDadShape'] = { 'type' => 'structure' }

              data = {
                'doo_dad_name' => 'doo-dad-name',
                'description' => 'desc'
              }
              client_response = double('client-response', data: {
                'doo_dad' =>  data 
              })
              expect(client).to receive(:create_doo_dad).
                with(thing_name: 'thing-name').
                and_return(client_response)

              doo_dad = thing.create_doo_dad
              expect(doo_dad.data).to eq(data)
            end


          end

          describe 'has many associations' do

            it 'returns an Enumerator'

            it 'defines a getter for sub-resources'

            it 'does not define a getter for sibling resources'

          end

          describe 'has some associations' do

            it 'returns an array of resource objects'

          end

          describe 'has one associations' do

            it 'returns a single resource object'

          end
        end
      end
    end
  end
end
