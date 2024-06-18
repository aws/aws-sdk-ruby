# frozen_string_literal: true

module Aws
  module Glacier
    module Plugins
      class AccountId < Seahorse::Client::Plugin

        option(:account_id,
          default: '-',
          doc_type: String,
          docstring: <<-DOCS)
The default Glacier AWS account ID to use for all glacier
operations. The default value of `-` uses the account
your `:credentials` belong to.
          DOCS

        class Handler < Seahorse::Client::Handler
          def call(context)
            context.params[:account_id] ||= context.config.account_id
            if context.params[:account_id].empty?
              context.params[:account_id] = '-'
            end
            @handler.call(context)
          end
        end

        handler(Handler, step: :initialize)

      end
    end
  end
end
