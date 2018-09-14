require 'seahorse/client/h2/handler'

module Seahorse
  module Client
    module Plugins
      class H2 < Plugin

        # H2 Client
        option(:max_concurrent_streams, default: 100, doc_type: Integer, docstring: '')

        option(:connection_timeout, default: 60, doc_type: Integer, docstring: '')

        # SSL Context
        option(:ssl_ca_bundle, default: nil, doc_type: String, docstring: '')

        option(:ssl_ca_directory, default: nil, doc_type: String, docstring: '')

        option(:ssl_ca_store, default: nil, doc_type: String, docstring: '')

        option(:ssl_verify_peer, default: true, doc_type: 'Boolean', docstring: '')

        # TODO
        option(:http_wire_trace, default: false, doc_type:  'Boolean', docstring: '')
        # TODO option(:logger)

        handler(Client::H2::Handler, step: :send)

      end
    end
  end
end
