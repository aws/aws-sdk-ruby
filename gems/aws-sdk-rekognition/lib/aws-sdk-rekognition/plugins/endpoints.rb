# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Rekognition
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Rekognition::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Rekognition::EndpointParameters`'
      ) do |cfg|
        Aws::Rekognition::EndpointProvider.new
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
          when :associate_faces
            Aws::Rekognition::Endpoints::AssociateFaces.build(context)
          when :compare_faces
            Aws::Rekognition::Endpoints::CompareFaces.build(context)
          when :copy_project_version
            Aws::Rekognition::Endpoints::CopyProjectVersion.build(context)
          when :create_collection
            Aws::Rekognition::Endpoints::CreateCollection.build(context)
          when :create_dataset
            Aws::Rekognition::Endpoints::CreateDataset.build(context)
          when :create_face_liveness_session
            Aws::Rekognition::Endpoints::CreateFaceLivenessSession.build(context)
          when :create_project
            Aws::Rekognition::Endpoints::CreateProject.build(context)
          when :create_project_version
            Aws::Rekognition::Endpoints::CreateProjectVersion.build(context)
          when :create_stream_processor
            Aws::Rekognition::Endpoints::CreateStreamProcessor.build(context)
          when :create_user
            Aws::Rekognition::Endpoints::CreateUser.build(context)
          when :delete_collection
            Aws::Rekognition::Endpoints::DeleteCollection.build(context)
          when :delete_dataset
            Aws::Rekognition::Endpoints::DeleteDataset.build(context)
          when :delete_faces
            Aws::Rekognition::Endpoints::DeleteFaces.build(context)
          when :delete_project
            Aws::Rekognition::Endpoints::DeleteProject.build(context)
          when :delete_project_policy
            Aws::Rekognition::Endpoints::DeleteProjectPolicy.build(context)
          when :delete_project_version
            Aws::Rekognition::Endpoints::DeleteProjectVersion.build(context)
          when :delete_stream_processor
            Aws::Rekognition::Endpoints::DeleteStreamProcessor.build(context)
          when :delete_user
            Aws::Rekognition::Endpoints::DeleteUser.build(context)
          when :describe_collection
            Aws::Rekognition::Endpoints::DescribeCollection.build(context)
          when :describe_dataset
            Aws::Rekognition::Endpoints::DescribeDataset.build(context)
          when :describe_project_versions
            Aws::Rekognition::Endpoints::DescribeProjectVersions.build(context)
          when :describe_projects
            Aws::Rekognition::Endpoints::DescribeProjects.build(context)
          when :describe_stream_processor
            Aws::Rekognition::Endpoints::DescribeStreamProcessor.build(context)
          when :detect_custom_labels
            Aws::Rekognition::Endpoints::DetectCustomLabels.build(context)
          when :detect_faces
            Aws::Rekognition::Endpoints::DetectFaces.build(context)
          when :detect_labels
            Aws::Rekognition::Endpoints::DetectLabels.build(context)
          when :detect_moderation_labels
            Aws::Rekognition::Endpoints::DetectModerationLabels.build(context)
          when :detect_protective_equipment
            Aws::Rekognition::Endpoints::DetectProtectiveEquipment.build(context)
          when :detect_text
            Aws::Rekognition::Endpoints::DetectText.build(context)
          when :disassociate_faces
            Aws::Rekognition::Endpoints::DisassociateFaces.build(context)
          when :distribute_dataset_entries
            Aws::Rekognition::Endpoints::DistributeDatasetEntries.build(context)
          when :get_celebrity_info
            Aws::Rekognition::Endpoints::GetCelebrityInfo.build(context)
          when :get_celebrity_recognition
            Aws::Rekognition::Endpoints::GetCelebrityRecognition.build(context)
          when :get_content_moderation
            Aws::Rekognition::Endpoints::GetContentModeration.build(context)
          when :get_face_detection
            Aws::Rekognition::Endpoints::GetFaceDetection.build(context)
          when :get_face_liveness_session_results
            Aws::Rekognition::Endpoints::GetFaceLivenessSessionResults.build(context)
          when :get_face_search
            Aws::Rekognition::Endpoints::GetFaceSearch.build(context)
          when :get_label_detection
            Aws::Rekognition::Endpoints::GetLabelDetection.build(context)
          when :get_person_tracking
            Aws::Rekognition::Endpoints::GetPersonTracking.build(context)
          when :get_segment_detection
            Aws::Rekognition::Endpoints::GetSegmentDetection.build(context)
          when :get_text_detection
            Aws::Rekognition::Endpoints::GetTextDetection.build(context)
          when :index_faces
            Aws::Rekognition::Endpoints::IndexFaces.build(context)
          when :list_collections
            Aws::Rekognition::Endpoints::ListCollections.build(context)
          when :list_dataset_entries
            Aws::Rekognition::Endpoints::ListDatasetEntries.build(context)
          when :list_dataset_labels
            Aws::Rekognition::Endpoints::ListDatasetLabels.build(context)
          when :list_faces
            Aws::Rekognition::Endpoints::ListFaces.build(context)
          when :list_project_policies
            Aws::Rekognition::Endpoints::ListProjectPolicies.build(context)
          when :list_stream_processors
            Aws::Rekognition::Endpoints::ListStreamProcessors.build(context)
          when :list_tags_for_resource
            Aws::Rekognition::Endpoints::ListTagsForResource.build(context)
          when :list_users
            Aws::Rekognition::Endpoints::ListUsers.build(context)
          when :put_project_policy
            Aws::Rekognition::Endpoints::PutProjectPolicy.build(context)
          when :recognize_celebrities
            Aws::Rekognition::Endpoints::RecognizeCelebrities.build(context)
          when :search_faces
            Aws::Rekognition::Endpoints::SearchFaces.build(context)
          when :search_faces_by_image
            Aws::Rekognition::Endpoints::SearchFacesByImage.build(context)
          when :search_users
            Aws::Rekognition::Endpoints::SearchUsers.build(context)
          when :search_users_by_image
            Aws::Rekognition::Endpoints::SearchUsersByImage.build(context)
          when :start_celebrity_recognition
            Aws::Rekognition::Endpoints::StartCelebrityRecognition.build(context)
          when :start_content_moderation
            Aws::Rekognition::Endpoints::StartContentModeration.build(context)
          when :start_face_detection
            Aws::Rekognition::Endpoints::StartFaceDetection.build(context)
          when :start_face_search
            Aws::Rekognition::Endpoints::StartFaceSearch.build(context)
          when :start_label_detection
            Aws::Rekognition::Endpoints::StartLabelDetection.build(context)
          when :start_person_tracking
            Aws::Rekognition::Endpoints::StartPersonTracking.build(context)
          when :start_project_version
            Aws::Rekognition::Endpoints::StartProjectVersion.build(context)
          when :start_segment_detection
            Aws::Rekognition::Endpoints::StartSegmentDetection.build(context)
          when :start_stream_processor
            Aws::Rekognition::Endpoints::StartStreamProcessor.build(context)
          when :start_text_detection
            Aws::Rekognition::Endpoints::StartTextDetection.build(context)
          when :stop_project_version
            Aws::Rekognition::Endpoints::StopProjectVersion.build(context)
          when :stop_stream_processor
            Aws::Rekognition::Endpoints::StopStreamProcessor.build(context)
          when :tag_resource
            Aws::Rekognition::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Rekognition::Endpoints::UntagResource.build(context)
          when :update_dataset_entries
            Aws::Rekognition::Endpoints::UpdateDatasetEntries.build(context)
          when :update_stream_processor
            Aws::Rekognition::Endpoints::UpdateStreamProcessor.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
