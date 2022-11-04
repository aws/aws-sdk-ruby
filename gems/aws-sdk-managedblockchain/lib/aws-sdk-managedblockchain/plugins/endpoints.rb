# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ManagedBlockchain
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ManagedBlockchain::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ManagedBlockchain::EndpointParameters`'
      ) do |cfg|
        Aws::ManagedBlockchain::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :create_accessor
            Aws::ManagedBlockchain::Endpoints::CreateAccessor.build(context)
          when :create_member
            Aws::ManagedBlockchain::Endpoints::CreateMember.build(context)
          when :create_network
            Aws::ManagedBlockchain::Endpoints::CreateNetwork.build(context)
          when :create_node
            Aws::ManagedBlockchain::Endpoints::CreateNode.build(context)
          when :create_proposal
            Aws::ManagedBlockchain::Endpoints::CreateProposal.build(context)
          when :delete_accessor
            Aws::ManagedBlockchain::Endpoints::DeleteAccessor.build(context)
          when :delete_member
            Aws::ManagedBlockchain::Endpoints::DeleteMember.build(context)
          when :delete_node
            Aws::ManagedBlockchain::Endpoints::DeleteNode.build(context)
          when :get_accessor
            Aws::ManagedBlockchain::Endpoints::GetAccessor.build(context)
          when :get_member
            Aws::ManagedBlockchain::Endpoints::GetMember.build(context)
          when :get_network
            Aws::ManagedBlockchain::Endpoints::GetNetwork.build(context)
          when :get_node
            Aws::ManagedBlockchain::Endpoints::GetNode.build(context)
          when :get_proposal
            Aws::ManagedBlockchain::Endpoints::GetProposal.build(context)
          when :list_accessors
            Aws::ManagedBlockchain::Endpoints::ListAccessors.build(context)
          when :list_invitations
            Aws::ManagedBlockchain::Endpoints::ListInvitations.build(context)
          when :list_members
            Aws::ManagedBlockchain::Endpoints::ListMembers.build(context)
          when :list_networks
            Aws::ManagedBlockchain::Endpoints::ListNetworks.build(context)
          when :list_nodes
            Aws::ManagedBlockchain::Endpoints::ListNodes.build(context)
          when :list_proposal_votes
            Aws::ManagedBlockchain::Endpoints::ListProposalVotes.build(context)
          when :list_proposals
            Aws::ManagedBlockchain::Endpoints::ListProposals.build(context)
          when :list_tags_for_resource
            Aws::ManagedBlockchain::Endpoints::ListTagsForResource.build(context)
          when :reject_invitation
            Aws::ManagedBlockchain::Endpoints::RejectInvitation.build(context)
          when :tag_resource
            Aws::ManagedBlockchain::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ManagedBlockchain::Endpoints::UntagResource.build(context)
          when :update_member
            Aws::ManagedBlockchain::Endpoints::UpdateMember.build(context)
          when :update_node
            Aws::ManagedBlockchain::Endpoints::UpdateNode.build(context)
          when :vote_on_proposal
            Aws::ManagedBlockchain::Endpoints::VoteOnProposal.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
