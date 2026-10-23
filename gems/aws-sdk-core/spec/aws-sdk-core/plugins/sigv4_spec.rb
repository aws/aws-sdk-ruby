# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe SigV4 do
        let(:provider) { double('credentials provider', features: []) }
        let(:signer) { double('signer') }
        let(:auth) { double('resolved auth', scheme_id: 'aws.auth#sigv4', signer: signer) }
        let(:context) do
          Smithy::Client::HandlerContext.new(
            config: Struct.new(:credentials_provider).new(provider)
          )
        end
        let(:send_handler) do
          Class.new(Smithy::Client::Handler) do
            def call(context)
              context
            end
          end
        end

        before do
          context[:resolved_endpoint] = double('endpoint', properties: {})
          allow(Smithy::Client::Auth).to receive(:resolve).with(context, {}).and_return(auth)
        end

        [
          [SigV4, Smithy::Client::Plugins::ResolveAuth],
          [Smithy::Client::Plugins::ResolveAuth, SigV4]
        ].each do |plugins|
          it "resolves auth before tracking credentials and signing when #{plugins.first} is registered first" do
            handlers = Smithy::Client::HandlerList.new
            plugins.each { |plugin| plugin.new.add_handlers(handlers, nil) }
            Smithy::Client::Plugins::SignRequests.new.add_handlers(handlers, nil)
            handlers.add(send_handler, step: :send)

            expect(provider).to receive(:features) do
              expect(context.auth).to eq(auth)
              []
            end
            expect(signer).to receive(:sign_request).with(context) do
              expect(context.auth).to eq(auth)
            end

            expect(handlers.to_stack.call(context)).to eq(context)
          end
        end
      end
    end
  end
end
