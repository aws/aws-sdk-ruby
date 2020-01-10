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

        handle_request(step: :initialize) do |context|
          context.params[:account_id] ||= context.config.account_id
        end

      end
    end
  end
end
