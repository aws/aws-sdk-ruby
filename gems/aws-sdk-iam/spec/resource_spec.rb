# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module IAM
    describe Resource do

      let(:client) { Client.new(stub_responses: true) }

      let(:iam) { Resource.new(client: client) }

      describe '#delete_account_alias' do

        it 'deletes the first account alias, iam only returns one' do
          aliases = ['acct-alias']
          client.stub_responses(:list_account_aliases, account_aliases: aliases)
          expect(client).to receive(:delete_account_alias).
            with(account_alias: 'acct-alias')
          iam.delete_account_alias
        end

        it 'returns false when there is no account alias' do
          client.stub_responses(:list_account_aliases, account_aliases: [])
          expect(iam.delete_account_alias).to be(false)
        end

      end
    end
  end
end
