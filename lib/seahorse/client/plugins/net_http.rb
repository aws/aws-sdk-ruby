module Seahorse
  module Client
    module Plugins
      class NetHttp < Plugin

        Client::NetHttp::ConnectionPool::OPTIONS.each_pair do |name, default|
          option(name, default)
        end

        handler(Client::NetHttp::Handler, step: :send)

      end
    end
  end
end
