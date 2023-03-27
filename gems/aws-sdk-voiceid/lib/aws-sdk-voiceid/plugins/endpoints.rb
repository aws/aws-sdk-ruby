# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::VoiceID
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::VoiceID::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::VoiceID::EndpointParameters`'
      ) do |cfg|
        Aws::VoiceID::EndpointProvider.new
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
          when :associate_fraudster
            Aws::VoiceID::Endpoints::AssociateFraudster.build(context)
          when :create_domain
            Aws::VoiceID::Endpoints::CreateDomain.build(context)
          when :create_watchlist
            Aws::VoiceID::Endpoints::CreateWatchlist.build(context)
          when :delete_domain
            Aws::VoiceID::Endpoints::DeleteDomain.build(context)
          when :delete_fraudster
            Aws::VoiceID::Endpoints::DeleteFraudster.build(context)
          when :delete_speaker
            Aws::VoiceID::Endpoints::DeleteSpeaker.build(context)
          when :delete_watchlist
            Aws::VoiceID::Endpoints::DeleteWatchlist.build(context)
          when :describe_domain
            Aws::VoiceID::Endpoints::DescribeDomain.build(context)
          when :describe_fraudster
            Aws::VoiceID::Endpoints::DescribeFraudster.build(context)
          when :describe_fraudster_registration_job
            Aws::VoiceID::Endpoints::DescribeFraudsterRegistrationJob.build(context)
          when :describe_speaker
            Aws::VoiceID::Endpoints::DescribeSpeaker.build(context)
          when :describe_speaker_enrollment_job
            Aws::VoiceID::Endpoints::DescribeSpeakerEnrollmentJob.build(context)
          when :describe_watchlist
            Aws::VoiceID::Endpoints::DescribeWatchlist.build(context)
          when :disassociate_fraudster
            Aws::VoiceID::Endpoints::DisassociateFraudster.build(context)
          when :evaluate_session
            Aws::VoiceID::Endpoints::EvaluateSession.build(context)
          when :list_domains
            Aws::VoiceID::Endpoints::ListDomains.build(context)
          when :list_fraudster_registration_jobs
            Aws::VoiceID::Endpoints::ListFraudsterRegistrationJobs.build(context)
          when :list_fraudsters
            Aws::VoiceID::Endpoints::ListFraudsters.build(context)
          when :list_speaker_enrollment_jobs
            Aws::VoiceID::Endpoints::ListSpeakerEnrollmentJobs.build(context)
          when :list_speakers
            Aws::VoiceID::Endpoints::ListSpeakers.build(context)
          when :list_tags_for_resource
            Aws::VoiceID::Endpoints::ListTagsForResource.build(context)
          when :list_watchlists
            Aws::VoiceID::Endpoints::ListWatchlists.build(context)
          when :opt_out_speaker
            Aws::VoiceID::Endpoints::OptOutSpeaker.build(context)
          when :start_fraudster_registration_job
            Aws::VoiceID::Endpoints::StartFraudsterRegistrationJob.build(context)
          when :start_speaker_enrollment_job
            Aws::VoiceID::Endpoints::StartSpeakerEnrollmentJob.build(context)
          when :tag_resource
            Aws::VoiceID::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::VoiceID::Endpoints::UntagResource.build(context)
          when :update_domain
            Aws::VoiceID::Endpoints::UpdateDomain.build(context)
          when :update_watchlist
            Aws::VoiceID::Endpoints::UpdateWatchlist.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
