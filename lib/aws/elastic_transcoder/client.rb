# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class ElasticTranscoder

    class Client < Core::RESTJSONClient

      # @api private
      def extract_error_details response
        if
          response.http_response.status >= 300 and
          body = response.http_response.body and
          json = (::JSON.load(body) rescue nil)
        then
          headers = response.http_response.headers
          code = headers['x-amzn-errortype'].first.split(':')[0]
          message = json['message'] || json['Message']
          [code, message]
        end
      end

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method cancel_job(options = {})
      # Calls the DELETE CancelJob API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the job that you want
      #   to delete. To get a list of the jobs (including their jobId) that
      #   have a status of Submitted, use the ListJobsByStatus API action.
      # @return [Core::Response]

      # @!method create_job(options = {})
      # Calls the POST CreateJob API operation.
      # @param [Hash] options
      # * `:pipeline_id` - (String) The Id of the pipeline that you want
      #   Elastic Transcoder to use for transcoding. The pipeline determines
      #   several settings, including the Amazon S3 bucket from which Elastic
      #   Transcoder gets the files to transcode and the bucket into which
      #   Elastic Transcoder puts the transcoded files.
      # * `:input` - (Hash) A section of the request body that provides
      #   information about the file that is being transcoded.
      #   * `:key` - (String) The name of the file to transcode. Elsewhere in
      #     the body of the JSON block is the the ID of the pipeline to use for
      #     processing the job. The InputBucket object in that pipeline tells
      #     Elastic Transcoder which Amazon S3 bucket to get the file from. If
      #     the file name includes a prefix, such as cooking/lasagna.mpg,
      #     include the prefix in the key. If the file isn't in the specified
      #     bucket, Elastic Transcoder returns an error.
      #   * `:frame_rate` - (String) The frame rate of the input file. If you
      #     want Elastic Transcoder to automatically detect the frame rate of
      #     the input file, specify auto. If you want to specify the frame rate
      #     for the input file, enter one of the following values: 10, 15,
      #     23.97, 24, 25, 29.97, 30, 60 If you specify a value other than
      #     auto, Elastic Transcoder disables automatic detection of the frame
      #     rate.
      #   * `:resolution` - (String) This value must be auto, which causes
      #     Elastic Transcoder to automatically detect the resolution of the
      #     input file.
      #   * `:aspect_ratio` - (String) The aspect ratio of the input file. If
      #     you want Elastic Transcoder to automatically detect the aspect
      #     ratio of the input file, specify auto. If you want to specify the
      #     aspect ratio for the output file, enter one of the following
      #     values: 1:1, 4:3, 3:2, 16:9 If you specify a value other than auto,
      #     Elastic Transcoder disables automatic detection of the aspect
      #     ratio.
      #   * `:interlaced` - (String) Whether the input file is interlaced. If
      #     you want Elastic Transcoder to automatically detect whether the
      #     input file is interlaced, specify auto. If you want to specify
      #     whether the input file is interlaced, enter one of the following
      #     values: `true` , `false` If you specify a value other than auto,
      #     Elastic Transcoder disables automatic detection of interlacing.
      #   * `:container` - (String) The container type for the input file. If
      #     you want Elastic Transcoder to automatically detect the container
      #     type of the input file, specify auto. If you want to specify the
      #     container type for the input file, enter one of the following
      #     values: 3gp, asf, avi, divx, flv, mkv, mov, mp4, mpeg, mpeg-ps,
      #     mpeg-ts, mxf, ogg, vob, wav, webm
      # * `:output` - (Hash)
      #   * `:key` - (String) The name to assign to the transcoded file.
      #     Elastic Transcoder saves the file in the Amazon S3 bucket specified
      #     by the OutputBucket object in the pipeline that is specified by the
      #     pipeline ID. If a file with the specified name already exists in
      #     the output bucket, the job fails.
      #   * `:thumbnail_pattern` - (String) Whether you want Elastic Transcoder
      #     to create thumbnails for your videos and, if so, how you want
      #     Elastic Transcoder to name the files. If you don't want Elastic
      #     Transcoder to create thumbnails, specify "". If you do want Elastic
      #     Transcoder to create thumbnails, specify the information that you
      #     want to include in the file name for each thumbnail. You can
      #     specify the following values in any sequence: {count} (Required):
      #     If you want to create thumbnails, you must include {count} in the
      #     ThumbnailPattern object. Wherever you specify {count}, Elastic
      #     Transcoder adds a five-digit sequence number (beginning with 00001)
      #     to thumbnail file names. The number indicates where a given
      #     thumbnail appears in the sequence of thumbnails for a transcoded
      #     file. If you specify a literal value and/or {resolution} but you
      #     omit {count}, Elastic Transcoder returns a validation error and
      #     does not create the job. Literal values (Optional): You can specify
      #     literal values anywhere in the ThumbnailPattern object. For
      #     example, you can include them as a file name prefix or as a
      #     delimiter between {resolution} and {count}. {resolution}
      #     (Optional): If you want Elastic Transcoder to include the
      #     resolution in the file name, include {resolution} in the
      #     ThumbnailPattern object. When creating thumbnails, Elastic
      #     Transcoder automatically saves the files in the format (.jpg or
      #     .png) that appears in the preset that you specified in the PresetID
      #     value of CreateJobOutput. Elastic Transcoder also appends the
      #     applicable file name extension.
      #   * `:rotate` - (String) The number of degrees clockwise by which you
      #     want Elastic Transcoder to rotate the output relative to the input.
      #     Enter one of the following values: auto, 0, 90, 180, 270. The value
      #     auto generally works only if the file that you're transcoding
      #     contains rotation metadata.
      #   * `:preset_id` - (String) The Id of the preset to use for this job.
      #     The preset determines the audio, video, and thumbnail settings that
      #     Elastic Transcoder uses for transcoding.
      #   * `:segment_duration` - (String) If you specify a preset in PresetId
      #     for which the value of Container is ts (MPEG-TS), SegmentDuration
      #     is the duration of each .ts file in seconds. The range of valid
      #     values is 1 to 60 seconds.
      # * `:outputs` - (Array<Hash>) A section of the request body that
      #   provides information about the transcoded (target) files. We
      #   recommend that you use the Outputs syntax instead of the Output
      #   syntax.
      #   * `:key` - (String) The name to assign to the transcoded file.
      #     Elastic Transcoder saves the file in the Amazon S3 bucket specified
      #     by the OutputBucket object in the pipeline that is specified by the
      #     pipeline ID. If a file with the specified name already exists in
      #     the output bucket, the job fails.
      #   * `:thumbnail_pattern` - (String) Whether you want Elastic Transcoder
      #     to create thumbnails for your videos and, if so, how you want
      #     Elastic Transcoder to name the files. If you don't want Elastic
      #     Transcoder to create thumbnails, specify "". If you do want Elastic
      #     Transcoder to create thumbnails, specify the information that you
      #     want to include in the file name for each thumbnail. You can
      #     specify the following values in any sequence: {count} (Required):
      #     If you want to create thumbnails, you must include {count} in the
      #     ThumbnailPattern object. Wherever you specify {count}, Elastic
      #     Transcoder adds a five-digit sequence number (beginning with 00001)
      #     to thumbnail file names. The number indicates where a given
      #     thumbnail appears in the sequence of thumbnails for a transcoded
      #     file. If you specify a literal value and/or {resolution} but you
      #     omit {count}, Elastic Transcoder returns a validation error and
      #     does not create the job. Literal values (Optional): You can specify
      #     literal values anywhere in the ThumbnailPattern object. For
      #     example, you can include them as a file name prefix or as a
      #     delimiter between {resolution} and {count}. {resolution}
      #     (Optional): If you want Elastic Transcoder to include the
      #     resolution in the file name, include {resolution} in the
      #     ThumbnailPattern object. When creating thumbnails, Elastic
      #     Transcoder automatically saves the files in the format (.jpg or
      #     .png) that appears in the preset that you specified in the PresetID
      #     value of CreateJobOutput. Elastic Transcoder also appends the
      #     applicable file name extension.
      #   * `:rotate` - (String) The number of degrees clockwise by which you
      #     want Elastic Transcoder to rotate the output relative to the input.
      #     Enter one of the following values: auto, 0, 90, 180, 270. The value
      #     auto generally works only if the file that you're transcoding
      #     contains rotation metadata.
      #   * `:preset_id` - (String) The Id of the preset to use for this job.
      #     The preset determines the audio, video, and thumbnail settings that
      #     Elastic Transcoder uses for transcoding.
      #   * `:segment_duration` - (String) If you specify a preset in PresetId
      #     for which the value of Container is ts (MPEG-TS), SegmentDuration
      #     is the duration of each .ts file in seconds. The range of valid
      #     values is 1 to 60 seconds.
      # * `:output_key_prefix` - (String) The value, if any, that you want
      #   Elastic Transcoder to prepend to the names of all files that this job
      #   creates, including output files, thumbnails, and playlists.
      # * `:playlists` - (Array<Hash>) If you specify a preset in PresetId for
      #   which the value of Container is ts (MPEG-TS), Playlists contains
      #   information about the master playlists that you want Elastic
      #   Transcoder to create. We recommend that you create only one master
      #   playlist. The maximum number of master playlists in a job is 30.
      #   * `:name` - (String) The name that you want Elastic Transcoder to
      #     assign to the master playlist, for example, nyc-vacation.m3u8. The
      #     name cannot include a / character. If you create more than one
      #     master playlist (not recommended), the values of all Name objects
      #     must be unique. Elastic Transcoder automatically appends .m3u8 to
      #     the file name. If you include .m3u8 in Name, it will appear twice
      #     in the file name.
      #   * `:format` - (String) This value must currently be HLSv3.
      #   * `:output_keys` - (Array<String>) For each output in this job that
      #     you want to include in a master playlist, the value of the
      #     Outputs:Key object. If you include more than one output in a
      #     playlist, the value of SegmentDuration for all of the outputs must
      #     be the same.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job` - (Hash)
      #     * `:id` - (String)
      #     * `:pipeline_id` - (String)
      #     * `:input` - (Hash)
      #       * `:key` - (String)
      #       * `:frame_rate` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:interlaced` - (String)
      #       * `:container` - (String)
      #     * `:output` - (Hash)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:outputs` - (Array<Hash>)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:output_key_prefix` - (String)
      #     * `:playlists` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:format` - (String)
      #       * `:output_keys` - (Array<String>)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #     * `:status` - (String)

      # @!method create_pipeline(options = {})
      # Calls the POST CreatePipeline API operation.
      # @param [Hash] options
      # * `:name` - (String) The name of the pipeline. We recommend that the
      #   name be unique within the AWS account, but uniqueness is not
      #   enforced. Constraints: Maximum 40 characters.
      # * `:input_bucket` - (String) The Amazon S3 bucket in which you saved
      #   the media files that you want to transcode.
      # * `:output_bucket` - (String) The Amazon S3 bucket in which you want
      #   Elastic Transcoder to save the transcoded files. (Use this, or use
      #   ContentConfig:Bucket plus ThumbnailConfig:Bucket.) Specify this value
      #   when all of the following are `true` : You want to save transcoded
      #   files, thumbnails (if any), and playlists (if any) together in one
      #   bucket. You do not want to specify the users or groups who have
      #   access to the transcoded files, thumbnails, and playlists. You do not
      #   want to specify the permissions that Elastic Transcoder grants to the
      #   files. When Elastic Transcoder saves files in OutputBucket, it grants
      #   full control over the files only to the AWS account that owns the
      #   role that is specified by Role. You want to associate the transcoded
      #   files and thumbnails with the Amazon S3 Standard storage class. If
      #   you want to save transcoded files and playlists in one bucket and
      #   thumbnails in another bucket, specify which users can access the
      #   transcoded files or the permissions the users have, or change the
      #   Amazon S3 storage class, omit OutputBucket and specify values for
      #   ContentConfig and ThumbnailConfig instead.
      # * `:role` - (String) The IAM Amazon Resource Name (ARN) for the role
      #   that you want Elastic Transcoder to use to create the pipeline.
      # * `:notifications` - (Hash) The Amazon Simple Notification Service
      #   (Amazon SNS) topic that you want to notify to report job status. To
      #   receive notifications, you must also subscribe to the new topic in
      #   the Amazon SNS console. Progressing: The topic ARN for the Amazon
      #   Simple Notification Service (Amazon SNS) topic that you want to
      #   notify when Elastic Transcoder has started to process a job in this
      #   pipeline. This is the ARN that Amazon SNS returned when you created
      #   the topic. For more information, see Create a Topic in the Amazon
      #   Simple Notification Service Developer Guide. Completed: The topic ARN
      #   for the Amazon SNS topic that you want to notify when Elastic
      #   Transcoder has finished processing a job in this pipeline. This is
      #   the ARN that Amazon SNS returned when you created the topic. Warning:
      #   The topic ARN for the Amazon SNS topic that you want to notify when
      #   Elastic Transcoder encounters a warning condition while processing a
      #   job in this pipeline. This is the ARN that Amazon SNS returned when
      #   you created the topic. Error: The topic ARN for the Amazon SNS topic
      #   that you want to notify when Elastic Transcoder encounters an error
      #   condition while processing a job in this pipeline. This is the ARN
      #   that Amazon SNS returned when you created the topic.
      #   * `:progressing` - (String) The Amazon Simple Notification Service
      #     (Amazon SNS) topic that you want to notify when Elastic Transcoder
      #     has started to process the job.
      #   * `:completed` - (String) The Amazon SNS topic that you want to
      #     notify when Elastic Transcoder has finished processing the job.
      #   * `:warning` - (String) The Amazon SNS topic that you want to notify
      #     when Elastic Transcoder encounters a warning condition.
      #   * `:error` - (String) The Amazon SNS topic that you want to notify
      #     when Elastic Transcoder encounters an error condition.
      # * `:content_config` - (Hash) The optional ContentConfig object
      #   specifies information about the Amazon S3 bucket in which you want
      #   Elastic Transcoder to save transcoded files and playlists: which
      #   bucket to use, which users you want to have access to the files, the
      #   type of access you want users to have, and the storage class that you
      #   want to assign to the files. If you specify values for ContentConfig,
      #   you must also specify values for ThumbnailConfig. If you specify
      #   values for ContentConfig and ThumbnailConfig, omit the OutputBucket
      #   object. Bucket: The Amazon S3 bucket in which you want Elastic
      #   Transcoder to save transcoded files and playlists. Permissions
      #   (Optional): The Permissions object specifies which users you want to
      #   have access to transcoded files and the type of access you want them
      #   to have. You can grant permissions to a maximum of 30 users and/or
      #   predefined Amazon S3 groups. Grantee Type: Specify the type of value
      #   that appears in the Grantee object: Canonical: The value in the
      #   Grantee object is either the canonical user ID for an AWS account or
      #   an origin access identity for an Amazon CloudFront distribution. For
      #   more information about canonical user IDs, see Access Control List
      #   (ACL) Overview in the Amazon Simple Storage Service Developer Guide.
      #   For more information about using CloudFront origin access identities
      #   to require that users use CloudFront URLs instead of Amazon S3 URLs,
      #   see Using an Origin Access Identity to Restrict Access to Your Amazon
      #   S3 Content. A canonical user ID is not the same as an AWS account
      #   number. Email: The value in the Grantee object is the registered
      #   email address of an AWS account. Group: The value in the Grantee
      #   object is one of the following predefined Amazon S3 groups: AllUsers,
      #   AuthenticatedUsers, or LogDelivery. Grantee: The AWS user or group
      #   that you want to have access to transcoded files and playlists. To
      #   identify the user or group, you can specify the canonical user ID for
      #   an AWS account, an origin access identity for a CloudFront
      #   distribution, the registered email address of an AWS account, or a
      #   predefined Amazon S3 group Access: The permission that you want to
      #   give to the AWS user that you specified in Grantee. Permissions are
      #   granted on the files that Elastic Transcoder adds to the bucket,
      #   including playlists and video files. Valid values include: READ: The
      #   grantee can read the objects and metadata for objects that Elastic
      #   Transcoder adds to the Amazon S3 bucket. READ_ACP: The grantee can
      #   read the object ACL for objects that Elastic Transcoder adds to the
      #   Amazon S3 bucket. WRITE_ACP: The grantee can write the ACL for the
      #   objects that Elastic Transcoder adds to the Amazon S3 bucket.
      #   FULL_CONTROL: The grantee has READ, READ_ACP, and WRITE_ACP
      #   permissions for the objects that Elastic Transcoder adds to the
      #   Amazon S3 bucket. StorageClass: The Amazon S3 storage class, Standard
      #   or ReducedRedundancy, that you want Elastic Transcoder to assign to
      #   the video files and playlists that it stores in your Amazon S3
      #   bucket.
      #   * `:bucket` - (String)
      #   * `:storage_class` - (String)
      #   * `:permissions` - (Array<Hash>)
      #     * `:grantee_type` - (String)
      #     * `:grantee` - (String)
      #     * `:access` - (Array<String>)
      # * `:thumbnail_config` - (Hash) The ThumbnailConfig object specifies
      #   several values, including the Amazon S3 bucket in which you want
      #   Elastic Transcoder to save thumbnail files, which users you want to
      #   have access to the files, the type of access you want users to have,
      #   and the storage class that you want to assign to the files. If you
      #   specify values for ContentConfig, you must also specify values for
      #   ThumbnailConfig even if you don't want to create thumbnails. If you
      #   specify values for ContentConfig and ThumbnailConfig, omit the
      #   OutputBucket object. Bucket: The Amazon S3 bucket in which you want
      #   Elastic Transcoder to save thumbnail files. Permissions (Optional):
      #   The Permissions object specifies which users and/or predefined Amazon
      #   S3 groups you want to have access to thumbnail files, and the type of
      #   access you want them to have. You can grant permissions to a maximum
      #   of 30 users and/or predefined Amazon S3 groups. GranteeType: Specify
      #   the type of value that appears in the Grantee object: Canonical: The
      #   value in the Grantee object is either the canonical user ID for an
      #   AWS account or an origin access identity for an Amazon CloudFront
      #   distribution. A canonical user ID is not the same as an AWS account
      #   number. Email: The value in the Grantee object is the registered
      #   email address of an AWS account. Group: The value in the Grantee
      #   object is one of the following predefined Amazon S3 groups: AllUsers,
      #   AuthenticatedUsers, or LogDelivery. Grantee: The AWS user or group
      #   that you want to have access to thumbnail files. To identify the user
      #   or group, you can specify the canonical user ID for an AWS account,
      #   an origin access identity for a CloudFront distribution, the
      #   registered email address of an AWS account, or a predefined Amazon S3
      #   group. Access: The permission that you want to give to the AWS user
      #   that you specified in Grantee. Permissions are granted on the
      #   thumbnail files that Elastic Transcoder adds to the bucket. Valid
      #   values include: READ: The grantee can read the thumbnails and
      #   metadata for objects that Elastic Transcoder adds to the Amazon S3
      #   bucket. READ_ACP: The grantee can read the object ACL for thumbnails
      #   that Elastic Transcoder adds to the Amazon S3 bucket. WRITE_ACP: The
      #   grantee can write the ACL for the thumbnails that Elastic Transcoder
      #   adds to the Amazon S3 bucket. FULL_CONTROL: The grantee has READ,
      #   READ_ACP, and WRITE_ACP permissions for the thumbnails that Elastic
      #   Transcoder adds to the Amazon S3 bucket. StorageClass: The Amazon S3
      #   storage class, Standard or ReducedRedundancy, that you want Elastic
      #   Transcoder to assign to the thumbnails that it stores in your Amazon
      #   S3 bucket.
      #   * `:bucket` - (String)
      #   * `:storage_class` - (String)
      #   * `:permissions` - (Array<Hash>)
      #     * `:grantee_type` - (String)
      #     * `:grantee` - (String)
      #     * `:access` - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:pipeline` - (Hash)
      #     * `:id` - (String)
      #     * `:arn` - (String)
      #     * `:name` - (String)
      #     * `:status` - (String)
      #     * `:input_bucket` - (String)
      #     * `:output_bucket` - (String)
      #     * `:role` - (String)
      #     * `:notifications` - (Hash)
      #       * `:progressing` - (String)
      #       * `:completed` - (String)
      #       * `:warning` - (String)
      #       * `:error` - (String)
      #     * `:content_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)
      #     * `:thumbnail_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)

      # @!method create_preset(options = {})
      # Calls the POST CreatePreset API operation.
      # @param [Hash] options
      # * `:name` - (String) The name of the preset. We recommend that the name
      #   be unique within the AWS account, but uniqueness is not enforced.
      # * `:description` - (String) A description of the preset.
      # * `:container` - (String) The container type for the output file. This
      #   value must be mp4.
      # * `:video` - (Hash) A section of the request body that specifies the
      #   video parameters.
      #   * `:codec` - (String) The video codec for the output file. Valid
      #     values include H.264 and vp8. You can only specify vp8 when the
      #     container type is webm.
      #   * `:codec_options` - (Hash) Profile The H.264 profile that you want
      #     to use for the output file. Elastic Transcoder supports the
      #     following profiles: baseline: The profile most commonly used for
      #     videoconferencing and for mobile applications. main: The profile
      #     used for standard-definition digital TV broadcasts. high: The
      #     profile used for high-definition digital TV broadcasts and for
      #     Blu-ray discs. Level The H.264 level that you want to use for the
      #     output file. Elastic Transcoder supports the following levels: 1,
      #     1b, 1.1, 1.2, 1.3, 2, 2.1, 2.2, 3, 3.1, 3.2, 4, 4.1
      #     MaxReferenceFrames The maximum number of previously decoded frames
      #     to use as a reference for decoding future frames. Valid values are
      #     integers 0 through 16, but we recommend that you not use a value
      #     greater than the following: Min(Floor(Maximum decoded picture
      #     buffer in macroblocks * 256 / (Width in pixels * Height in
      #     pixels)), 16) where Width in pixels and Height in pixels represent
      #     the resolution of the output video and Maximum decoded picture
      #     buffer in macroblocks depends on the value of the Level object. (A
      #     macroblock is a block of pixels measuring 16x16.) Note that the
      #     calculation for maximum decoded picture buffer, which is similar to
      #     the calculation for maximum reference frames, uses macroblocks
      #     instead of pixels for the width and height of the video. To
      #     determine the value of maximum decoded picture buffer in
      #     macroblocks, see the following list (Level - Maximum decoded
      #     picture buffer): 1 - 396 1b - 396 1.1 - 900 1.2 - 2376 1.3 - 2376 2
      #     - 2376 2.1 - 4752 2.2 - 8100 3 - 8100 3.1 - 18000 3.2 - 20480 4 -
      #     32768 4.1 - 32768
      #   * `:keyframes_max_dist` - (String) The maximum number of frames
      #     between key frames. Key frames are fully encoded frames; the frames
      #     between key frames are encoded based, in part, on the content of
      #     the key frames. The value is an integer formatted as a string;
      #     valid values are between 1 and 100000, inclusive. A higher value
      #     results in higher compression but may also discernibly decrease
      #     video quality.
      #   * `:fixed_gop` - (String) Whether to use a fixed value for FixedGOP.
      #     Valid values are `true` and `false` : `true` : Elastic Transcoder
      #     uses the value of KeyframesMaxDist for the distance between key
      #     frames (the number of frames in a group of pictures, or GOP).
      #     `false` : The distance between key frames can vary.
      #   * `:bit_rate` - (String) The bit rate of the video stream in the
      #     output file, in kilobits/second. Valid values depend on the values
      #     of Level and Profile. If you specify auto, Elastic Transcoder uses
      #     the detected bit rate of the input source. If you specify a value
      #     other than auto, we recommend that you specify a value less than or
      #     equal to the maximum H.264-compliant value listed for your level
      #     and profile: Level - Maximum video bit rate in kilobits/second
      #     (baseline and main Profile) : maximum video bit rate in
      #     kilobits/second (high Profile) 1 - 64 : 80 1b - 128 : 160 1.1 - 192
      #     : 240 1.2 - 384 : 480 1.3 - 768 : 960 2 - 2000 : 2500 3 - 10000 :
      #     12500 3.1 - 14000 : 17500 3.2 - 20000 : 25000 4 - 20000 : 25000 4.1
      #     - 50000 : 62500
      #   * `:frame_rate` - (String) The frames per second for the video stream
      #     in the output file. Valid values include: auto, 10, 15, 23.97, 24,
      #     25, 29.97, 30, 60 If you specify auto, Elastic Transcoder uses the
      #     detected frame rate of the input source. If you specify a frame
      #     rate, we recommend that you perform the following calculation:
      #     Frame rate = maximum recommended decoding speed in luma
      #     samples/second / (width in pixels * height in pixels) where: width
      #     in pixels and height in pixels represent the Resolution of the
      #     output video. maximum recommended decoding speed in Luma
      #     samples/second is less than or equal to the maximum value listed in
      #     the following table, based on the value that you specified for
      #     Level. The maximum recommended decoding speed in Luma
      #     samples/second for each level is described in the following list
      #     (Level - Decoding speed): 1 - 380160 1b - 380160 1.1 - 76800 1.2 -
      #     1536000 1.3 - 3041280 2 - 3041280 2.1 - 5068800 2.2 - 5184000 3 -
      #     10368000 3.1 - 27648000 3.2 - 55296000 4 - 62914560 4.1 - 62914560
      #   * `:resolution` - (String) To better control resolution and aspect
      #     ratio of output videos, we recommend that you use the values
      #     MaxWidth, MaxHeight, SizingPolicy, PaddingPolicy, and
      #     DisplayAspectRatio instead of Resolution and AspectRatio. The two
      #     groups of settings are mutually exclusive. Do not use them
      #     together. The width and height of the video in the output file, in
      #     pixels. Valid values are auto and width x height: auto: Elastic
      #     Transcoder attempts to preserve the width and height of the input
      #     file, subject to the following rules. width x height: The width and
      #     height of the output video in pixels. Note the following about
      #     specifying the width and height: The width must be an even integer
      #     between 128 and 4096, inclusive. The height must be an even integer
      #     between 96 and 3072, inclusive. If you specify a resolution that is
      #     less than the resolution of the input file, Elastic Transcoder
      #     rescales the output file to the lower resolution. If you specify a
      #     resolution that is greater than the resolution of the input file,
      #     Elastic Transcoder rescales the output to the higher resolution. We
      #     recommend that you specify a resolution for which the product of
      #     width and height is less than or equal to the applicable value in
      #     the following list (List - Max width x height value): 1 - 25344 1b
      #     - 25344 1.1 - 101376 1.2 - 101376 1.3 - 101376 2 - 101376 2.1 -
      #     202752 2.2 - 404720 3 - 404720 3.1 - 921600 3.2 - 1310720 4 -
      #     2097152 4.1 - 2097152
      #   * `:aspect_ratio` - (String) To better control resolution and aspect
      #     ratio of output videos, we recommend that you use the values
      #     MaxWidth, MaxHeight, SizingPolicy, PaddingPolicy, and
      #     DisplayAspectRatio instead of Resolution and AspectRatio. The two
      #     groups of settings are mutually exclusive. Do not use them
      #     together. The display aspect ratio of the video in the output file.
      #     Valid values include: auto, 1:1, 4:3, 3:2, 16:9 If you specify
      #     auto, Elastic Transcoder tries to preserve the aspect ratio of the
      #     input file. If you specify an aspect ratio for the output file that
      #     differs from aspect ratio of the input file, Elastic Transcoder
      #     adds pillarboxing (black bars on the sides) or letterboxing (black
      #     bars on the top and bottom) to maintain the aspect ratio of the
      #     active region of the video.
      #   * `:max_width` - (String) The maximum width of the output video in
      #     pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD)
      #     as the default value. If you specify a numeric value, enter an even
      #     integer between 128 and 4096.
      #   * `:max_height` - (String) The maximum height of the output video in
      #     pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD)
      #     as the default value. If you specify a numeric value, enter an even
      #     integer between 96 and 3072.
      #   * `:display_aspect_ratio` - (String) The value that Elastic
      #     Transcoder adds to the metadata in the output file.
      #   * `:sizing_policy` - (String) Specify one of the following values to
      #     control scaling of the output video: Fit: Elastic Transcoder scales
      #     the output video so it matches the value that you specified in
      #     either MaxWidth or MaxHeight without exceeding the other value.
      #     Fill: Elastic Transcoder scales the output video so it matches the
      #     value that you specified in either MaxWidth or MaxHeight and
      #     matches or exceeds the other value. Elastic Transcoder centers the
      #     output video and then crops it in the dimension (if any) that
      #     exceeds the maximum value. Stretch: Elastic Transcoder stretches
      #     the output video to match the values that you specified for
      #     MaxWidth and MaxHeight. If the relative proportions of the input
      #     video and the output video are different, the output video will be
      #     distorted. Keep: Elastic Transcoder does not scale the output
      #     video. If either dimension of the input video exceeds the values
      #     that you specified for MaxWidth and MaxHeight, Elastic Transcoder
      #     crops the output video. ShrinkToFit: Elastic Transcoder scales the
      #     output video down so that its dimensions match the values that you
      #     specified for at least one of MaxWidth and MaxHeight without
      #     exceeding either value. If you specify this option, Elastic
      #     Transcoder does not scale the video up. ShrinkToFill: Elastic
      #     Transcoder scales the output video down so that its dimensions
      #     match the values that you specified for at least one of MaxWidth
      #     and MaxHeight without dropping below either value. If you specify
      #     this option, Elastic Transcoder does not scale the video up.
      #   * `:padding_policy` - (String) When you set PaddingPolicy to Pad,
      #     Elastic Transcoder may add black bars to the top and bottom and/or
      #     left and right sides of the output video to make the total size of
      #     the output video match the values that you specified for MaxWidth
      #     and MaxHeight.
      # * `:audio` - (Hash) A section of the request body that specifies the
      #   audio parameters.
      #   * `:codec` - (String) The audio codec for the output file. This value
      #     must be AAC.
      #   * `:sample_rate` - (String) The sample rate of the audio stream in
      #     the output file, in Hertz. Valid values include: auto, 22050,
      #     32000, 44100, 48000, 96000 If you specify auto, Elastic Transcoder
      #     automatically detects the sample rate.
      #   * `:bit_rate` - (String) The bit rate of the audio stream in the
      #     output file, in kilobits/second. Enter an integer between 64 and
      #     320, inclusive.
      #   * `:channels` - (String) The number of audio channels in the output
      #     file. Valid values include: auto, 0, 1, 2 If you specify auto,
      #     Elastic Transcoder automatically detects the number of channels in
      #     the input file.
      # * `:thumbnails` - (Hash) A section of the request body that specifies
      #   the thumbnail parameters, if any.
      #   * `:format` - (String) The format of thumbnails, if any. Valid values
      #     are jpg and png. You specify whether you want Elastic Transcoder to
      #     create thumbnails when you create a job.
      #   * `:interval` - (String) The number of seconds between thumbnails.
      #     Specify an integer value.
      #   * `:resolution` - (String) To better control resolution and aspect
      #     ratio of thumbnails, we recommend that you use the values MaxWidth,
      #     MaxHeight, SizingPolicy, and PaddingPolicy instead of Resolution
      #     and AspectRatio. The two groups of settings are mutually exclusive.
      #     Do not use them together. The width and height of thumbnail files
      #     in pixels. Specify a value in the format width x height where both
      #     values are even integers. The values cannot exceed the width and
      #     height that you specified in the Video:Resolution object.
      #   * `:aspect_ratio` - (String) To better control resolution and aspect
      #     ratio of thumbnails, we recommend that you use the values MaxWidth,
      #     MaxHeight, SizingPolicy, and PaddingPolicy instead of Resolution
      #     and AspectRatio. The two groups of settings are mutually exclusive.
      #     Do not use them together. The aspect ratio of thumbnails. Valid
      #     values include: auto, 1:1, 4:3, 3:2, 16:9 If you specify auto,
      #     Elastic Transcoder tries to preserve the aspect ratio of the video
      #     in the output file.
      #   * `:max_width` - (String) The maximum width of thumbnails in pixels.
      #     If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the
      #     default value. If you specify a numeric value, enter an even
      #     integer between 32 and 4096.
      #   * `:max_height` - (String) The maximum height of thumbnails in
      #     pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD)
      #     as the default value. If you specify a numeric value, enter an even
      #     integer between 32 and 3072.
      #   * `:sizing_policy` - (String) Specify one of the following values to
      #     control scaling of thumbnails: Fit: Elastic Transcoder scales
      #     thumbnails so they match the value that you specified in thumbnail
      #     MaxWidth or MaxHeight settings without exceeding the other value.
      #     Fill: Elastic Transcoder scales thumbnails so they match the value
      #     that you specified in thumbnail MaxWidth or MaxHeight settings and
      #     matches or exceeds the other value. Elastic Transcoder centers the
      #     image in thumbnails and then crops in the dimension (if any) that
      #     exceeds the maximum value. Stretch: Elastic Transcoder stretches
      #     thumbnails to match the values that you specified for thumbnail
      #     MaxWidth and MaxHeight settings. If the relative proportions of the
      #     input video and thumbnails are different, the thumbnails will be
      #     distorted. Keep: Elastic Transcoder does not scale thumbnails. If
      #     either dimension of the input video exceeds the values that you
      #     specified for thumbnail MaxWidth and MaxHeight settings, Elastic
      #     Transcoder crops the thumbnails. ShrinkToFit: Elastic Transcoder
      #     scales thumbnails down so that their dimensions match the values
      #     that you specified for at least one of thumbnail MaxWidth and
      #     MaxHeight without exceeding either value. If you specify this
      #     option, Elastic Transcoder does not scale thumbnails up.
      #     ShrinkToFill: Elastic Transcoder scales thumbnails down so that
      #     their dimensions match the values that you specified for at least
      #     one of MaxWidth and MaxHeight without dropping below either value.
      #     If you specify this option, Elastic Transcoder does not scale
      #     thumbnails up.
      #   * `:padding_policy` - (String) When you set PaddingPolicy to Pad,
      #     Elastic Transcoder may add black bars to the top and bottom and/or
      #     left and right sides of thumbnails to make the total size of the
      #     thumbnails match the values that you specified for thumbnail
      #     MaxWidth and MaxHeight settings.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:preset` - (Hash)
      #     * `:id` - (String)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:container` - (String)
      #     * `:audio` - (Hash)
      #       * `:codec` - (String)
      #       * `:sample_rate` - (String)
      #       * `:bit_rate` - (String)
      #       * `:channels` - (String)
      #     * `:video` - (Hash)
      #       * `:codec` - (String)
      #       * `:codec_options` - (Hash<String,String>)
      #       * `:keyframes_max_dist` - (String)
      #       * `:fixed_gop` - (String)
      #       * `:bit_rate` - (String)
      #       * `:frame_rate` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:max_width` - (String)
      #       * `:max_height` - (String)
      #       * `:display_aspect_ratio` - (String)
      #       * `:sizing_policy` - (String)
      #       * `:padding_policy` - (String)
      #     * `:thumbnails` - (Hash)
      #       * `:format` - (String)
      #       * `:interval` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:max_width` - (String)
      #       * `:max_height` - (String)
      #       * `:sizing_policy` - (String)
      #       * `:padding_policy` - (String)
      #     * `:type` - (String)
      #   * `:warning` - (String)

      # @!method delete_pipeline(options = {})
      # Calls the DELETE DeletePipeline API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the pipeline that you
      #   want to delete.
      # @return [Core::Response]

      # @!method delete_preset(options = {})
      # Calls the DELETE DeletePreset API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the preset for which
      #   you want to get detailed information.
      # @return [Core::Response]

      # @!method list_jobs_by_pipeline(options = {})
      # Calls the GET ListJobsByPipeline API operation.
      # @param [Hash] options
      # * `:pipeline_id` - *required* - (String) The ID of the pipeline for
      #   which you want to get job information.
      # * `:ascending` - (String) To list jobs in chronological order by the
      #   date and time that they were submitted, enter `true` . To list jobs
      #   in reverse chronological order, enter `false` .
      # * `:page_token` - (String) When Elastic Transcoder returns more than
      #   one page of results, use pageToken in subsequent GET requests to get
      #   each successive page of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:jobs` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:pipeline_id` - (String)
      #     * `:input` - (Hash)
      #       * `:key` - (String)
      #       * `:frame_rate` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:interlaced` - (String)
      #       * `:container` - (String)
      #     * `:output` - (Hash)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:outputs` - (Array<Hash>)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:output_key_prefix` - (String)
      #     * `:playlists` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:format` - (String)
      #       * `:output_keys` - (Array<String>)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #     * `:status` - (String)
      #   * `:next_page_token` - (String)

      # @!method list_jobs_by_status(options = {})
      # Calls the GET ListJobsByStatus API operation.
      # @param [Hash] options
      # * `:status` - *required* - (String) To get information about all of the
      #   jobs associated with the current AWS account that have a given
      #   status, specify the following status: Submitted, Progressing,
      #   Complete, Canceled, or Error.
      # * `:ascending` - (String) To list jobs in chronological order by the
      #   date and time that they were submitted, enter `true` . To list jobs
      #   in reverse chronological order, enter `false` .
      # * `:page_token` - (String) When Elastic Transcoder returns more than
      #   one page of results, use pageToken in subsequent GET requests to get
      #   each successive page of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:jobs` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:pipeline_id` - (String)
      #     * `:input` - (Hash)
      #       * `:key` - (String)
      #       * `:frame_rate` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:interlaced` - (String)
      #       * `:container` - (String)
      #     * `:output` - (Hash)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:outputs` - (Array<Hash>)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:output_key_prefix` - (String)
      #     * `:playlists` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:format` - (String)
      #       * `:output_keys` - (Array<String>)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #     * `:status` - (String)
      #   * `:next_page_token` - (String)

      # @!method list_pipelines(options = {})
      # Calls the GET ListPipelines API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:pipelines` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:arn` - (String)
      #     * `:name` - (String)
      #     * `:status` - (String)
      #     * `:input_bucket` - (String)
      #     * `:output_bucket` - (String)
      #     * `:role` - (String)
      #     * `:notifications` - (Hash)
      #       * `:progressing` - (String)
      #       * `:completed` - (String)
      #       * `:warning` - (String)
      #       * `:error` - (String)
      #     * `:content_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)
      #     * `:thumbnail_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)

      # @!method list_presets(options = {})
      # Calls the GET ListPresets API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:presets` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:container` - (String)
      #     * `:audio` - (Hash)
      #       * `:codec` - (String)
      #       * `:sample_rate` - (String)
      #       * `:bit_rate` - (String)
      #       * `:channels` - (String)
      #     * `:video` - (Hash)
      #       * `:codec` - (String)
      #       * `:codec_options` - (Hash<String,String>)
      #       * `:keyframes_max_dist` - (String)
      #       * `:fixed_gop` - (String)
      #       * `:bit_rate` - (String)
      #       * `:frame_rate` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:max_width` - (String)
      #       * `:max_height` - (String)
      #       * `:display_aspect_ratio` - (String)
      #       * `:sizing_policy` - (String)
      #       * `:padding_policy` - (String)
      #     * `:thumbnails` - (Hash)
      #       * `:format` - (String)
      #       * `:interval` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:max_width` - (String)
      #       * `:max_height` - (String)
      #       * `:sizing_policy` - (String)
      #       * `:padding_policy` - (String)
      #     * `:type` - (String)

      # @!method read_job(options = {})
      # Calls the GET ReadJob API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the job for which you
      #   want to get detailed information.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:job` - (Hash)
      #     * `:id` - (String)
      #     * `:pipeline_id` - (String)
      #     * `:input` - (Hash)
      #       * `:key` - (String)
      #       * `:frame_rate` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:interlaced` - (String)
      #       * `:container` - (String)
      #     * `:output` - (Hash)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:outputs` - (Array<Hash>)
      #       * `:id` - (String)
      #       * `:key` - (String)
      #       * `:thumbnail_pattern` - (String)
      #       * `:rotate` - (String)
      #       * `:preset_id` - (String)
      #       * `:segment_duration` - (String)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #       * `:duration` - (Integer)
      #       * `:width` - (Integer)
      #       * `:height` - (Integer)
      #     * `:output_key_prefix` - (String)
      #     * `:playlists` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:format` - (String)
      #       * `:output_keys` - (Array<String>)
      #       * `:status` - (String)
      #       * `:status_detail` - (String)
      #     * `:status` - (String)

      # @!method read_pipeline(options = {})
      # Calls the GET ReadPipeline API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the pipeline to read.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:pipeline` - (Hash)
      #     * `:id` - (String)
      #     * `:arn` - (String)
      #     * `:name` - (String)
      #     * `:status` - (String)
      #     * `:input_bucket` - (String)
      #     * `:output_bucket` - (String)
      #     * `:role` - (String)
      #     * `:notifications` - (Hash)
      #       * `:progressing` - (String)
      #       * `:completed` - (String)
      #       * `:warning` - (String)
      #       * `:error` - (String)
      #     * `:content_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)
      #     * `:thumbnail_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)

      # @!method read_preset(options = {})
      # Calls the GET ReadPreset API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the preset for which
      #   you want to get detailed information.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:preset` - (Hash)
      #     * `:id` - (String)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:container` - (String)
      #     * `:audio` - (Hash)
      #       * `:codec` - (String)
      #       * `:sample_rate` - (String)
      #       * `:bit_rate` - (String)
      #       * `:channels` - (String)
      #     * `:video` - (Hash)
      #       * `:codec` - (String)
      #       * `:codec_options` - (Hash<String,String>)
      #       * `:keyframes_max_dist` - (String)
      #       * `:fixed_gop` - (String)
      #       * `:bit_rate` - (String)
      #       * `:frame_rate` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:max_width` - (String)
      #       * `:max_height` - (String)
      #       * `:display_aspect_ratio` - (String)
      #       * `:sizing_policy` - (String)
      #       * `:padding_policy` - (String)
      #     * `:thumbnails` - (Hash)
      #       * `:format` - (String)
      #       * `:interval` - (String)
      #       * `:resolution` - (String)
      #       * `:aspect_ratio` - (String)
      #       * `:max_width` - (String)
      #       * `:max_height` - (String)
      #       * `:sizing_policy` - (String)
      #       * `:padding_policy` - (String)
      #     * `:type` - (String)

      # @!method test_role(options = {})
      # Calls the POST TestRole API operation.
      # @param [Hash] options
      # * `:role` - (String) The IAM Amazon Resource Name (ARN) for the role
      #   that you want Elastic Transcoder to test.
      # * `:input_bucket` - (String) The Amazon S3 bucket that contains media
      #   files to be transcoded. The action attempts to read from this bucket.
      # * `:output_bucket` - (String) The Amazon S3 bucket that Elastic
      #   Transcoder will write transcoded media files to. The action attempts
      #   to read from this bucket.
      # * `:topics` - (Array<String>) The ARNs of one or more Amazon Simple
      #   Notification Service (Amazon SNS) topics that you want the action to
      #   send a test notification to.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:success` - (String)
      #   * `:messages` - (Array<String>)

      # @!method update_pipeline(options = {})
      # Calls the PUT UpdatePipeline API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String)
      # * `:name` - (String)
      # * `:input_bucket` - (String)
      # * `:role` - (String)
      # * `:notifications` - (Hash)
      #   * `:progressing` - (String) The Amazon Simple Notification Service
      #     (Amazon SNS) topic that you want to notify when Elastic Transcoder
      #     has started to process the job.
      #   * `:completed` - (String) The Amazon SNS topic that you want to
      #     notify when Elastic Transcoder has finished processing the job.
      #   * `:warning` - (String) The Amazon SNS topic that you want to notify
      #     when Elastic Transcoder encounters a warning condition.
      #   * `:error` - (String) The Amazon SNS topic that you want to notify
      #     when Elastic Transcoder encounters an error condition.
      # * `:content_config` - (Hash)
      #   * `:bucket` - (String)
      #   * `:storage_class` - (String)
      #   * `:permissions` - (Array<Hash>)
      #     * `:grantee_type` - (String)
      #     * `:grantee` - (String)
      #     * `:access` - (Array<String>)
      # * `:thumbnail_config` - (Hash)
      #   * `:bucket` - (String)
      #   * `:storage_class` - (String)
      #   * `:permissions` - (Array<Hash>)
      #     * `:grantee_type` - (String)
      #     * `:grantee` - (String)
      #     * `:access` - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:pipeline` - (Hash)
      #     * `:id` - (String)
      #     * `:arn` - (String)
      #     * `:name` - (String)
      #     * `:status` - (String)
      #     * `:input_bucket` - (String)
      #     * `:output_bucket` - (String)
      #     * `:role` - (String)
      #     * `:notifications` - (Hash)
      #       * `:progressing` - (String)
      #       * `:completed` - (String)
      #       * `:warning` - (String)
      #       * `:error` - (String)
      #     * `:content_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)
      #     * `:thumbnail_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)

      # @!method update_pipeline_notifications(options = {})
      # Calls the POST UpdatePipelineNotifications API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the pipeline for
      #   which you want to change notification settings.
      # * `:notifications` - (Hash) The topic ARN for the Amazon Simple
      #   Notification Service (Amazon SNS) topic that you want to notify to
      #   report job status. To receive notifications, you must also subscribe
      #   to the new topic in the Amazon SNS console. Progressing: The topic
      #   ARN for the Amazon Simple Notification Service (Amazon SNS) topic
      #   that you want to notify when Elastic Transcoder has started to
      #   process jobs that are added to this pipeline. This is the ARN that
      #   Amazon SNS returned when you created the topic. Completed: The topic
      #   ARN for the Amazon SNS topic that you want to notify when Elastic
      #   Transcoder has finished processing a job. This is the ARN that Amazon
      #   SNS returned when you created the topic. Warning: The topic ARN for
      #   the Amazon SNS topic that you want to notify when Elastic Transcoder
      #   encounters a warning condition. This is the ARN that Amazon SNS
      #   returned when you created the topic. Error: The topic ARN for the
      #   Amazon SNS topic that you want to notify when Elastic Transcoder
      #   encounters an error condition. This is the ARN that Amazon SNS
      #   returned when you created the topic.
      #   * `:progressing` - (String) The Amazon Simple Notification Service
      #     (Amazon SNS) topic that you want to notify when Elastic Transcoder
      #     has started to process the job.
      #   * `:completed` - (String) The Amazon SNS topic that you want to
      #     notify when Elastic Transcoder has finished processing the job.
      #   * `:warning` - (String) The Amazon SNS topic that you want to notify
      #     when Elastic Transcoder encounters a warning condition.
      #   * `:error` - (String) The Amazon SNS topic that you want to notify
      #     when Elastic Transcoder encounters an error condition.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:pipeline` - (Hash)
      #     * `:id` - (String)
      #     * `:arn` - (String)
      #     * `:name` - (String)
      #     * `:status` - (String)
      #     * `:input_bucket` - (String)
      #     * `:output_bucket` - (String)
      #     * `:role` - (String)
      #     * `:notifications` - (Hash)
      #       * `:progressing` - (String)
      #       * `:completed` - (String)
      #       * `:warning` - (String)
      #       * `:error` - (String)
      #     * `:content_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)
      #     * `:thumbnail_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)

      # @!method update_pipeline_status(options = {})
      # Calls the POST UpdatePipelineStatus API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identifier of the pipeline to
      #   update.
      # * `:status` - (String) The desired status of the pipeline: Active: The
      #   pipeline is processing jobs. Paused: The pipeline is not currently
      #   processing jobs.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:pipeline` - (Hash)
      #     * `:id` - (String)
      #     * `:arn` - (String)
      #     * `:name` - (String)
      #     * `:status` - (String)
      #     * `:input_bucket` - (String)
      #     * `:output_bucket` - (String)
      #     * `:role` - (String)
      #     * `:notifications` - (Hash)
      #       * `:progressing` - (String)
      #       * `:completed` - (String)
      #       * `:warning` - (String)
      #       * `:error` - (String)
      #     * `:content_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)
      #     * `:thumbnail_config` - (Hash)
      #       * `:bucket` - (String)
      #       * `:storage_class` - (String)
      #       * `:permissions` - (Array<Hash>)
      #         * `:grantee_type` - (String)
      #         * `:grantee` - (String)
      #         * `:access` - (Array<String>)

      # end client methods #

      define_client_methods('2012-09-25')

    end
  end
end
