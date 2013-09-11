# Seahorse

Seahorse is a pluggable HTTP library that allows you to easily build
Ruby clients for REST or RPC based web services. By supplying a JSON description
of your service to the Seahorse client, you can generate a generic REST client
for the web service. You can also add plugins to implement various
authentication schemes, customize how data is sent across the wire, and more.

**Note**: if you are looking for the server-side portion of the Seahorse
library, see [awslabs/seahorse](http://github.com/awslabs/seahorse). There are
plans to eventually merge these two codebases into one repository.

## Installing

Seahorse is currently only available on GitHub. To install with Bundler, add
the following line to a Gemfile:

```ruby
gem 'seahorse', github: 'aws/seahorse'
```

And type `bundle install`.

## Using

To use Seahorse, you will typically create a `Seahorse::Client::Base` subclass.
This can either be done through standard Ruby inheritance, or by using the
`Seahorse::Client::Base.define` method.

The following creates a client for a Twitter-like web service with a handful
of operations:

```ruby
Client = Seahorse::Client::Base.define api: {
  'endpoint' => 'host.example.com' # Required endpoint for your service
  'version' => '1.0',
  'documentation' => 'General documentation about the service',
  'metadata' => { # Custom metadata
    'custom_key' => 'custom_value'
  },
  'operations' => {
    'get_timeline' => {
      'documentation' => 'Gets the timeline of a supplied username.'
      'http_method' => 'GET',
      'http_path' => '/{username}/timeline',
      'input' => {
        'type' => 'input',
        'members' => {
          'username' => { 'type' => 'string' }
        }
      },
      'output' => {
        'type' => 'structure',
        'members' => {
          'statuses' => {
            'type' => 'list',
            'members' => {
              'type' => 'structure',
              'members' => {
                'status_id' => { 'type' => 'integer' },
                'body' => { 'type' => 'string' },
                'username' => { 'type' => 'string' }
              }
            }
          }
        }
      }
    }
  }
}
```

**Note** that all keys in the API must be passed in as Strings when defining
a client.

The above command will define a client that can accept the `get_timeline`
operation like so:

```ruby
client = Client.new
response = client.get_timeline(username: 'my_user')
pp response.data # prints the de-serialized data from the service

__END__
Data will look like:

{
  statuses: [
    {status_id: 1, body: 'Hello', username: 'my_user'},
    {status_id: 2, body: 'Hello??', username: 'my_user'},
    {status_id: 3, body: 'Bye bye!', username: 'my_user'}
  ]
}
```

Seahorse handles managing the HTTP request and response (including pooling of
connections and SSL), and will return a `Seahorse::Client::Response`, however
serializing and de-serializing raw HTTP data is done through the addition of
plugins. Currently the support for REST operations and JSON/XML serialization
live in [aws-sdk-ruby-core](http://github.com/aws/aws-sdk-ruby-core), but will
be merged back into Seahorse eventually.

## The Model

Seahorse is driven by a descriptive model of a web service. Typically, this
description is loaded from a JSON file, but it can be defined by any hash-like
structure. The model loaded from this structure is represented by a
`Seahorse::Model::Api` object, which is the root node of any service
description. An API contains a set of operations, which in turn contain input
and output parameters (known as Shapes) representing the data to be serialized
and de-serialized from the wire.

To load a JSON description into an Api object, you would use
{Seahorse::Model::Node.from_hash Api.from_hash}:

```ruby
require 'json'

json = JSON.parse(File.read('path/to/model.json'))
api = Seahorse::Model::Api.from_hash(json)
api.validate!
```

The {Seahorse::Model::Api} class provides a more detailed view of the properties
available to a description.

## The Client and Plugin Architecture

More information on how clients, and plugins interoperate will be added.
