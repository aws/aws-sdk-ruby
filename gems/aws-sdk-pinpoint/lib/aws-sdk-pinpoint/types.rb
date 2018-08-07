# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pinpoint
  module Types

    # Amazon Device Messaging channel definition.
    #
    # @note When making an API call, you may pass ADMChannelRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "__string",
    #         client_secret: "__string",
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] client_id
    #   The Client ID that you obtained from the Amazon App Distribution
    #   Portal.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The Client Secret that you obtained from the Amazon App Distribution
    #   Portal.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether or not the channel is enabled for sending
    #   messages.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ADMChannelRequest AWS API Documentation
    #
    class ADMChannelRequest < Struct.new(
      :client_id,
      :client_secret,
      :enabled)
      include Aws::Structure
    end

    # Amazon Device Messaging channel definition.
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the channel applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when this channel was created.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether or not the channel is enabled for sending
    #   messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the channel. Retained for backwards
    #   compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Indicates whether or not the channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last updated this channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when this channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. For this channel, the value is always "ADM."
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The channel version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ADMChannelResponse AWS API Documentation
    #
    class ADMChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # ADM Message.
    #
    # @note When making an API call, you may pass ADMMessage
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         consolidation_key: "__string",
    #         data: {
    #           "__string" => "__string",
    #         },
    #         expires_after: "__string",
    #         icon_reference: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         md5: "__string",
    #         raw_content: "__string",
    #         silent_push: false,
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action that occurs if the user taps a push notification
    #   delivered by the campaign: OPEN\_APP - Your app launches, or it
    #   becomes the foreground app if it has been sent to the background.
    #   This is the default action. DEEP\_LINK - Uses deep linking features
    #   in iOS and Android to open your app and display a designated user
    #   interface within the app. URL - The default mobile browser on the
    #   user's device launches and opens a web page at the URL you specify.
    #   Possible values include: OPEN\_APP \| DEEP\_LINK \| URL
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body of the notification.
    #   @return [String]
    #
    # @!attribute [rw] consolidation_key
    #   Optional. Arbitrary string used to indicate multiple messages are
    #   logically the same and that ADM is allowed to drop previously
    #   enqueued messages in favor of this one.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data payload used for a silent push. This payload is added to
    #   the notifications' data.pinpoint.jsonBody' object
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expires_after
    #   Optional. Number of seconds ADM should retain the message if the
    #   device is offline
    #   @return [String]
    #
    # @!attribute [rw] icon_reference
    #   The icon image name of the asset saved in your application.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL that points to an image used as the large icon to the
    #   notification content view.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL that points to an image used in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] md5
    #   Optional. Base-64-encoded MD5 checksum of the data parameter. Used
    #   to verify data integrity
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The Raw JSON formatted string to be used as the payload. This value
    #   overrides the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Indicates if the message should display on the users device. Silent
    #   pushes can be used for Remote Configuration and Phone Home use
    #   cases.
    #   @return [Boolean]
    #
    # @!attribute [rw] small_image_icon_url
    #   The URL that points to an image used as the small icon for the
    #   notification which will be used to represent the notification in the
    #   status bar and content view
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   Indicates a sound to play when the device receives the notification.
    #   Supports default, or the filename of a sound resource bundled in the
    #   app. Android sound files must reside in /res/raw/
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   Default message substitutions. Can be overridden by individual
    #   address substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title
    #   The message title that displays above the message on the user's
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the user's mobile browser. Used if the value for
    #   Action is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ADMMessage AWS API Documentation
    #
    class ADMMessage < Struct.new(
      :action,
      :body,
      :consolidation_key,
      :data,
      :expires_after,
      :icon_reference,
      :image_icon_url,
      :image_url,
      :md5,
      :raw_content,
      :silent_push,
      :small_image_icon_url,
      :sound,
      :substitutions,
      :title,
      :url)
      include Aws::Structure
    end

    # Apple Push Notification Service channel definition.
    #
    # @note When making an API call, you may pass APNSChannelRequest
    #   data as a hash:
    #
    #       {
    #         bundle_id: "__string",
    #         certificate: "__string",
    #         default_authentication_method: "__string",
    #         enabled: false,
    #         private_key: "__string",
    #         team_id: "__string",
    #         token_key: "__string",
    #         token_key_id: "__string",
    #       }
    #
    # @!attribute [rw] bundle_id
    #   The bundle id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The distribution certificate from Apple.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The certificate private key.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The team id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSChannelRequest AWS API Documentation
    #
    class APNSChannelRequest < Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id)
      include Aws::Structure
    end

    # Apple Distribution Push Notification Service channel definition.
    #
    # @!attribute [rw] application_id
    #   The ID of the application that the channel applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when this channel was created.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   Indicates whether the channel is configured with a key for APNs
    #   token authentication. Provide a token key by setting the TokenKey
    #   attribute.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the channel. Retained for backwards
    #   compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Indicates whether or not the channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last updated this channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when this channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. For this channel, the value is always "ADM."
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The channel version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSChannelResponse AWS API Documentation
    #
    class APNSChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # APNS Message.
    #
    # @note When making an API call, you may pass APNSMessage
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         badge: 1,
    #         body: "__string",
    #         category: "__string",
    #         collapse_id: "__string",
    #         data: {
    #           "__string" => "__string",
    #         },
    #         media_url: "__string",
    #         preferred_authentication_method: "__string",
    #         priority: "__string",
    #         raw_content: "__string",
    #         silent_push: false,
    #         sound: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         thread_id: "__string",
    #         time_to_live: 1,
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action that occurs if the user taps a push notification
    #   delivered by the campaign: OPEN\_APP - Your app launches, or it
    #   becomes the foreground app if it has been sent to the background.
    #   This is the default action. DEEP\_LINK - Uses deep linking features
    #   in iOS and Android to open your app and display a designated user
    #   interface within the app. URL - The default mobile browser on the
    #   user's device launches and opens a web page at the URL you specify.
    #   Possible values include: OPEN\_APP \| DEEP\_LINK \| URL
    #   @return [String]
    #
    # @!attribute [rw] badge
    #   Include this key when you want the system to modify the badge of
    #   your app icon. If this key is not included in the dictionary, the
    #   badge is not changed. To remove the badge, set the value of this key
    #   to 0.
    #   @return [Integer]
    #
    # @!attribute [rw] body
    #   The message body of the notification.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Provide this key with a string value that represents the
    #   notification's type. This value corresponds to the value in the
    #   identifier property of one of your app's registered categories.
    #   @return [String]
    #
    # @!attribute [rw] collapse_id
    #   An ID that, if assigned to multiple messages, causes APNs to
    #   coalesce the messages into a single push notification instead of
    #   delivering each message individually. The value must not exceed 64
    #   bytes. Amazon Pinpoint uses this value to set the apns-collapse-id
    #   request header when it sends the message to APNs.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data payload used for a silent push. This payload is added to
    #   the notifications' data.pinpoint.jsonBody' object
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] media_url
    #   The URL that points to a video used in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] preferred_authentication_method
    #   The preferred authentication method, either "CERTIFICATE" or
    #   "TOKEN"
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The message priority. Amazon Pinpoint uses this value to set the
    #   apns-priority request header when it sends the message to APNs.
    #   Accepts the following values: "5" - Low priority. Messages might
    #   be delayed, delivered in groups, and throttled. "10" - High
    #   priority. Messages are sent immediately. High priority messages must
    #   cause an alert, sound, or badge on the receiving device. The default
    #   value is "10". The equivalent values for FCM or GCM messages are
    #   "normal" and "high". Amazon Pinpoint accepts these values for
    #   APNs messages and converts them. For more information about the
    #   apns-priority parameter, see Communicating with APNs in the APNs
    #   Local and Remote Notification Programming Guide.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The Raw JSON formatted string to be used as the payload. This value
    #   overrides the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Indicates if the message should display on the users device. Silent
    #   pushes can be used for Remote Configuration and Phone Home use
    #   cases.
    #   @return [Boolean]
    #
    # @!attribute [rw] sound
    #   Include this key when you want the system to play a sound. The value
    #   of this key is the name of a sound file in your app's main bundle
    #   or in the Library/Sounds folder of your app's data container. If
    #   the sound file cannot be found, or if you specify defaultfor the
    #   value, the system plays the default alert sound.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   Default message substitutions. Can be overridden by individual
    #   address substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] thread_id
    #   Provide this key with a string value that represents the
    #   app-specific identifier for grouping notifications. If you provide a
    #   Notification Content app extension, you can use this value to group
    #   your notifications together.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live
    #   The length of time (in seconds) that APNs stores and attempts to
    #   deliver the message. If the value is 0, APNs does not store the
    #   message or attempt to deliver it more than once. Amazon Pinpoint
    #   uses this value to set the apns-expiration request header when it
    #   sends the message to APNs.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The message title that displays above the message on the user's
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the user's mobile browser. Used if the value for
    #   Action is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSMessage AWS API Documentation
    #
    class APNSMessage < Struct.new(
      :action,
      :badge,
      :body,
      :category,
      :collapse_id,
      :data,
      :media_url,
      :preferred_authentication_method,
      :priority,
      :raw_content,
      :silent_push,
      :sound,
      :substitutions,
      :thread_id,
      :time_to_live,
      :title,
      :url)
      include Aws::Structure
    end

    # Apple Development Push Notification Service channel definition.
    #
    # @note When making an API call, you may pass APNSSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         bundle_id: "__string",
    #         certificate: "__string",
    #         default_authentication_method: "__string",
    #         enabled: false,
    #         private_key: "__string",
    #         team_id: "__string",
    #         token_key: "__string",
    #         token_key_id: "__string",
    #       }
    #
    # @!attribute [rw] bundle_id
    #   The bundle id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The distribution certificate from Apple.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The certificate private key.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The team id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSSandboxChannelRequest AWS API Documentation
    #
    class APNSSandboxChannelRequest < Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id)
      include Aws::Structure
    end

    # Apple Development Push Notification Service channel definition.
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the channel applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   Indicates whether the channel is configured with a key for APNs
    #   token authentication. Provide a token key by setting the TokenKey
    #   attribute.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used, only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who last updated this entry
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. Will be APNS\_SANDBOX.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSSandboxChannelResponse AWS API Documentation
    #
    class APNSSandboxChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # Apple VoIP Push Notification Service channel definition.
    #
    # @note When making an API call, you may pass APNSVoipChannelRequest
    #   data as a hash:
    #
    #       {
    #         bundle_id: "__string",
    #         certificate: "__string",
    #         default_authentication_method: "__string",
    #         enabled: false,
    #         private_key: "__string",
    #         team_id: "__string",
    #         token_key: "__string",
    #         token_key_id: "__string",
    #       }
    #
    # @!attribute [rw] bundle_id
    #   The bundle id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The distribution certificate from Apple.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The certificate private key.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The team id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSVoipChannelRequest AWS API Documentation
    #
    class APNSVoipChannelRequest < Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id)
      include Aws::Structure
    end

    # Apple VoIP Push Notification Service channel definition.
    #
    # @!attribute [rw] application_id
    #   Application id
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   If the channel is registered with a token key for authentication.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used, only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who made the last change
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. Will be APNS.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSVoipChannelResponse AWS API Documentation
    #
    class APNSVoipChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # Apple VoIP Developer Push Notification Service channel definition.
    #
    # @note When making an API call, you may pass APNSVoipSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         bundle_id: "__string",
    #         certificate: "__string",
    #         default_authentication_method: "__string",
    #         enabled: false,
    #         private_key: "__string",
    #         team_id: "__string",
    #         token_key: "__string",
    #         token_key_id: "__string",
    #       }
    #
    # @!attribute [rw] bundle_id
    #   The bundle id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The distribution certificate from Apple.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The certificate private key.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The team id used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The token key used for APNs Tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSVoipSandboxChannelRequest AWS API Documentation
    #
    class APNSVoipSandboxChannelRequest < Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id)
      include Aws::Structure
    end

    # Apple VoIP Developer Push Notification Service channel definition.
    #
    # @!attribute [rw] application_id
    #   Application id
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method used for APNs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   If the channel is registered with a token key for authentication.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used, only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who made the last change
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. Will be APNS.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSVoipSandboxChannelResponse AWS API Documentation
    #
    class APNSVoipSandboxChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # Activities for campaign.
    #
    # @!attribute [rw] item
    #   List of campaign activities
    #   @return [Array<Types::ActivityResponse>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ActivitiesResponse AWS API Documentation
    #
    class ActivitiesResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Activity definition
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the campaign applies.
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   The ID of the campaign to which the activity applies.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The actual time the activity was marked CANCELLED or COMPLETED.
    #   Provided in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique activity ID.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   Indicates whether the activity succeeded. Valid values: SUCCESS,
    #   FAIL
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start
    #   The scheduled start time for the activity in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The actual start time of the activity in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the activity. Valid values: PENDING, INITIALIZING,
    #   RUNNING, PAUSED, CANCELLED, COMPLETED
    #   @return [String]
    #
    # @!attribute [rw] successful_endpoint_count
    #   The total number of endpoints to which the campaign successfully
    #   delivered messages.
    #   @return [Integer]
    #
    # @!attribute [rw] timezones_completed_count
    #   The total number of timezones completed.
    #   @return [Integer]
    #
    # @!attribute [rw] timezones_total_count
    #   The total number of unique timezones present in the segment.
    #   @return [Integer]
    #
    # @!attribute [rw] total_endpoint_count
    #   The total number of endpoints to which the campaign attempts to
    #   deliver messages.
    #   @return [Integer]
    #
    # @!attribute [rw] treatment_id
    #   The ID of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ActivityResponse AWS API Documentation
    #
    class ActivityResponse < Struct.new(
      :application_id,
      :campaign_id,
      :end,
      :id,
      :result,
      :scheduled_start,
      :start,
      :state,
      :successful_endpoint_count,
      :timezones_completed_count,
      :timezones_total_count,
      :total_endpoint_count,
      :treatment_id)
      include Aws::Structure
    end

    # Address configuration.
    #
    # @note When making an API call, you may pass AddressConfiguration
    #   data as a hash:
    #
    #       {
    #         body_override: "__string",
    #         channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #         context: {
    #           "__string" => "__string",
    #         },
    #         raw_content: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         title_override: "__string",
    #       }
    #
    # @!attribute [rw] body_override
    #   Body override. If specified will override default body.
    #   @return [String]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: GCM \| APNS \| APNS\_SANDBOX \|
    #   APNS\_VOIP \| APNS\_VOIP\_SANDBOX \| ADM \| SMS \| EMAIL \| BAIDU
    #   @return [String]
    #
    # @!attribute [rw] context
    #   A map of custom attributes to attributes to be attached to the
    #   message for this address. This payload is added to the push
    #   notification's 'data.pinpoint' object or added to the email/sms
    #   delivery receipt event attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] raw_content
    #   The Raw JSON formatted string to be used as the payload. This value
    #   overrides the message.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   A map of substitution values for the message to be merged with the
    #   DefaultMessage's substitutions. Substitutions on this map take
    #   precedence over the all other substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title_override
    #   Title override. If specified will override default title if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/AddressConfiguration AWS API Documentation
    #
    class AddressConfiguration < Struct.new(
      :body_override,
      :channel_type,
      :context,
      :raw_content,
      :substitutions,
      :title_override)
      include Aws::Structure
    end

    # Application Response.
    #
    # @!attribute [rw] id
    #   The unique application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ApplicationResponse AWS API Documentation
    #
    class ApplicationResponse < Struct.new(
      :id,
      :name)
      include Aws::Structure
    end

    # Application settings.
    #
    # @!attribute [rw] application_id
    #   The unique ID for the application.
    #   @return [String]
    #
    # @!attribute [rw] campaign_hook
    #   Default campaign hook.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] last_modified_date
    #   The date that the settings were last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The default campaign limits for the app. These limits apply to each
    #   campaign for the app, unless the campaign overrides the default with
    #   limits of its own.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] quiet_time
    #   The default quiet time for the app. Each campaign for this app sends
    #   no messages during this time unless the campaign overrides the
    #   default with a quiet time of its own.
    #   @return [Types::QuietTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ApplicationSettingsResource AWS API Documentation
    #
    class ApplicationSettingsResource < Struct.new(
      :application_id,
      :campaign_hook,
      :last_modified_date,
      :limits,
      :quiet_time)
      include Aws::Structure
    end

    # Get Applications Result.
    #
    # @!attribute [rw] item
    #   List of applications returned in this page.
    #   @return [Array<Types::ApplicationResponse>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ApplicationsResponse AWS API Documentation
    #
    class ApplicationsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Custom attibute dimension
    #
    # @note When making an API call, you may pass AttributeDimension
    #   data as a hash:
    #
    #       {
    #         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #         values: ["__string"],
    #       }
    #
    # @!attribute [rw] attribute_type
    #   The type of dimension: INCLUSIVE - Endpoints that match the criteria
    #   are included in the segment. EXCLUSIVE - Endpoints that match the
    #   criteria are excluded from the segment.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The criteria values for the segment dimension. Endpoints with
    #   matching attribute values are included or excluded from the segment,
    #   depending on the setting for Type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/AttributeDimension AWS API Documentation
    #
    class AttributeDimension < Struct.new(
      :attribute_type,
      :values)
      include Aws::Structure
    end

    # Attributes.
    #
    # @!attribute [rw] application_id
    #   The unique ID for the application.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The attribute type for the application.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes for the application.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/AttributesResource AWS API Documentation
    #
    class AttributesResource < Struct.new(
      :application_id,
      :attribute_type,
      :attributes)
      include Aws::Structure
    end

    # Baidu Cloud Push credentials
    #
    # @note When making an API call, you may pass BaiduChannelRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "__string",
    #         enabled: false,
    #         secret_key: "__string",
    #       }
    #
    # @!attribute [rw] api_key
    #   Platform credential API key from Baidu.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] secret_key
    #   Platform credential Secret key from Baidu.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/BaiduChannelRequest AWS API Documentation
    #
    class BaiduChannelRequest < Struct.new(
      :api_key,
      :enabled,
      :secret_key)
      include Aws::Structure
    end

    # Baidu Cloud Messaging channel definition
    #
    # @!attribute [rw] application_id
    #   Application id
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   The Baidu API key from Baidu.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used, only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who made the last change
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. Will be BAIDU
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/BaiduChannelResponse AWS API Documentation
    #
    class BaiduChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :credential,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # Baidu Message.
    #
    # @note When making an API call, you may pass BaiduMessage
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         data: {
    #           "__string" => "__string",
    #         },
    #         icon_reference: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         silent_push: false,
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         time_to_live: 1,
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action that occurs if the user taps a push notification
    #   delivered by the campaign: OPEN\_APP - Your app launches, or it
    #   becomes the foreground app if it has been sent to the background.
    #   This is the default action. DEEP\_LINK - Uses deep linking features
    #   in iOS and Android to open your app and display a designated user
    #   interface within the app. URL - The default mobile browser on the
    #   user's device launches and opens a web page at the URL you specify.
    #   Possible values include: OPEN\_APP \| DEEP\_LINK \| URL
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body of the notification.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data payload used for a silent push. This payload is added to
    #   the notifications' data.pinpoint.jsonBody' object
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] icon_reference
    #   The icon image name of the asset saved in your application.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL that points to an image used as the large icon to the
    #   notification content view.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL that points to an image used in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The Raw JSON formatted string to be used as the payload. This value
    #   overrides the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Indicates if the message should display on the users device. Silent
    #   pushes can be used for Remote Configuration and Phone Home use
    #   cases.
    #   @return [Boolean]
    #
    # @!attribute [rw] small_image_icon_url
    #   The URL that points to an image used as the small icon for the
    #   notification which will be used to represent the notification in the
    #   status bar and content view
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   Indicates a sound to play when the device receives the notification.
    #   Supports default, or the filename of a sound resource bundled in the
    #   app. Android sound files must reside in /res/raw/
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   Default message substitutions. Can be overridden by individual
    #   address substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] time_to_live
    #   This parameter specifies how long (in seconds) the message should be
    #   kept in Baidu storage if the device is offline. The and the default
    #   value and the maximum time to live supported is 7 days (604800
    #   seconds)
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The message title that displays above the message on the user's
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the user's mobile browser. Used if the value for
    #   Action is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/BaiduMessage AWS API Documentation
    #
    class BaiduMessage < Struct.new(
      :action,
      :body,
      :data,
      :icon_reference,
      :image_icon_url,
      :image_url,
      :raw_content,
      :silent_push,
      :small_image_icon_url,
      :sound,
      :substitutions,
      :time_to_live,
      :title,
      :url)
      include Aws::Structure
    end

    # The email message configuration.
    #
    # @note When making an API call, you may pass CampaignEmailMessage
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         from_address: "__string",
    #         html_body: "__string",
    #         title: "__string",
    #       }
    #
    # @!attribute [rw] body
    #   The email text body.
    #   @return [String]
    #
    # @!attribute [rw] from_address
    #   The email address used to send the email from. Defaults to use
    #   FromAddress specified in the Email Channel.
    #   @return [String]
    #
    # @!attribute [rw] html_body
    #   The email html body.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The email title (Or subject).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignEmailMessage AWS API Documentation
    #
    class CampaignEmailMessage < Struct.new(
      :body,
      :from_address,
      :html_body,
      :title)
      include Aws::Structure
    end

    # Campaign hook information.
    #
    # @note When making an API call, you may pass CampaignHook
    #   data as a hash:
    #
    #       {
    #         lambda_function_name: "__string",
    #         mode: "DELIVERY", # accepts DELIVERY, FILTER
    #         web_url: "__string",
    #       }
    #
    # @!attribute [rw] lambda_function_name
    #   Lambda function name or arn to be called for delivery
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   What mode Lambda should be invoked in.
    #   @return [String]
    #
    # @!attribute [rw] web_url
    #   Web URL to call for hook. If the URL has authentication specified it
    #   will be added as authentication to the request
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignHook AWS API Documentation
    #
    class CampaignHook < Struct.new(
      :lambda_function_name,
      :mode,
      :web_url)
      include Aws::Structure
    end

    # Campaign Limits are used to limit the number of messages that can be
    # sent to a user.
    #
    # @note When making an API call, you may pass CampaignLimits
    #   data as a hash:
    #
    #       {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #       }
    #
    # @!attribute [rw] daily
    #   The maximum number of messages that the campaign can send daily.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_duration
    #   The length of time (in seconds) that the campaign can run before it
    #   ends and message deliveries stop. This duration begins at the
    #   scheduled start time for the campaign. The minimum value is 60.
    #   @return [Integer]
    #
    # @!attribute [rw] messages_per_second
    #   The number of messages that the campaign can send per second. The
    #   minimum value is 50, and the maximum is 20000.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The maximum total number of messages that the campaign can send.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignLimits AWS API Documentation
    #
    class CampaignLimits < Struct.new(
      :daily,
      :maximum_duration,
      :messages_per_second,
      :total)
      include Aws::Structure
    end

    # Campaign definition
    #
    # @!attribute [rw] additional_treatments
    #   Treatments that are defined in addition to the default treatment.
    #   @return [Array<Types::TreatmentResource>]
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the campaign applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the campaign was created in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] default_state
    #   The status of the campaign's default treatment. Only present for
    #   A/B test campaigns.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] description
    #   A description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] holdout_percent
    #   The allocated percentage of end users who will not receive messages
    #   from this campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] hook
    #   Campaign hook information.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] id
    #   The unique campaign ID.
    #   @return [String]
    #
    # @!attribute [rw] is_paused
    #   Indicates whether the campaign is paused. A paused campaign does not
    #   send messages unless you resume it by setting IsPaused to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_date
    #   The date the campaign was last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The campaign limits settings.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] name
    #   The custom name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to which the campaign sends messages.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to which the campaign sends messages.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The campaign status. An A/B test campaign will have a status of
    #   COMPLETED only when all treatments have a status of COMPLETED.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The campaign version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignResponse AWS API Documentation
    #
    class CampaignResponse < Struct.new(
      :additional_treatments,
      :application_id,
      :creation_date,
      :default_state,
      :description,
      :holdout_percent,
      :hook,
      :id,
      :is_paused,
      :last_modified_date,
      :limits,
      :message_configuration,
      :name,
      :schedule,
      :segment_id,
      :segment_version,
      :state,
      :treatment_description,
      :treatment_name,
      :version)
      include Aws::Structure
    end

    # SMS message configuration.
    #
    # @note When making an API call, you may pass CampaignSmsMessage
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #         sender_id: "__string",
    #       }
    #
    # @!attribute [rw] body
    #   The SMS text body.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   Is this is a transactional SMS message, otherwise a promotional
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   Sender ID of sent message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignSmsMessage AWS API Documentation
    #
    class CampaignSmsMessage < Struct.new(
      :body,
      :message_type,
      :sender_id)
      include Aws::Structure
    end

    # State of the Campaign
    #
    # @!attribute [rw] campaign_status
    #   The status of the campaign, or the status of a treatment that
    #   belongs to an A/B test campaign. Valid values: SCHEDULED, EXECUTING,
    #   PENDING\_NEXT\_RUN, COMPLETED, PAUSED
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignState AWS API Documentation
    #
    class CampaignState < Struct.new(
      :campaign_status)
      include Aws::Structure
    end

    # List of available campaigns.
    #
    # @!attribute [rw] item
    #   A list of campaigns.
    #   @return [Array<Types::CampaignResponse>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignsResponse AWS API Documentation
    #
    class CampaignsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Base definition for channel response.
    #
    # @!attribute [rw] application_id
    #   Application id
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used, only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who made the last change
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ChannelResponse AWS API Documentation
    #
    class ChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :version)
      include Aws::Structure
    end

    # Get channels definition
    #
    # @!attribute [rw] channels
    #   A map of channels, with the ChannelType as the key and the Channel
    #   as the value.
    #   @return [Hash<String,Types::ChannelResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ChannelsResponse AWS API Documentation
    #
    class ChannelsResponse < Struct.new(
      :channels)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAppRequest
    #   data as a hash:
    #
    #       {
    #         create_application_request: { # required
    #           name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] create_application_request
    #   Application Request.
    #   @return [Types::CreateApplicationRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :create_application_request)
      include Aws::Structure
    end

    # @!attribute [rw] application_response
    #   Application Response.
    #   @return [Types::ApplicationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateAppResponse AWS API Documentation
    #
    class CreateAppResponse < Struct.new(
      :application_response)
      include Aws::Structure
    end

    # Application Request.
    #
    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string",
    #       }
    #
    # @!attribute [rw] name
    #   The display name of the application. Used in the Amazon Pinpoint
    #   console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_campaign_request: { # required
    #           additional_treatments: [
    #             {
    #               message_configuration: {
    #                 adm_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 apns_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 baidu_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 default_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 email_message: {
    #                   body: "__string",
    #                   from_address: "__string",
    #                   html_body: "__string",
    #                   title: "__string",
    #                 },
    #                 gcm_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 sms_message: {
    #                   body: "__string",
    #                   message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #                   sender_id: "__string",
    #                 },
    #               },
    #               schedule: {
    #                 end_time: "__string",
    #                 frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string",
    #                 },
    #                 start_time: "__string",
    #                 timezone: "__string",
    #               },
    #               size_percent: 1,
    #               treatment_description: "__string",
    #               treatment_name: "__string",
    #             },
    #           ],
    #           description: "__string",
    #           holdout_percent: 1,
    #           hook: {
    #             lambda_function_name: "__string",
    #             mode: "DELIVERY", # accepts DELIVERY, FILTER
    #             web_url: "__string",
    #           },
    #           is_paused: false,
    #           limits: {
    #             daily: 1,
    #             maximum_duration: 1,
    #             messages_per_second: 1,
    #             total: 1,
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               html_body: "__string",
    #               title: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #           },
    #           name: "__string",
    #           schedule: {
    #             end_time: "__string",
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string",
    #             timezone: "__string",
    #           },
    #           segment_id: "__string",
    #           segment_version: 1,
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_campaign_request
    #   Used to create a campaign.
    #   @return [Types::WriteCampaignRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateCampaignRequest AWS API Documentation
    #
    class CreateCampaignRequest < Struct.new(
      :application_id,
      :write_campaign_request)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateCampaignResponse AWS API Documentation
    #
    class CreateCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExportJobRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         export_job_request: { # required
    #           role_arn: "__string",
    #           s3_url_prefix: "__string",
    #           segment_id: "__string",
    #           segment_version: 1,
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] export_job_request
    #   Export job request.
    #   @return [Types::ExportJobRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateExportJobRequest AWS API Documentation
    #
    class CreateExportJobRequest < Struct.new(
      :application_id,
      :export_job_request)
      include Aws::Structure
    end

    # @!attribute [rw] export_job_response
    #   Export job response.
    #   @return [Types::ExportJobResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateExportJobResponse AWS API Documentation
    #
    class CreateExportJobResponse < Struct.new(
      :export_job_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImportJobRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         import_job_request: { # required
    #           define_segment: false,
    #           external_id: "__string",
    #           format: "CSV", # accepts CSV, JSON
    #           register_endpoints: false,
    #           role_arn: "__string",
    #           s3_url: "__string",
    #           segment_id: "__string",
    #           segment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] import_job_request
    #   Import job request.
    #   @return [Types::ImportJobRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateImportJobRequest AWS API Documentation
    #
    class CreateImportJobRequest < Struct.new(
      :application_id,
      :import_job_request)
      include Aws::Structure
    end

    # @!attribute [rw] import_job_response
    #   Import job response.
    #   @return [Types::ImportJobResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateImportJobResponse AWS API Documentation
    #
    class CreateImportJobResponse < Struct.new(
      :import_job_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_segment_request: { # required
    #           dimensions: {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               gps_point: {
    #                 coordinates: {
    #                   latitude: 1.0,
    #                   longitude: 1.0,
    #                 },
    #                 range_in_kilometers: 1.0,
    #               },
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string",
    #                 value: 1.0,
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #           },
    #           name: "__string",
    #           segment_groups: {
    #             groups: [
    #               {
    #                 dimensions: [
    #                   {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       gps_point: {
    #                         coordinates: {
    #                           latitude: 1.0,
    #                           longitude: 1.0,
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string",
    #                         value: 1.0,
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                     },
    #                   },
    #                 ],
    #                 source_segments: [
    #                   {
    #                     id: "__string",
    #                     version: 1,
    #                   },
    #                 ],
    #                 source_type: "ALL", # accepts ALL, ANY, NONE
    #                 type: "ALL", # accepts ALL, ANY, NONE
    #               },
    #             ],
    #             include: "ALL", # accepts ALL, ANY, NONE
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_segment_request
    #   Segment definition.
    #   @return [Types::WriteSegmentRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSegmentRequest AWS API Documentation
    #
    class CreateSegmentRequest < Struct.new(
      :application_id,
      :write_segment_request)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSegmentResponse AWS API Documentation
    #
    class CreateSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # The default message to use across all channels.
    #
    # @note When making an API call, you may pass DefaultMessage
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] body
    #   The message body of the notification, the email body or the text
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   Default message substitutions. Can be overridden by individual
    #   address substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DefaultMessage AWS API Documentation
    #
    class DefaultMessage < Struct.new(
      :body,
      :substitutions)
      include Aws::Structure
    end

    # Default Push Notification Message.
    #
    # @note When making an API call, you may pass DefaultPushNotificationMessage
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         data: {
    #           "__string" => "__string",
    #         },
    #         silent_push: false,
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action that occurs if the user taps a push notification
    #   delivered by the campaign: OPEN\_APP - Your app launches, or it
    #   becomes the foreground app if it has been sent to the background.
    #   This is the default action. DEEP\_LINK - Uses deep linking features
    #   in iOS and Android to open your app and display a designated user
    #   interface within the app. URL - The default mobile browser on the
    #   user's device launches and opens a web page at the URL you specify.
    #   Possible values include: OPEN\_APP \| DEEP\_LINK \| URL
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body of the notification.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data payload used for a silent push. This payload is added to
    #   the notifications' data.pinpoint.jsonBody' object
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] silent_push
    #   Indicates if the message should display on the users device. Silent
    #   pushes can be used for Remote Configuration and Phone Home use
    #   cases.
    #   @return [Boolean]
    #
    # @!attribute [rw] substitutions
    #   Default message substitutions. Can be overridden by individual
    #   address substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title
    #   The message title that displays above the message on the user's
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the user's mobile browser. Used if the value for
    #   Action is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DefaultPushNotificationMessage AWS API Documentation
    #
    class DefaultPushNotificationMessage < Struct.new(
      :action,
      :body,
      :data,
      :silent_push,
      :substitutions,
      :title,
      :url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAdmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteAdmChannelRequest AWS API Documentation
    #
    class DeleteAdmChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] adm_channel_response
    #   Amazon Device Messaging channel definition.
    #   @return [Types::ADMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteAdmChannelResponse AWS API Documentation
    #
    class DeleteAdmChannelResponse < Struct.new(
      :adm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApnsChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsChannelRequest AWS API Documentation
    #
    class DeleteApnsChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_channel_response
    #   Apple Distribution Push Notification Service channel definition.
    #   @return [Types::APNSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsChannelResponse AWS API Documentation
    #
    class DeleteApnsChannelResponse < Struct.new(
      :apns_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApnsSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsSandboxChannelRequest AWS API Documentation
    #
    class DeleteApnsSandboxChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_sandbox_channel_response
    #   Apple Development Push Notification Service channel definition.
    #   @return [Types::APNSSandboxChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsSandboxChannelResponse AWS API Documentation
    #
    class DeleteApnsSandboxChannelResponse < Struct.new(
      :apns_sandbox_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApnsVoipChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsVoipChannelRequest AWS API Documentation
    #
    class DeleteApnsVoipChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_voip_channel_response
    #   Apple VoIP Push Notification Service channel definition.
    #   @return [Types::APNSVoipChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsVoipChannelResponse AWS API Documentation
    #
    class DeleteApnsVoipChannelResponse < Struct.new(
      :apns_voip_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApnsVoipSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsVoipSandboxChannelRequest AWS API Documentation
    #
    class DeleteApnsVoipSandboxChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_voip_sandbox_channel_response
    #   Apple VoIP Developer Push Notification Service channel definition.
    #   @return [Types::APNSVoipSandboxChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsVoipSandboxChannelResponse AWS API Documentation
    #
    class DeleteApnsVoipSandboxChannelResponse < Struct.new(
      :apns_voip_sandbox_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteAppRequest AWS API Documentation
    #
    class DeleteAppRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] application_response
    #   Application Response.
    #   @return [Types::ApplicationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteAppResponse AWS API Documentation
    #
    class DeleteAppResponse < Struct.new(
      :application_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBaiduChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteBaiduChannelRequest AWS API Documentation
    #
    class DeleteBaiduChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] baidu_channel_response
    #   Baidu Cloud Messaging channel definition
    #   @return [Types::BaiduChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteBaiduChannelResponse AWS API Documentation
    #
    class DeleteBaiduChannelResponse < Struct.new(
      :baidu_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteCampaignRequest AWS API Documentation
    #
    class DeleteCampaignRequest < Struct.new(
      :application_id,
      :campaign_id)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteCampaignResponse AWS API Documentation
    #
    class DeleteCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEmailChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailChannelRequest AWS API Documentation
    #
    class DeleteEmailChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] email_channel_response
    #   Email Channel Response.
    #   @return [Types::EmailChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailChannelResponse AWS API Documentation
    #
    class DeleteEmailChannelResponse < Struct.new(
      :email_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEndpointRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         endpoint_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEndpointRequest AWS API Documentation
    #
    class DeleteEndpointRequest < Struct.new(
      :application_id,
      :endpoint_id)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_response
    #   Endpoint response
    #   @return [Types::EndpointResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEndpointResponse AWS API Documentation
    #
    class DeleteEndpointResponse < Struct.new(
      :endpoint_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventStreamRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEventStreamRequest AWS API Documentation
    #
    class DeleteEventStreamRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] event_stream
    #   Model for an event publishing subscription export.
    #   @return [Types::EventStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEventStreamResponse AWS API Documentation
    #
    class DeleteEventStreamResponse < Struct.new(
      :event_stream)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGcmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteGcmChannelRequest AWS API Documentation
    #
    class DeleteGcmChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] gcm_channel_response
    #   Google Cloud Messaging channel definition
    #   @return [Types::GCMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteGcmChannelResponse AWS API Documentation
    #
    class DeleteGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSegmentRequest AWS API Documentation
    #
    class DeleteSegmentRequest < Struct.new(
      :application_id,
      :segment_id)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSegmentResponse AWS API Documentation
    #
    class DeleteSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSmsChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsChannelRequest AWS API Documentation
    #
    class DeleteSmsChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] sms_channel_response
    #   SMS Channel Response.
    #   @return [Types::SMSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsChannelResponse AWS API Documentation
    #
    class DeleteSmsChannelResponse < Struct.new(
      :sms_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         user_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteUserEndpointsRequest AWS API Documentation
    #
    class DeleteUserEndpointsRequest < Struct.new(
      :application_id,
      :user_id)
      include Aws::Structure
    end

    # @!attribute [rw] endpoints_response
    #   List of endpoints
    #   @return [Types::EndpointsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteUserEndpointsResponse AWS API Documentation
    #
    class DeleteUserEndpointsResponse < Struct.new(
      :endpoints_response)
      include Aws::Structure
    end

    # Message definitions for the default message and any messages that are
    # tailored for specific channels.
    #
    # @note When making an API call, you may pass DirectMessageConfiguration
    #   data as a hash:
    #
    #       {
    #         adm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           consolidation_key: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           expires_after: "__string",
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           md5: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           badge: 1,
    #           body: "__string",
    #           category: "__string",
    #           collapse_id: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           media_url: "__string",
    #           preferred_authentication_method: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           thread_id: "__string",
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           body: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         default_push_notification_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           silent_push: false,
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           collapse_key: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           priority: "__string",
    #           raw_content: "__string",
    #           restricted_package_name: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           keyword: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] adm_message
    #   The message to ADM channels. Overrides the default push notification
    #   message.
    #   @return [Types::ADMMessage]
    #
    # @!attribute [rw] apns_message
    #   The message to APNS channels. Overrides the default push
    #   notification message.
    #   @return [Types::APNSMessage]
    #
    # @!attribute [rw] baidu_message
    #   The message to Baidu GCM channels. Overrides the default push
    #   notification message.
    #   @return [Types::BaiduMessage]
    #
    # @!attribute [rw] default_message
    #   The default message for all channels.
    #   @return [Types::DefaultMessage]
    #
    # @!attribute [rw] default_push_notification_message
    #   The default push notification message for all push channels.
    #   @return [Types::DefaultPushNotificationMessage]
    #
    # @!attribute [rw] gcm_message
    #   The message to GCM channels. Overrides the default push notification
    #   message.
    #   @return [Types::GCMMessage]
    #
    # @!attribute [rw] sms_message
    #   The message to SMS channels. Overrides the default message.
    #   @return [Types::SMSMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DirectMessageConfiguration AWS API Documentation
    #
    class DirectMessageConfiguration < Struct.new(
      :adm_message,
      :apns_message,
      :baidu_message,
      :default_message,
      :default_push_notification_message,
      :gcm_message,
      :sms_message)
      include Aws::Structure
    end

    # Email Channel Request
    #
    # @note When making an API call, you may pass EmailChannelRequest
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         from_address: "__string",
    #         identity: "__string",
    #         role_arn: "__string",
    #       }
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] from_address
    #   The email address used to send emails from.
    #   @return [String]
    #
    # @!attribute [rw] identity
    #   The ARN of an identity verified with SES.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM Role used to submit events to Mobile Analytics'
    #   event ingestion service
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailChannelRequest AWS API Documentation
    #
    class EmailChannelRequest < Struct.new(
      :enabled,
      :from_address,
      :identity,
      :role_arn)
      include Aws::Structure
    end

    # Email Channel Response.
    #
    # @!attribute [rw] application_id
    #   The unique ID of the application to which the email channel belongs.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date that the settings were last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] from_address
    #   The email address used to send emails from.
    #   @return [String]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used, only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] identity
    #   The ARN of an identity verified with SES.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who last updated this entry
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] messages_per_second
    #   Messages per second that can be sent
    #   @return [Integer]
    #
    # @!attribute [rw] platform
    #   Platform type. Will be "EMAIL"
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM Role used to submit events to Mobile Analytics'
    #   event ingestion service
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailChannelResponse AWS API Documentation
    #
    class EmailChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :from_address,
      :has_credential,
      :id,
      :identity,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :messages_per_second,
      :platform,
      :role_arn,
      :version)
      include Aws::Structure
    end

    # Endpoint update request
    #
    # @note When making an API call, you may pass EndpointBatchItem
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #         demographic: {
    #           app_version: "__string",
    #           locale: "__string",
    #           make: "__string",
    #           model: "__string",
    #           model_version: "__string",
    #           platform: "__string",
    #           platform_version: "__string",
    #           timezone: "__string",
    #         },
    #         effective_date: "__string",
    #         endpoint_status: "__string",
    #         id: "__string",
    #         location: {
    #           city: "__string",
    #           country: "__string",
    #           latitude: 1.0,
    #           longitude: 1.0,
    #           postal_code: "__string",
    #           region: "__string",
    #         },
    #         metrics: {
    #           "__string" => 1.0,
    #         },
    #         opt_out: "__string",
    #         request_id: "__string",
    #         user: {
    #           user_attributes: {
    #             "__string" => ["__string"],
    #           },
    #           user_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] address
    #   The destination for messages that you send to this endpoint. The
    #   address varies by channel. For mobile push channels, use the token
    #   provided by the push notification service, such as the APNs device
    #   token or the FCM registration token. For the SMS channel, use a
    #   phone number in E.164 format, such as +12065550100. For the email
    #   channel, use an email address.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Custom attributes that describe the endpoint by associating a name
    #   with an array of values. For example, an attribute named
    #   "interests" might have the values \["science", "politics",
    #   "travel"\]. You can use these attributes as selection criteria
    #   when you create a segment of users to engage with a messaging
    #   campaign. The following characters are not recommended in attribute
    #   names: # : ? \\ /. The Amazon Pinpoint console does not display
    #   attributes that include these characters in the name. This
    #   limitation does not apply to attribute values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: GCM \| APNS \| APNS\_SANDBOX \|
    #   APNS\_VOIP \| APNS\_VOIP\_SANDBOX \| ADM \| SMS \| EMAIL \| BAIDU
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The endpoint demographic attributes.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The last time the endpoint was updated. Provided in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   Unused.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique Id for the Endpoint in the batch.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The endpoint location attributes.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   Custom metrics that your app reports to Amazon Pinpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Indicates whether a user has opted out of receiving messages with
    #   one of the following values: ALL - User has opted out of all
    #   messages. NONE - Users has not opted out and receives all messages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique ID for the most recent request to update the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Custom user-specific attributes that your app reports to Amazon
    #   Pinpoint.
    #   @return [Types::EndpointUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointBatchItem AWS API Documentation
    #
    class EndpointBatchItem < Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :id,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user)
      include Aws::Structure
    end

    # Endpoint batch update request.
    #
    # @note When making an API call, you may pass EndpointBatchRequest
    #   data as a hash:
    #
    #       {
    #         item: [
    #           {
    #             address: "__string",
    #             attributes: {
    #               "__string" => ["__string"],
    #             },
    #             channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #             demographic: {
    #               app_version: "__string",
    #               locale: "__string",
    #               make: "__string",
    #               model: "__string",
    #               model_version: "__string",
    #               platform: "__string",
    #               platform_version: "__string",
    #               timezone: "__string",
    #             },
    #             effective_date: "__string",
    #             endpoint_status: "__string",
    #             id: "__string",
    #             location: {
    #               city: "__string",
    #               country: "__string",
    #               latitude: 1.0,
    #               longitude: 1.0,
    #               postal_code: "__string",
    #               region: "__string",
    #             },
    #             metrics: {
    #               "__string" => 1.0,
    #             },
    #             opt_out: "__string",
    #             request_id: "__string",
    #             user: {
    #               user_attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               user_id: "__string",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] item
    #   List of items to update. Maximum 100 items
    #   @return [Array<Types::EndpointBatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointBatchRequest AWS API Documentation
    #
    class EndpointBatchRequest < Struct.new(
      :item)
      include Aws::Structure
    end

    # Demographic information about the endpoint.
    #
    # @note When making an API call, you may pass EndpointDemographic
    #   data as a hash:
    #
    #       {
    #         app_version: "__string",
    #         locale: "__string",
    #         make: "__string",
    #         model: "__string",
    #         model_version: "__string",
    #         platform: "__string",
    #         platform_version: "__string",
    #         timezone: "__string",
    #       }
    #
    # @!attribute [rw] app_version
    #   The version of the application associated with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The endpoint locale in the following format: The ISO 639-1 alpha-2
    #   code, followed by an underscore, followed by an ISO 3166-1 alpha-2
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] make
    #   The manufacturer of the endpoint device, such as Apple or Samsung.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model name or number of the endpoint device, such as iPhone.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The model version of the endpoint device.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the endpoint device, such as iOS or Android.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version of the endpoint device.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The timezone of the endpoint. Specified as a tz database value, such
    #   as Americas/Los\_Angeles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointDemographic AWS API Documentation
    #
    class EndpointDemographic < Struct.new(
      :app_version,
      :locale,
      :make,
      :model,
      :model_version,
      :platform,
      :platform_version,
      :timezone)
      include Aws::Structure
    end

    # The responses that are returned after you create or update an endpoint
    # and record an event.
    #
    # @!attribute [rw] message
    #   A custom message associated with the registration of an endpoint
    #   when issuing a response.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code to respond with for a particular endpoint id after
    #   endpoint registration
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointItemResponse AWS API Documentation
    #
    class EndpointItemResponse < Struct.new(
      :message,
      :status_code)
      include Aws::Structure
    end

    # Location data for the endpoint.
    #
    # @note When making an API call, you may pass EndpointLocation
    #   data as a hash:
    #
    #       {
    #         city: "__string",
    #         country: "__string",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: "__string",
    #         region: "__string",
    #       }
    #
    # @!attribute [rw] city
    #   The city where the endpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The two-letter code for the country or region of the endpoint.
    #   Specified as an ISO 3166-1 Alpha-2 code, such as "US" for the
    #   United States.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude of the endpoint location, rounded to one decimal place.
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude of the endpoint location, rounded to one decimal
    #   place.
    #   @return [Float]
    #
    # @!attribute [rw] postal_code
    #   The postal code or zip code of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The region of the endpoint location. For example, in the United
    #   States, this corresponds to a state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointLocation AWS API Documentation
    #
    class EndpointLocation < Struct.new(
      :city,
      :country,
      :latitude,
      :longitude,
      :postal_code,
      :region)
      include Aws::Structure
    end

    # The result from sending a message to an endpoint.
    #
    # @!attribute [rw] address
    #   Address that endpoint message was delivered to.
    #   @return [String]
    #
    # @!attribute [rw] delivery_status
    #   The delivery status of the message. Possible values: SUCCESS - The
    #   message was successfully delivered to the endpoint.
    #   TRANSIENT\_FAILURE - A temporary error occurred. Amazon Pinpoint
    #   will attempt to deliver the message again later. FAILURE\_PERMANENT
    #   - An error occurred when delivering the message to the endpoint.
    #   Amazon Pinpoint won't attempt to send the message again. TIMEOUT -
    #   The message couldn't be sent within the timeout period. QUIET\_TIME
    #   - The local time for the endpoint was within the Quiet Hours for the
    #   campaign. DAILY\_CAP - The endpoint has received the maximum number
    #   of messages it can receive within a 24-hour period. HOLDOUT - The
    #   endpoint was in a hold out treatment for the campaign. THROTTLED -
    #   Amazon Pinpoint throttled sending to this endpoint. EXPIRED - The
    #   endpoint address is expired. CAMPAIGN\_CAP - The endpoint received
    #   the maximum number of messages allowed by the campaign.
    #   SERVICE\_FAILURE - A service-level failure prevented Amazon Pinpoint
    #   from delivering the message. UNKNOWN - An unknown error occurred.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   Unique message identifier associated with the message that was sent.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Downstream service status code.
    #   @return [Integer]
    #
    # @!attribute [rw] status_message
    #   Status message for message delivery.
    #   @return [String]
    #
    # @!attribute [rw] updated_token
    #   If token was updated as part of delivery. (This is GCM Specific)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointMessageResult AWS API Documentation
    #
    class EndpointMessageResult < Struct.new(
      :address,
      :delivery_status,
      :message_id,
      :status_code,
      :status_message,
      :updated_token)
      include Aws::Structure
    end

    # Endpoint update request
    #
    # @note When making an API call, you may pass EndpointRequest
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #         demographic: {
    #           app_version: "__string",
    #           locale: "__string",
    #           make: "__string",
    #           model: "__string",
    #           model_version: "__string",
    #           platform: "__string",
    #           platform_version: "__string",
    #           timezone: "__string",
    #         },
    #         effective_date: "__string",
    #         endpoint_status: "__string",
    #         location: {
    #           city: "__string",
    #           country: "__string",
    #           latitude: 1.0,
    #           longitude: 1.0,
    #           postal_code: "__string",
    #           region: "__string",
    #         },
    #         metrics: {
    #           "__string" => 1.0,
    #         },
    #         opt_out: "__string",
    #         request_id: "__string",
    #         user: {
    #           user_attributes: {
    #             "__string" => ["__string"],
    #           },
    #           user_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] address
    #   The destination for messages that you send to this endpoint. The
    #   address varies by channel. For mobile push channels, use the token
    #   provided by the push notification service, such as the APNs device
    #   token or the FCM registration token. For the SMS channel, use a
    #   phone number in E.164 format, such as +12065550100. For the email
    #   channel, use an email address.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Custom attributes that describe the endpoint by associating a name
    #   with an array of values. For example, an attribute named
    #   "interests" might have the values \["science", "politics",
    #   "travel"\]. You can use these attributes as selection criteria
    #   when you create a segment of users to engage with a messaging
    #   campaign. The following characters are not recommended in attribute
    #   names: # : ? \\ /. The Amazon Pinpoint console does not display
    #   attributes that include these characters in the name. This
    #   limitation does not apply to attribute values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: GCM \| APNS \| APNS\_SANDBOX \|
    #   APNS\_VOIP \| APNS\_VOIP\_SANDBOX \| ADM \| SMS \| EMAIL \| BAIDU
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   Demographic attributes for the endpoint.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The date and time when the endpoint was updated, shown in ISO 8601
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   Unused.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The endpoint location attributes.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   Custom metrics that your app reports to Amazon Pinpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Indicates whether a user has opted out of receiving messages with
    #   one of the following values: ALL - User has opted out of all
    #   messages. NONE - Users has not opted out and receives all messages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique ID for the most recent request to update the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Custom user-specific attributes that your app reports to Amazon
    #   Pinpoint.
    #   @return [Types::EndpointUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointRequest AWS API Documentation
    #
    class EndpointRequest < Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user)
      include Aws::Structure
    end

    # Endpoint response
    #
    # @!attribute [rw] address
    #   The address of the endpoint as provided by your push provider. For
    #   example, the DeviceToken or RegistrationId.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The ID of the application that is associated with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Custom attributes that describe the endpoint by associating a name
    #   with an array of values. For example, an attribute named
    #   "interests" might have the following values: \["science",
    #   "politics", "travel"\]. You can use these attributes as
    #   selection criteria when you create segments. The Amazon Pinpoint
    #   console can't display attribute names that include the following
    #   characters: hash/pound sign (#), colon (:), question mark (?),
    #   backslash (\\), and forward slash (/). For this reason, you should
    #   avoid using these characters in the names of custom attributes.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: GCM \| APNS \| APNS\_SANDBOX \|
    #   APNS\_VOIP \| APNS\_VOIP\_SANDBOX \| ADM \| SMS \| EMAIL \| BAIDU
    #   @return [String]
    #
    # @!attribute [rw] cohort_id
    #   A number from 0-99 that represents the cohort the endpoint is
    #   assigned to. Endpoints are grouped into cohorts randomly, and each
    #   cohort contains approximately 1 percent of the endpoints for an app.
    #   Amazon Pinpoint assigns cohorts to the holdout or treatment
    #   allocations for a campaign.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the endpoint was created, shown in ISO 8601
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The endpoint demographic attributes.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The date and time when the endpoint was last updated, shown in ISO
    #   8601 format.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   Unused.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID that you assigned to the endpoint. The ID should be a
    #   globally unique identifier (GUID) to ensure that it doesn't
    #   conflict with other endpoint IDs associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The endpoint location attributes.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   Custom metrics that your app reports to Amazon Pinpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Indicates whether a user has opted out of receiving messages with
    #   one of the following values: ALL - User has opted out of all
    #   messages. NONE - Users has not opted out and receives all messages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique ID for the most recent request to update the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Custom user-specific attributes that your app reports to Amazon
    #   Pinpoint.
    #   @return [Types::EndpointUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointResponse AWS API Documentation
    #
    class EndpointResponse < Struct.new(
      :address,
      :application_id,
      :attributes,
      :channel_type,
      :cohort_id,
      :creation_date,
      :demographic,
      :effective_date,
      :endpoint_status,
      :id,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user)
      include Aws::Structure
    end

    # Endpoint send configuration.
    #
    # @note When making an API call, you may pass EndpointSendConfiguration
    #   data as a hash:
    #
    #       {
    #         body_override: "__string",
    #         context: {
    #           "__string" => "__string",
    #         },
    #         raw_content: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         title_override: "__string",
    #       }
    #
    # @!attribute [rw] body_override
    #   Body override. If specified will override default body.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   A map of custom attributes to attributes to be attached to the
    #   message for this address. This payload is added to the push
    #   notification's 'data.pinpoint' object or added to the email/sms
    #   delivery receipt event attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] raw_content
    #   The Raw JSON formatted string to be used as the payload. This value
    #   overrides the message.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   A map of substitution values for the message to be merged with the
    #   DefaultMessage's substitutions. Substitutions on this map take
    #   precedence over the all other substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title_override
    #   Title override. If specified will override default title if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointSendConfiguration AWS API Documentation
    #
    class EndpointSendConfiguration < Struct.new(
      :body_override,
      :context,
      :raw_content,
      :substitutions,
      :title_override)
      include Aws::Structure
    end

    # Endpoint user specific custom userAttributes
    #
    # @note When making an API call, you may pass EndpointUser
    #   data as a hash:
    #
    #       {
    #         user_attributes: {
    #           "__string" => ["__string"],
    #         },
    #         user_id: "__string",
    #       }
    #
    # @!attribute [rw] user_attributes
    #   Custom attributes that describe the user by associating a name with
    #   an array of values. For example, an attribute named "interests"
    #   might have the following values: \["science", "politics",
    #   "travel"\]. You can use these attributes as selection criteria
    #   when you create segments. The Amazon Pinpoint console can't display
    #   attribute names that include the following characters: hash/pound
    #   sign (#), colon (:), question mark (?), backslash (\\), and forward
    #   slash (/). For this reason, you should avoid using these characters
    #   in the names of custom attributes.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] user_id
    #   The unique ID of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointUser AWS API Documentation
    #
    class EndpointUser < Struct.new(
      :user_attributes,
      :user_id)
      include Aws::Structure
    end

    # List of endpoints
    #
    # @!attribute [rw] item
    #   The list of endpoints.
    #   @return [Array<Types::EndpointResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointsResponse AWS API Documentation
    #
    class EndpointsResponse < Struct.new(
      :item)
      include Aws::Structure
    end

    # Model for creating or updating events.
    #
    # @note When making an API call, you may pass Event
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "__string" => "__string",
    #         },
    #         client_sdk_version: "__string",
    #         event_type: "__string",
    #         metrics: {
    #           "__string" => 1.0,
    #         },
    #         session: {
    #           duration: 1,
    #           id: "__string",
    #           start_timestamp: "__string",
    #           stop_timestamp: "__string",
    #         },
    #         timestamp: "__string",
    #       }
    #
    # @!attribute [rw] attributes
    #   Custom attributes that are associated with the event you're adding
    #   or updating.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_sdk_version
    #   The version of the SDK that's running on the client device.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The name of the custom event that you're recording.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Event metrics
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] session
    #   The session
    #   @return [Types::Session]
    #
    # @!attribute [rw] timestamp
    #   The date and time when the event occurred, in ISO 8601 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :attributes,
      :client_sdk_version,
      :event_type,
      :metrics,
      :session,
      :timestamp)
      include Aws::Structure
    end

    # The responses that are returned after you record an event.
    #
    # @!attribute [rw] message
    #   A custom message that is associated with the processing of an event.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code to respond with for a particular event id
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventItemResponse AWS API Documentation
    #
    class EventItemResponse < Struct.new(
      :message,
      :status_code)
      include Aws::Structure
    end

    # Model for an event publishing subscription export.
    #
    # @!attribute [rw] application_id
    #   The ID of the application from which events should be published.
    #   @return [String]
    #
    # @!attribute [rw] destination_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream or
    #   Firehose delivery stream to which you want to publish events.
    #   Firehose ARN:
    #   arn:aws:firehose:REGION:ACCOUNT\_ID:deliverystream/STREAM\_NAME
    #   Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT\_ID:stream/STREAM\_NAME
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to the
    #   ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to
    #   assume an IAM role. This requirement is removed, and external IDs
    #   are not recommended for IAM roles assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the event stream was last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The IAM user who last modified the event stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that authorizes Amazon Pinpoint to publish events to
    #   the stream in your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventStream AWS API Documentation
    #
    class EventStream < Struct.new(
      :application_id,
      :destination_stream_arn,
      :external_id,
      :last_modified_date,
      :last_updated_by,
      :role_arn)
      include Aws::Structure
    end

    # Events batch definition
    #
    # @note When making an API call, you may pass EventsBatch
    #   data as a hash:
    #
    #       {
    #         endpoint: {
    #           address: "__string",
    #           attributes: {
    #             "__string" => ["__string"],
    #           },
    #           channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string",
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string",
    #           },
    #           metrics: {
    #             "__string" => 1.0,
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"],
    #             },
    #             user_id: "__string",
    #           },
    #         },
    #         events: {
    #           "__string" => {
    #             attributes: {
    #               "__string" => "__string",
    #             },
    #             client_sdk_version: "__string",
    #             event_type: "__string",
    #             metrics: {
    #               "__string" => 1.0,
    #             },
    #             session: {
    #               duration: 1,
    #               id: "__string",
    #               start_timestamp: "__string",
    #               stop_timestamp: "__string",
    #             },
    #             timestamp: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] endpoint
    #   Endpoint information
    #   @return [Types::PublicEndpoint]
    #
    # @!attribute [rw] events
    #   Events
    #   @return [Hash<String,Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventsBatch AWS API Documentation
    #
    class EventsBatch < Struct.new(
      :endpoint,
      :events)
      include Aws::Structure
    end

    # Put Events request
    #
    # @note When making an API call, you may pass EventsRequest
    #   data as a hash:
    #
    #       {
    #         batch_item: {
    #           "__string" => {
    #             endpoint: {
    #               address: "__string",
    #               attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #               demographic: {
    #                 app_version: "__string",
    #                 locale: "__string",
    #                 make: "__string",
    #                 model: "__string",
    #                 model_version: "__string",
    #                 platform: "__string",
    #                 platform_version: "__string",
    #                 timezone: "__string",
    #               },
    #               effective_date: "__string",
    #               endpoint_status: "__string",
    #               location: {
    #                 city: "__string",
    #                 country: "__string",
    #                 latitude: 1.0,
    #                 longitude: 1.0,
    #                 postal_code: "__string",
    #                 region: "__string",
    #               },
    #               metrics: {
    #                 "__string" => 1.0,
    #               },
    #               opt_out: "__string",
    #               request_id: "__string",
    #               user: {
    #                 user_attributes: {
    #                   "__string" => ["__string"],
    #                 },
    #                 user_id: "__string",
    #               },
    #             },
    #             events: {
    #               "__string" => {
    #                 attributes: {
    #                   "__string" => "__string",
    #                 },
    #                 client_sdk_version: "__string",
    #                 event_type: "__string",
    #                 metrics: {
    #                   "__string" => 1.0,
    #                 },
    #                 session: {
    #                   duration: 1,
    #                   id: "__string",
    #                   start_timestamp: "__string",
    #                   stop_timestamp: "__string",
    #                 },
    #                 timestamp: "__string",
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] batch_item
    #   Batch of events with endpoint id as the key and an object of
    #   EventsBatch as value. The EventsBatch object has the PublicEndpoint
    #   and a map of event Id's to events
    #   @return [Hash<String,Types::EventsBatch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventsRequest AWS API Documentation
    #
    class EventsRequest < Struct.new(
      :batch_item)
      include Aws::Structure
    end

    # The results from processing a put events request
    #
    # @!attribute [rw] results
    #   A map containing a multi part response for each endpoint, with the
    #   endpoint id as the key and item response as the value
    #   @return [Hash<String,Types::ItemResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventsResponse AWS API Documentation
    #
    class EventsResponse < Struct.new(
      :results)
      include Aws::Structure
    end

    # Export job request.
    #
    # @note When making an API call, you may pass ExportJobRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "__string",
    #         s3_url_prefix: "__string",
    #         segment_id: "__string",
    #         segment_version: 1,
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the Amazon S3 location that endpoints will be
    #   exported to.
    #   @return [String]
    #
    # @!attribute [rw] s3_url_prefix
    #   A URL that points to the location within an Amazon S3 bucket that
    #   will receive the export. The location is typically a folder with
    #   multiple files. The URL should follow this format:
    #   s3://bucket-name/folder-name/ Amazon Pinpoint will export endpoints
    #   to this location.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to export endpoints from. If not present,
    #   Amazon Pinpoint exports all of the endpoints that belong to the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to export if specified.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ExportJobRequest AWS API Documentation
    #
    class ExportJobRequest < Struct.new(
      :role_arn,
      :s3_url_prefix,
      :segment_id,
      :segment_version)
      include Aws::Structure
    end

    # Export job resource.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the Amazon S3 location that endpoints will be
    #   exported to.
    #   @return [String]
    #
    # @!attribute [rw] s3_url_prefix
    #   A URL that points to the location within an Amazon S3 bucket that
    #   will receive the export. The location is typically a folder with
    #   multiple files. The URL should follow this format:
    #   s3://bucket-name/folder-name/ Amazon Pinpoint will export endpoints
    #   to this location.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to export endpoints from. If not present,
    #   Amazon Pinpoint exports all of the endpoints that belong to the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to export if specified.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ExportJobResource AWS API Documentation
    #
    class ExportJobResource < Struct.new(
      :role_arn,
      :s3_url_prefix,
      :segment_id,
      :segment_version)
      include Aws::Structure
    end

    # Export job response.
    #
    # @!attribute [rw] application_id
    #   The unique ID of the application associated with the export job.
    #   @return [String]
    #
    # @!attribute [rw] completed_pieces
    #   The number of pieces that have successfully completed as of the time
    #   of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_date
    #   The date the job completed in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the job was created in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The export job settings.
    #   @return [Types::ExportJobResource]
    #
    # @!attribute [rw] failed_pieces
    #   The number of pieces that failed to be processed as of the time of
    #   the request.
    #   @return [Integer]
    #
    # @!attribute [rw] failures
    #   Provides up to 100 of the first failed entries for the job, if any
    #   exist.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job. Valid values: CREATED, INITIALIZING,
    #   PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED The job status is
    #   FAILED if one or more pieces failed.
    #   @return [String]
    #
    # @!attribute [rw] total_failures
    #   The number of endpoints that were not processed; for example,
    #   because of syntax errors.
    #   @return [Integer]
    #
    # @!attribute [rw] total_pieces
    #   The total number of pieces that must be processed to finish the job.
    #   Each piece is an approximately equal portion of the endpoints.
    #   @return [Integer]
    #
    # @!attribute [rw] total_processed
    #   The number of endpoints that were processed by the job.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The job type. Will be 'EXPORT'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ExportJobResponse AWS API Documentation
    #
    class ExportJobResponse < Struct.new(
      :application_id,
      :completed_pieces,
      :completion_date,
      :creation_date,
      :definition,
      :failed_pieces,
      :failures,
      :id,
      :job_status,
      :total_failures,
      :total_pieces,
      :total_processed,
      :type)
      include Aws::Structure
    end

    # Export job list.
    #
    # @!attribute [rw] item
    #   A list of export jobs for the application.
    #   @return [Array<Types::ExportJobResponse>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ExportJobsResponse AWS API Documentation
    #
    class ExportJobsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Google Cloud Messaging credentials
    #
    # @note When making an API call, you may pass GCMChannelRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "__string",
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] api_key
    #   Platform credential API key from Google.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GCMChannelRequest AWS API Documentation
    #
    class GCMChannelRequest < Struct.new(
      :api_key,
      :enabled)
      include Aws::Structure
    end

    # Google Cloud Messaging channel definition
    #
    # @!attribute [rw] application_id
    #   The ID of the application to which the channel applies.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   When was this segment created
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   The GCM API key from Google.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used. Present only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who last updated this entry
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform type. Will be GCM
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GCMChannelResponse AWS API Documentation
    #
    class GCMChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :credential,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version)
      include Aws::Structure
    end

    # GCM Message.
    #
    # @note When making an API call, you may pass GCMMessage
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         collapse_key: "__string",
    #         data: {
    #           "__string" => "__string",
    #         },
    #         icon_reference: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         priority: "__string",
    #         raw_content: "__string",
    #         restricted_package_name: "__string",
    #         silent_push: false,
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         time_to_live: 1,
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action that occurs if the user taps a push notification
    #   delivered by the campaign: OPEN\_APP - Your app launches, or it
    #   becomes the foreground app if it has been sent to the background.
    #   This is the default action. DEEP\_LINK - Uses deep linking features
    #   in iOS and Android to open your app and display a designated user
    #   interface within the app. URL - The default mobile browser on the
    #   user's device launches and opens a web page at the URL you specify.
    #   Possible values include: OPEN\_APP \| DEEP\_LINK \| URL
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body of the notification.
    #   @return [String]
    #
    # @!attribute [rw] collapse_key
    #   This parameter identifies a group of messages (e.g., with
    #   collapse\_key: "Updates Available") that can be collapsed, so that
    #   only the last message gets sent when delivery can be resumed. This
    #   is intended to avoid sending too many of the same messages when the
    #   device comes back online or becomes active.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data payload used for a silent push. This payload is added to
    #   the notifications' data.pinpoint.jsonBody' object
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] icon_reference
    #   The icon image name of the asset saved in your application.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL that points to an image used as the large icon to the
    #   notification content view.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL that points to an image used in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The message priority. Amazon Pinpoint uses this value to set the FCM
    #   or GCM priority parameter when it sends the message. Accepts the
    #   following values: "Normal" - Messages might be delayed. Delivery
    #   is optimized for battery usage on the receiving device. Use normal
    #   priority unless immediate delivery is required. "High" - Messages
    #   are sent immediately and might wake a sleeping device. The
    #   equivalent values for APNs messages are "5" and "10". Amazon
    #   Pinpoint accepts these values here and converts them. For more
    #   information, see About FCM Messages in the Firebase documentation.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The Raw JSON formatted string to be used as the payload. This value
    #   overrides the message.
    #   @return [String]
    #
    # @!attribute [rw] restricted_package_name
    #   This parameter specifies the package name of the application where
    #   the registration tokens must match in order to receive the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Indicates if the message should display on the users device. Silent
    #   pushes can be used for Remote Configuration and Phone Home use
    #   cases.
    #   @return [Boolean]
    #
    # @!attribute [rw] small_image_icon_url
    #   The URL that points to an image used as the small icon for the
    #   notification which will be used to represent the notification in the
    #   status bar and content view
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   Indicates a sound to play when the device receives the notification.
    #   Supports default, or the filename of a sound resource bundled in the
    #   app. Android sound files must reside in /res/raw/
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   Default message substitutions. Can be overridden by individual
    #   address substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] time_to_live
    #   The length of time (in seconds) that FCM or GCM stores and attempts
    #   to deliver the message. If unspecified, the value defaults to the
    #   maximum, which is 2,419,200 seconds (28 days). Amazon Pinpoint uses
    #   this value to set the FCM or GCM time\_to\_live parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The message title that displays above the message on the user's
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the user's mobile browser. Used if the value for
    #   Action is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GCMMessage AWS API Documentation
    #
    class GCMMessage < Struct.new(
      :action,
      :body,
      :collapse_key,
      :data,
      :icon_reference,
      :image_icon_url,
      :image_url,
      :priority,
      :raw_content,
      :restricted_package_name,
      :silent_push,
      :small_image_icon_url,
      :sound,
      :substitutions,
      :time_to_live,
      :title,
      :url)
      include Aws::Structure
    end

    # GPS coordinates
    #
    # @note When making an API call, you may pass GPSCoordinates
    #   data as a hash:
    #
    #       {
    #         latitude: 1.0,
    #         longitude: 1.0,
    #       }
    #
    # @!attribute [rw] latitude
    #   Latitude
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   Longitude
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GPSCoordinates AWS API Documentation
    #
    class GPSCoordinates < Struct.new(
      :latitude,
      :longitude)
      include Aws::Structure
    end

    # GPS point location dimension
    #
    # @note When making an API call, you may pass GPSPointDimension
    #   data as a hash:
    #
    #       {
    #         coordinates: {
    #           latitude: 1.0,
    #           longitude: 1.0,
    #         },
    #         range_in_kilometers: 1.0,
    #       }
    #
    # @!attribute [rw] coordinates
    #   Coordinate to measure distance from.
    #   @return [Types::GPSCoordinates]
    #
    # @!attribute [rw] range_in_kilometers
    #   Range in kilometers from the coordinate.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GPSPointDimension AWS API Documentation
    #
    class GPSPointDimension < Struct.new(
      :coordinates,
      :range_in_kilometers)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAdmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAdmChannelRequest AWS API Documentation
    #
    class GetAdmChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] adm_channel_response
    #   Amazon Device Messaging channel definition.
    #   @return [Types::ADMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAdmChannelResponse AWS API Documentation
    #
    class GetAdmChannelResponse < Struct.new(
      :adm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApnsChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsChannelRequest AWS API Documentation
    #
    class GetApnsChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_channel_response
    #   Apple Distribution Push Notification Service channel definition.
    #   @return [Types::APNSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsChannelResponse AWS API Documentation
    #
    class GetApnsChannelResponse < Struct.new(
      :apns_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApnsSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsSandboxChannelRequest AWS API Documentation
    #
    class GetApnsSandboxChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_sandbox_channel_response
    #   Apple Development Push Notification Service channel definition.
    #   @return [Types::APNSSandboxChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsSandboxChannelResponse AWS API Documentation
    #
    class GetApnsSandboxChannelResponse < Struct.new(
      :apns_sandbox_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApnsVoipChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsVoipChannelRequest AWS API Documentation
    #
    class GetApnsVoipChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_voip_channel_response
    #   Apple VoIP Push Notification Service channel definition.
    #   @return [Types::APNSVoipChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsVoipChannelResponse AWS API Documentation
    #
    class GetApnsVoipChannelResponse < Struct.new(
      :apns_voip_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApnsVoipSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsVoipSandboxChannelRequest AWS API Documentation
    #
    class GetApnsVoipSandboxChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_voip_sandbox_channel_response
    #   Apple VoIP Developer Push Notification Service channel definition.
    #   @return [Types::APNSVoipSandboxChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsVoipSandboxChannelResponse AWS API Documentation
    #
    class GetApnsVoipSandboxChannelResponse < Struct.new(
      :apns_voip_sandbox_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAppRequest AWS API Documentation
    #
    class GetAppRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] application_response
    #   Application Response.
    #   @return [Types::ApplicationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAppResponse AWS API Documentation
    #
    class GetAppResponse < Struct.new(
      :application_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApplicationSettingsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApplicationSettingsRequest AWS API Documentation
    #
    class GetApplicationSettingsRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] application_settings_resource
    #   Application settings.
    #   @return [Types::ApplicationSettingsResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApplicationSettingsResponse AWS API Documentation
    #
    class GetApplicationSettingsResponse < Struct.new(
      :application_settings_resource)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppsRequest
    #   data as a hash:
    #
    #       {
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAppsRequest AWS API Documentation
    #
    class GetAppsRequest < Struct.new(
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] applications_response
    #   Get Applications Result.
    #   @return [Types::ApplicationsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAppsResponse AWS API Documentation
    #
    class GetAppsResponse < Struct.new(
      :applications_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBaiduChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetBaiduChannelRequest AWS API Documentation
    #
    class GetBaiduChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] baidu_channel_response
    #   Baidu Cloud Messaging channel definition
    #   @return [Types::BaiduChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetBaiduChannelResponse AWS API Documentation
    #
    class GetBaiduChannelResponse < Struct.new(
      :baidu_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignActivitiesRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignActivitiesRequest AWS API Documentation
    #
    class GetCampaignActivitiesRequest < Struct.new(
      :application_id,
      :campaign_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] activities_response
    #   Activities for campaign.
    #   @return [Types::ActivitiesResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignActivitiesResponse AWS API Documentation
    #
    class GetCampaignActivitiesResponse < Struct.new(
      :activities_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignRequest AWS API Documentation
    #
    class GetCampaignRequest < Struct.new(
      :application_id,
      :campaign_id)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignResponse AWS API Documentation
    #
    class GetCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignVersionRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         version: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersionRequest AWS API Documentation
    #
    class GetCampaignVersionRequest < Struct.new(
      :application_id,
      :campaign_id,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersionResponse AWS API Documentation
    #
    class GetCampaignVersionResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignVersionsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersionsRequest AWS API Documentation
    #
    class GetCampaignVersionsRequest < Struct.new(
      :application_id,
      :campaign_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] campaigns_response
    #   List of available campaigns.
    #   @return [Types::CampaignsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersionsResponse AWS API Documentation
    #
    class GetCampaignVersionsResponse < Struct.new(
      :campaigns_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignsRequest AWS API Documentation
    #
    class GetCampaignsRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] campaigns_response
    #   List of available campaigns.
    #   @return [Types::CampaignsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignsResponse AWS API Documentation
    #
    class GetCampaignsResponse < Struct.new(
      :campaigns_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetChannelsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetChannelsRequest AWS API Documentation
    #
    class GetChannelsRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] channels_response
    #   Get channels definition
    #   @return [Types::ChannelsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetChannelsResponse AWS API Documentation
    #
    class GetChannelsResponse < Struct.new(
      :channels_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEmailChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailChannelRequest AWS API Documentation
    #
    class GetEmailChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] email_channel_response
    #   Email Channel Response.
    #   @return [Types::EmailChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailChannelResponse AWS API Documentation
    #
    class GetEmailChannelResponse < Struct.new(
      :email_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEndpointRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         endpoint_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEndpointRequest AWS API Documentation
    #
    class GetEndpointRequest < Struct.new(
      :application_id,
      :endpoint_id)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_response
    #   Endpoint response
    #   @return [Types::EndpointResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEndpointResponse AWS API Documentation
    #
    class GetEndpointResponse < Struct.new(
      :endpoint_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventStreamRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEventStreamRequest AWS API Documentation
    #
    class GetEventStreamRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] event_stream
    #   Model for an event publishing subscription export.
    #   @return [Types::EventStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEventStreamResponse AWS API Documentation
    #
    class GetEventStreamResponse < Struct.new(
      :event_stream)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExportJobRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         job_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetExportJobRequest AWS API Documentation
    #
    class GetExportJobRequest < Struct.new(
      :application_id,
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] export_job_response
    #   Export job response.
    #   @return [Types::ExportJobResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetExportJobResponse AWS API Documentation
    #
    class GetExportJobResponse < Struct.new(
      :export_job_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExportJobsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetExportJobsRequest AWS API Documentation
    #
    class GetExportJobsRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] export_jobs_response
    #   Export job list.
    #   @return [Types::ExportJobsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetExportJobsResponse AWS API Documentation
    #
    class GetExportJobsResponse < Struct.new(
      :export_jobs_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGcmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetGcmChannelRequest AWS API Documentation
    #
    class GetGcmChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] gcm_channel_response
    #   Google Cloud Messaging channel definition
    #   @return [Types::GCMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetGcmChannelResponse AWS API Documentation
    #
    class GetGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         job_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJobRequest AWS API Documentation
    #
    class GetImportJobRequest < Struct.new(
      :application_id,
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] import_job_response
    #   Import job response.
    #   @return [Types::ImportJobResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJobResponse AWS API Documentation
    #
    class GetImportJobResponse < Struct.new(
      :import_job_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJobsRequest AWS API Documentation
    #
    class GetImportJobsRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] import_jobs_response
    #   Import job list.
    #   @return [Types::ImportJobsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJobsResponse AWS API Documentation
    #
    class GetImportJobsResponse < Struct.new(
      :import_jobs_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentExportJobsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         segment_id: "__string", # required
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentExportJobsRequest AWS API Documentation
    #
    class GetSegmentExportJobsRequest < Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] export_jobs_response
    #   Export job list.
    #   @return [Types::ExportJobsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentExportJobsResponse AWS API Documentation
    #
    class GetSegmentExportJobsResponse < Struct.new(
      :export_jobs_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         segment_id: "__string", # required
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentImportJobsRequest AWS API Documentation
    #
    class GetSegmentImportJobsRequest < Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] import_jobs_response
    #   Import job list.
    #   @return [Types::ImportJobsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentImportJobsResponse AWS API Documentation
    #
    class GetSegmentImportJobsResponse < Struct.new(
      :import_jobs_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentRequest AWS API Documentation
    #
    class GetSegmentRequest < Struct.new(
      :application_id,
      :segment_id)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentResponse AWS API Documentation
    #
    class GetSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentVersionRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #         version: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersionRequest AWS API Documentation
    #
    class GetSegmentVersionRequest < Struct.new(
      :application_id,
      :segment_id,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersionResponse AWS API Documentation
    #
    class GetSegmentVersionResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentVersionsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         segment_id: "__string", # required
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersionsRequest AWS API Documentation
    #
    class GetSegmentVersionsRequest < Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] segments_response
    #   Segments in your account.
    #   @return [Types::SegmentsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersionsResponse AWS API Documentation
    #
    class GetSegmentVersionsResponse < Struct.new(
      :segments_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSegmentsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         page_size: "__string",
    #         token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentsRequest AWS API Documentation
    #
    class GetSegmentsRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] segments_response
    #   Segments in your account.
    #   @return [Types::SegmentsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentsResponse AWS API Documentation
    #
    class GetSegmentsResponse < Struct.new(
      :segments_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSmsChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsChannelRequest AWS API Documentation
    #
    class GetSmsChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] sms_channel_response
    #   SMS Channel Response.
    #   @return [Types::SMSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsChannelResponse AWS API Documentation
    #
    class GetSmsChannelResponse < Struct.new(
      :sms_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         user_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetUserEndpointsRequest AWS API Documentation
    #
    class GetUserEndpointsRequest < Struct.new(
      :application_id,
      :user_id)
      include Aws::Structure
    end

    # @!attribute [rw] endpoints_response
    #   List of endpoints
    #   @return [Types::EndpointsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetUserEndpointsResponse AWS API Documentation
    #
    class GetUserEndpointsResponse < Struct.new(
      :endpoints_response)
      include Aws::Structure
    end

    # Import job request.
    #
    # @note When making an API call, you may pass ImportJobRequest
    #   data as a hash:
    #
    #       {
    #         define_segment: false,
    #         external_id: "__string",
    #         format: "CSV", # accepts CSV, JSON
    #         register_endpoints: false,
    #         role_arn: "__string",
    #         s3_url: "__string",
    #         segment_id: "__string",
    #         segment_name: "__string",
    #       }
    #
    # @!attribute [rw] define_segment
    #   Sets whether the endpoints create a segment when they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to the
    #   ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to
    #   assume an IAM role. This requirement is removed, and external IDs
    #   are not recommended for IAM roles assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the files that contain the endpoint definitions. Valid
    #   values: CSV, JSON
    #   @return [String]
    #
    # @!attribute [rw] register_endpoints
    #   Sets whether the endpoints are registered with Amazon Pinpoint when
    #   they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the Amazon S3 location that contains the
    #   endpoints to import.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL of the S3 bucket that contains the segment information to
    #   import. The location can be a folder or a single file. The URL
    #   should use the following format:
    #   s3://bucket-name/folder-name/file-name Amazon Pinpoint imports
    #   endpoints from this location and any subfolders it contains.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to update if the import job is meant to update
    #   an existing segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   A custom name for the segment created by the import job. Use if
    #   DefineSegment is true.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ImportJobRequest AWS API Documentation
    #
    class ImportJobRequest < Struct.new(
      :define_segment,
      :external_id,
      :format,
      :register_endpoints,
      :role_arn,
      :s3_url,
      :segment_id,
      :segment_name)
      include Aws::Structure
    end

    # Import job resource
    #
    # @!attribute [rw] define_segment
    #   Sets whether the endpoints create a segment when they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to the
    #   ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to
    #   assume an IAM role. This requirement is removed, and external IDs
    #   are not recommended for IAM roles assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the files that contain the endpoint definitions. Valid
    #   values: CSV, JSON
    #   @return [String]
    #
    # @!attribute [rw] register_endpoints
    #   Sets whether the endpoints are registered with Amazon Pinpoint when
    #   they are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the Amazon S3 location that contains the
    #   endpoints to import.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL of the S3 bucket that contains the segment information to
    #   import. The location can be a folder or a single file. The URL
    #   should use the following format:
    #   s3://bucket-name/folder-name/file-name Amazon Pinpoint imports
    #   endpoints from this location and any subfolders it contains.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to update if the import job is meant to update
    #   an existing segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   A custom name for the segment created by the import job. Use if
    #   DefineSegment is true.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ImportJobResource AWS API Documentation
    #
    class ImportJobResource < Struct.new(
      :define_segment,
      :external_id,
      :format,
      :register_endpoints,
      :role_arn,
      :s3_url,
      :segment_id,
      :segment_name)
      include Aws::Structure
    end

    # Import job response.
    #
    # @!attribute [rw] application_id
    #   The unique ID of the application to which the import job applies.
    #   @return [String]
    #
    # @!attribute [rw] completed_pieces
    #   The number of pieces that have successfully imported as of the time
    #   of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_date
    #   The date the import job completed in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the import job was created in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The import job settings.
    #   @return [Types::ImportJobResource]
    #
    # @!attribute [rw] failed_pieces
    #   The number of pieces that have failed to import as of the time of
    #   the request.
    #   @return [Integer]
    #
    # @!attribute [rw] failures
    #   Provides up to 100 of the first failed entries for the job, if any
    #   exist.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique ID of the import job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the import job. Valid values: CREATED, INITIALIZING,
    #   PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED The job status is
    #   FAILED if one or more pieces failed to import.
    #   @return [String]
    #
    # @!attribute [rw] total_failures
    #   The number of endpoints that failed to import; for example, because
    #   of syntax errors.
    #   @return [Integer]
    #
    # @!attribute [rw] total_pieces
    #   The total number of pieces that must be imported to finish the job.
    #   Each piece is an approximately equal portion of the endpoints to
    #   import.
    #   @return [Integer]
    #
    # @!attribute [rw] total_processed
    #   The number of endpoints that were processed by the import job.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The job type. Will be Import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ImportJobResponse AWS API Documentation
    #
    class ImportJobResponse < Struct.new(
      :application_id,
      :completed_pieces,
      :completion_date,
      :creation_date,
      :definition,
      :failed_pieces,
      :failures,
      :id,
      :job_status,
      :total_failures,
      :total_pieces,
      :total_processed,
      :type)
      include Aws::Structure
    end

    # Import job list.
    #
    # @!attribute [rw] item
    #   A list of import jobs for the application.
    #   @return [Array<Types::ImportJobResponse>]
    #
    # @!attribute [rw] next_token
    #   The string that you use in a subsequent request to get the next page
    #   of results in a paginated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ImportJobsResponse AWS API Documentation
    #
    class ImportJobsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # The endpoint and events combined response definition
    #
    # @!attribute [rw] endpoint_item_response
    #   Endpoint item response after endpoint registration
    #   @return [Types::EndpointItemResponse]
    #
    # @!attribute [rw] events_item_response
    #   Events item response is a multipart response object per event Id,
    #   with eventId as the key and EventItemResponse object as the value
    #   @return [Hash<String,Types::EventItemResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ItemResponse AWS API Documentation
    #
    class ItemResponse < Struct.new(
      :endpoint_item_response,
      :events_item_response)
      include Aws::Structure
    end

    # Message to send
    #
    # @note When making an API call, you may pass Message
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_small_icon_url: "__string",
    #         image_url: "__string",
    #         json_body: "__string",
    #         media_url: "__string",
    #         raw_content: "__string",
    #         silent_push: false,
    #         time_to_live: 1,
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action that occurs if the user taps a push notification
    #   delivered by the campaign: OPEN\_APP - Your app launches, or it
    #   becomes the foreground app if it has been sent to the background.
    #   This is the default action. DEEP\_LINK - Uses deep linking features
    #   in iOS and Android to open your app and display a designated user
    #   interface within the app. URL - The default mobile browser on the
    #   user's device launches and opens a web page at the URL you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body. Can include up to 140 characters.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL that points to the icon image for the push notification
    #   icon, for example, the app icon.
    #   @return [String]
    #
    # @!attribute [rw] image_small_icon_url
    #   The URL that points to the small icon image for the push
    #   notification icon, for example, the app icon.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL that points to an image used in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] json_body
    #   The JSON payload used for a silent push.
    #   @return [String]
    #
    # @!attribute [rw] media_url
    #   The URL that points to the media resource, for example a .mp4 or
    #   .gif file.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The Raw JSON formatted string to be used as the payload. This value
    #   overrides the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Indicates if the message should display on the users device. Silent
    #   pushes can be used for Remote Configuration and Phone Home use
    #   cases.
    #   @return [Boolean]
    #
    # @!attribute [rw] time_to_live
    #   This parameter specifies how long (in seconds) the message should be
    #   kept if the service is unable to deliver the notification the first
    #   time. If the value is 0, it treats the notification as if it expires
    #   immediately and does not store the notification or attempt to
    #   redeliver it. This value is converted to the expiration field when
    #   sent to the service. It only applies to APNs and GCM
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The message title that displays above the message on the user's
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the user's mobile browser. Used if the value for
    #   Action is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Message AWS API Documentation
    #
    class Message < Struct.new(
      :action,
      :body,
      :image_icon_url,
      :image_small_icon_url,
      :image_url,
      :json_body,
      :media_url,
      :raw_content,
      :silent_push,
      :time_to_live,
      :title,
      :url)
      include Aws::Structure
    end

    # Simple message object.
    #
    # @!attribute [rw] message
    #   The error message that's returned from the API.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique message body ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageBody AWS API Documentation
    #
    class MessageBody < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Message configuration for a campaign.
    #
    # @note When making an API call, you may pass MessageConfiguration
    #   data as a hash:
    #
    #       {
    #         adm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         baidu_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         email_message: {
    #           body: "__string",
    #           from_address: "__string",
    #           html_body: "__string",
    #           title: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           time_to_live: 1,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           sender_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] adm_message
    #   The message that the campaign delivers to ADM channels. Overrides
    #   the default message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] apns_message
    #   The message that the campaign delivers to APNS channels. Overrides
    #   the default message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] baidu_message
    #   The message that the campaign delivers to Baidu channels. Overrides
    #   the default message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] default_message
    #   The default message for all channels.
    #   @return [Types::Message]
    #
    # @!attribute [rw] email_message
    #   The email message configuration.
    #   @return [Types::CampaignEmailMessage]
    #
    # @!attribute [rw] gcm_message
    #   The message that the campaign delivers to GCM channels. Overrides
    #   the default message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] sms_message
    #   The SMS message configuration.
    #   @return [Types::CampaignSmsMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageConfiguration AWS API Documentation
    #
    class MessageConfiguration < Struct.new(
      :adm_message,
      :apns_message,
      :baidu_message,
      :default_message,
      :email_message,
      :gcm_message,
      :sms_message)
      include Aws::Structure
    end

    # Send message request.
    #
    # @note When making an API call, you may pass MessageRequest
    #   data as a hash:
    #
    #       {
    #         addresses: {
    #           "__string" => {
    #             body_override: "__string",
    #             channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #             context: {
    #               "__string" => "__string",
    #             },
    #             raw_content: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             title_override: "__string",
    #           },
    #         },
    #         context: {
    #           "__string" => "__string",
    #         },
    #         endpoints: {
    #           "__string" => {
    #             body_override: "__string",
    #             context: {
    #               "__string" => "__string",
    #             },
    #             raw_content: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             title_override: "__string",
    #           },
    #         },
    #         message_configuration: {
    #           adm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             consolidation_key: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             expires_after: "__string",
    #             icon_reference: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             md5: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             title: "__string",
    #             url: "__string",
    #           },
    #           apns_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             badge: 1,
    #             body: "__string",
    #             category: "__string",
    #             collapse_id: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             media_url: "__string",
    #             preferred_authentication_method: "__string",
    #             priority: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             thread_id: "__string",
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           baidu_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             icon_reference: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_message: {
    #             body: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #           },
    #           default_push_notification_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             silent_push: false,
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             title: "__string",
    #             url: "__string",
    #           },
    #           gcm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             collapse_key: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             icon_reference: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             priority: "__string",
    #             raw_content: "__string",
    #             restricted_package_name: "__string",
    #             silent_push: false,
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           sms_message: {
    #             body: "__string",
    #             keyword: "__string",
    #             message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #             origination_number: "__string",
    #             sender_id: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #           },
    #         },
    #         trace_id: "__string",
    #       }
    #
    # @!attribute [rw] addresses
    #   A map of key-value pairs, where each key is an address and each
    #   value is an AddressConfiguration object. An address can be a push
    #   notification token, a phone number, or an email address.
    #   @return [Hash<String,Types::AddressConfiguration>]
    #
    # @!attribute [rw] context
    #   A map of custom attributes to attributes to be attached to the
    #   message. This payload is added to the push notification's
    #   'data.pinpoint' object or added to the email/sms delivery receipt
    #   event attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] endpoints
    #   A map of key-value pairs, where each key is an endpoint ID and each
    #   value is an EndpointSendConfiguration object. Within an
    #   EndpointSendConfiguration object, you can tailor the message for an
    #   endpoint by specifying message overrides or substitutions.
    #   @return [Hash<String,Types::EndpointSendConfiguration>]
    #
    # @!attribute [rw] message_configuration
    #   Message configuration.
    #   @return [Types::DirectMessageConfiguration]
    #
    # @!attribute [rw] trace_id
    #   A unique ID that you can use to trace a message. This ID is visible
    #   to recipients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageRequest AWS API Documentation
    #
    class MessageRequest < Struct.new(
      :addresses,
      :context,
      :endpoints,
      :message_configuration,
      :trace_id)
      include Aws::Structure
    end

    # Send message response.
    #
    # @!attribute [rw] application_id
    #   Application id of the message.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_result
    #   A map containing a multi part response for each address, with the
    #   endpointId as the key and the result as the value.
    #   @return [Hash<String,Types::EndpointMessageResult>]
    #
    # @!attribute [rw] request_id
    #   Original request Id for which this message was delivered.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   A map containing a multi part response for each address, with the
    #   address as the key(Email address, phone number or push token) and
    #   the result as the value.
    #   @return [Hash<String,Types::MessageResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageResponse AWS API Documentation
    #
    class MessageResponse < Struct.new(
      :application_id,
      :endpoint_result,
      :request_id,
      :result)
      include Aws::Structure
    end

    # The result from sending a message to an address.
    #
    # @!attribute [rw] delivery_status
    #   The delivery status of the message. Possible values: SUCCESS - The
    #   message was successfully delivered to the endpoint.
    #   TRANSIENT\_FAILURE - A temporary error occurred. Amazon Pinpoint
    #   will attempt to deliver the message again later. FAILURE\_PERMANENT
    #   - An error occurred when delivering the message to the endpoint.
    #   Amazon Pinpoint won't attempt to send the message again. TIMEOUT -
    #   The message couldn't be sent within the timeout period. QUIET\_TIME
    #   - The local time for the endpoint was within the Quiet Hours for the
    #   campaign. DAILY\_CAP - The endpoint has received the maximum number
    #   of messages it can receive within a 24-hour period. HOLDOUT - The
    #   endpoint was in a hold out treatment for the campaign. THROTTLED -
    #   Amazon Pinpoint throttled sending to this endpoint. EXPIRED - The
    #   endpoint address is expired. CAMPAIGN\_CAP - The endpoint received
    #   the maximum number of messages allowed by the campaign.
    #   SERVICE\_FAILURE - A service-level failure prevented Amazon Pinpoint
    #   from delivering the message. UNKNOWN - An unknown error occurred.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   Unique message identifier associated with the message that was sent.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Downstream service status code.
    #   @return [Integer]
    #
    # @!attribute [rw] status_message
    #   Status message for message delivery.
    #   @return [String]
    #
    # @!attribute [rw] updated_token
    #   If token was updated as part of delivery. (This is GCM Specific)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageResult AWS API Documentation
    #
    class MessageResult < Struct.new(
      :delivery_status,
      :message_id,
      :status_code,
      :status_message,
      :updated_token)
      include Aws::Structure
    end

    # Custom metric dimension
    #
    # @note When making an API call, you may pass MetricDimension
    #   data as a hash:
    #
    #       {
    #         comparison_operator: "__string",
    #         value: 1.0,
    #       }
    #
    # @!attribute [rw] comparison_operator
    #   GREATER\_THAN \| LESS\_THAN \| GREATER\_THAN\_OR\_EQUAL \|
    #   LESS\_THAN\_OR\_EQUAL \| EQUAL
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value to be compared.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :comparison_operator,
      :value)
      include Aws::Structure
    end

    # Phone Number Information request.
    #
    # @note When making an API call, you may pass NumberValidateRequest
    #   data as a hash:
    #
    #       {
    #         iso_country_code: "__string",
    #         phone_number: "__string",
    #       }
    #
    # @!attribute [rw] iso_country_code
    #   (Optional) The two-character ISO country code for the country or
    #   region where the phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number to get information about. The phone number that you
    #   provide should include a country code. If the number doesn't
    #   include a valid country code, the operation might result in an
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/NumberValidateRequest AWS API Documentation
    #
    class NumberValidateRequest < Struct.new(
      :iso_country_code,
      :phone_number)
      include Aws::Structure
    end

    # Phone Number Information response.
    #
    # @!attribute [rw] carrier
    #   The carrier or servive provider that the phone number is currently
    #   registered with.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city where the phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] cleansed_phone_number_e164
    #   The cleansed phone number, shown in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] cleansed_phone_number_national
    #   The cleansed phone number, shown in the local phone number format.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country or region where the phone number was originally
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] country_code_iso_2
    #   The two-character ISO code for the country or region where the phone
    #   number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] country_code_numeric
    #   The numeric code for the country or region where the phone number
    #   was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] county
    #   The county where the phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] original_country_code_iso_2
    #   The two-character ISO code for the country or region that you
    #   included in the request body.
    #   @return [String]
    #
    # @!attribute [rw] original_phone_number
    #   The phone number that you included in the request body.
    #   @return [String]
    #
    # @!attribute [rw] phone_type
    #   A description of the phone type. Possible values are MOBILE,
    #   LANDLINE, VOIP, INVALID, PREPAID, and OTHER.
    #   @return [String]
    #
    # @!attribute [rw] phone_type_code
    #   The phone type, represented by an integer. Possible values include 0
    #   (MOBILE), 1 (LANDLINE), 2 (VOIP), 3 (INVALID), 4 (OTHER), and 5
    #   (PREPAID).
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   The time zone for the location where the phone number was originally
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] zip_code
    #   The postal code for the location where the phone number was
    #   originally registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/NumberValidateResponse AWS API Documentation
    #
    class NumberValidateResponse < Struct.new(
      :carrier,
      :city,
      :cleansed_phone_number_e164,
      :cleansed_phone_number_national,
      :country,
      :country_code_iso_2,
      :country_code_numeric,
      :county,
      :original_country_code_iso_2,
      :original_phone_number,
      :phone_type,
      :phone_type_code,
      :timezone,
      :zip_code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PhoneNumberValidateRequest
    #   data as a hash:
    #
    #       {
    #         number_validate_request: { # required
    #           iso_country_code: "__string",
    #           phone_number: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] number_validate_request
    #   Phone Number Information request.
    #   @return [Types::NumberValidateRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PhoneNumberValidateRequest AWS API Documentation
    #
    class PhoneNumberValidateRequest < Struct.new(
      :number_validate_request)
      include Aws::Structure
    end

    # @!attribute [rw] number_validate_response
    #   Phone Number Information response.
    #   @return [Types::NumberValidateResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PhoneNumberValidateResponse AWS API Documentation
    #
    class PhoneNumberValidateResponse < Struct.new(
      :number_validate_response)
      include Aws::Structure
    end

    # Public endpoint attributes.
    #
    # @note When making an API call, you may pass PublicEndpoint
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #         demographic: {
    #           app_version: "__string",
    #           locale: "__string",
    #           make: "__string",
    #           model: "__string",
    #           model_version: "__string",
    #           platform: "__string",
    #           platform_version: "__string",
    #           timezone: "__string",
    #         },
    #         effective_date: "__string",
    #         endpoint_status: "__string",
    #         location: {
    #           city: "__string",
    #           country: "__string",
    #           latitude: 1.0,
    #           longitude: 1.0,
    #           postal_code: "__string",
    #           region: "__string",
    #         },
    #         metrics: {
    #           "__string" => 1.0,
    #         },
    #         opt_out: "__string",
    #         request_id: "__string",
    #         user: {
    #           user_attributes: {
    #             "__string" => ["__string"],
    #           },
    #           user_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] address
    #   The unique identifier for the recipient. For example, an address
    #   could be a device token or an endpoint ID.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Custom attributes that your app reports to Amazon Pinpoint. You can
    #   use these attributes as selection criteria when you create a
    #   segment.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel type. Valid values: APNS, GCM
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The endpoint demographic attributes.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The date and time when the endpoint was last updated.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   The status of the endpoint. If the update fails, the value is
    #   INACTIVE. If the endpoint is updated successfully, the value is
    #   ACTIVE.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The endpoint location attributes.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   Custom metrics that your app reports to Amazon Pinpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Indicates whether a user has opted out of receiving messages with
    #   one of the following values: ALL - User has opted out of all
    #   messages. NONE - Users has not opted out and receives all messages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   A unique identifier that is generated each time the endpoint is
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   Custom user-specific attributes that your app reports to Amazon
    #   Pinpoint.
    #   @return [Types::EndpointUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PublicEndpoint AWS API Documentation
    #
    class PublicEndpoint < Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventStreamRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_event_stream: { # required
    #           destination_stream_arn: "__string",
    #           role_arn: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_event_stream
    #   Request to save an EventStream.
    #   @return [Types::WriteEventStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEventStreamRequest AWS API Documentation
    #
    class PutEventStreamRequest < Struct.new(
      :application_id,
      :write_event_stream)
      include Aws::Structure
    end

    # @!attribute [rw] event_stream
    #   Model for an event publishing subscription export.
    #   @return [Types::EventStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEventStreamResponse AWS API Documentation
    #
    class PutEventStreamResponse < Struct.new(
      :event_stream)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         events_request: { # required
    #           batch_item: {
    #             "__string" => {
    #               endpoint: {
    #                 address: "__string",
    #                 attributes: {
    #                   "__string" => ["__string"],
    #                 },
    #                 channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #                 demographic: {
    #                   app_version: "__string",
    #                   locale: "__string",
    #                   make: "__string",
    #                   model: "__string",
    #                   model_version: "__string",
    #                   platform: "__string",
    #                   platform_version: "__string",
    #                   timezone: "__string",
    #                 },
    #                 effective_date: "__string",
    #                 endpoint_status: "__string",
    #                 location: {
    #                   city: "__string",
    #                   country: "__string",
    #                   latitude: 1.0,
    #                   longitude: 1.0,
    #                   postal_code: "__string",
    #                   region: "__string",
    #                 },
    #                 metrics: {
    #                   "__string" => 1.0,
    #                 },
    #                 opt_out: "__string",
    #                 request_id: "__string",
    #                 user: {
    #                   user_attributes: {
    #                     "__string" => ["__string"],
    #                   },
    #                   user_id: "__string",
    #                 },
    #               },
    #               events: {
    #                 "__string" => {
    #                   attributes: {
    #                     "__string" => "__string",
    #                   },
    #                   client_sdk_version: "__string",
    #                   event_type: "__string",
    #                   metrics: {
    #                     "__string" => 1.0,
    #                   },
    #                   session: {
    #                     duration: 1,
    #                     id: "__string",
    #                     start_timestamp: "__string",
    #                     stop_timestamp: "__string",
    #                   },
    #                   timestamp: "__string",
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] events_request
    #   Put Events request
    #   @return [Types::EventsRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :application_id,
      :events_request)
      include Aws::Structure
    end

    # @!attribute [rw] events_response
    #   The results from processing a put events request
    #   @return [Types::EventsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEventsResponse AWS API Documentation
    #
    class PutEventsResponse < Struct.new(
      :events_response)
      include Aws::Structure
    end

    # Quiet Time
    #
    # @note When making an API call, you may pass QuietTime
    #   data as a hash:
    #
    #       {
    #         end: "__string",
    #         start: "__string",
    #       }
    #
    # @!attribute [rw] end
    #   The default end time for quiet time in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The default start time for quiet time in ISO 8601 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/QuietTime AWS API Documentation
    #
    class QuietTime < Struct.new(
      :end,
      :start)
      include Aws::Structure
    end

    # Define how a segment based on recency of use.
    #
    # @note When making an API call, you may pass RecencyDimension
    #   data as a hash:
    #
    #       {
    #         duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #         recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] duration
    #   The length of time during which users have been active or inactive
    #   with your app. Valid values: HR\_24, DAY\_7, DAY\_14, DAY\_30
    #   @return [String]
    #
    # @!attribute [rw] recency_type
    #   The recency dimension type: ACTIVE - Users who have used your app
    #   within the specified duration are included in the segment. INACTIVE
    #   - Users who have not used your app within the specified duration are
    #   included in the segment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RecencyDimension AWS API Documentation
    #
    class RecencyDimension < Struct.new(
      :duration,
      :recency_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveAttributesRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         attribute_type: "__string", # required
    #         update_attributes_request: { # required
    #           blacklist: ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   @return [String]
    #
    # @!attribute [rw] update_attributes_request
    #   Update attributes request
    #   @return [Types::UpdateAttributesRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RemoveAttributesRequest AWS API Documentation
    #
    class RemoveAttributesRequest < Struct.new(
      :application_id,
      :attribute_type,
      :update_attributes_request)
      include Aws::Structure
    end

    # @!attribute [rw] attributes_resource
    #   Attributes.
    #   @return [Types::AttributesResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RemoveAttributesResponse AWS API Documentation
    #
    class RemoveAttributesResponse < Struct.new(
      :attributes_resource)
      include Aws::Structure
    end

    # SMS Channel Request
    #
    # @note When making an API call, you may pass SMSChannelRequest
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         sender_id: "__string",
    #         short_code: "__string",
    #       }
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] sender_id
    #   Sender identifier of your messages.
    #   @return [String]
    #
    # @!attribute [rw] short_code
    #   ShortCode registered with phone provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SMSChannelRequest AWS API Documentation
    #
    class SMSChannelRequest < Struct.new(
      :enabled,
      :sender_id,
      :short_code)
      include Aws::Structure
    end

    # SMS Channel Response.
    #
    # @!attribute [rw] application_id
    #   The unique ID of the application to which the SMS channel belongs.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date that the settings were last updated in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If the channel is enabled for sending messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   Not used. Retained for backwards compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   Channel ID. Not used, only for backwards compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Is this channel archived
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   Who last updated this entry
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Last date this was updated
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Platform type. Will be "SMS"
    #   @return [String]
    #
    # @!attribute [rw] promotional_messages_per_second
    #   Promotional messages per second that can be sent
    #   @return [Integer]
    #
    # @!attribute [rw] sender_id
    #   Sender identifier of your messages.
    #   @return [String]
    #
    # @!attribute [rw] short_code
    #   The short code registered with the phone provider.
    #   @return [String]
    #
    # @!attribute [rw] transactional_messages_per_second
    #   Transactional messages per second that can be sent
    #   @return [Integer]
    #
    # @!attribute [rw] version
    #   Version of channel
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SMSChannelResponse AWS API Documentation
    #
    class SMSChannelResponse < Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :promotional_messages_per_second,
      :sender_id,
      :short_code,
      :transactional_messages_per_second,
      :version)
      include Aws::Structure
    end

    # SMS Message.
    #
    # @note When making an API call, you may pass SMSMessage
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         keyword: "__string",
    #         message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #         origination_number: "__string",
    #         sender_id: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] body
    #   The body of the SMS message.
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   The SMS program name that you provided to AWS Support when you
    #   requested your dedicated number.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   Is this a transaction priority message or lower priority.
    #   @return [String]
    #
    # @!attribute [rw] origination_number
    #   The phone number that the SMS message originates from. Specify one
    #   of the dedicated long codes or short codes that you requested from
    #   AWS Support and that is assigned to your account. If this attribute
    #   is not specified, Amazon Pinpoint randomly assigns a long code.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The sender ID that is shown as the message sender on the
    #   recipient's device. Support for sender IDs varies by country or
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   Default message substitutions. Can be overridden by individual
    #   address substitutions.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SMSMessage AWS API Documentation
    #
    class SMSMessage < Struct.new(
      :body,
      :keyword,
      :message_type,
      :origination_number,
      :sender_id,
      :substitutions)
      include Aws::Structure
    end

    # Shcedule that defines when a campaign is run.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         end_time: "__string",
    #         frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         start_time: "__string",
    #         timezone: "__string",
    #       }
    #
    # @!attribute [rw] end_time
    #   The scheduled time that the campaign ends in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] frequency
    #   How often the campaign delivers messages. Valid values: ONCE,
    #   HOURLY, DAILY, WEEKLY, MONTHLY
    #   @return [String]
    #
    # @!attribute [rw] is_local_time
    #   Indicates whether the campaign schedule takes effect according to
    #   each user's local time.
    #   @return [Boolean]
    #
    # @!attribute [rw] quiet_time
    #   The time during which the campaign sends no messages.
    #   @return [Types::QuietTime]
    #
    # @!attribute [rw] start_time
    #   The scheduled time that the campaign begins in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The starting UTC offset for the schedule if the value for
    #   isLocalTime is true Valid values: UTC UTC+01 UTC+02 UTC+03 UTC+03:30
    #   UTC+04 UTC+04:30 UTC+05 UTC+05:30 UTC+05:45 UTC+06 UTC+06:30 UTC+07
    #   UTC+08 UTC+09 UTC+09:30 UTC+10 UTC+10:30 UTC+11 UTC+12 UTC+13 UTC-02
    #   UTC-03 UTC-04 UTC-05 UTC-06 UTC-07 UTC-08 UTC-09 UTC-10 UTC-11
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :end_time,
      :frequency,
      :is_local_time,
      :quiet_time,
      :start_time,
      :timezone)
      include Aws::Structure
    end

    # Segment behavior dimensions
    #
    # @note When making an API call, you may pass SegmentBehaviors
    #   data as a hash:
    #
    #       {
    #         recency: {
    #           duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #           recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #         },
    #       }
    #
    # @!attribute [rw] recency
    #   The recency of use.
    #   @return [Types::RecencyDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentBehaviors AWS API Documentation
    #
    class SegmentBehaviors < Struct.new(
      :recency)
      include Aws::Structure
    end

    # Segment demographic dimensions
    #
    # @note When making an API call, you may pass SegmentDemographics
    #   data as a hash:
    #
    #       {
    #         app_version: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         channel: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         device_type: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         make: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         model: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         platform: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] app_version
    #   The app version criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] channel
    #   The channel criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] device_type
    #   The device type criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] make
    #   The device make criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] model
    #   The device model criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] platform
    #   The device platform criteria for the segment.
    #   @return [Types::SetDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentDemographics AWS API Documentation
    #
    class SegmentDemographics < Struct.new(
      :app_version,
      :channel,
      :device_type,
      :make,
      :model,
      :platform)
      include Aws::Structure
    end

    # Segment dimensions
    #
    # @note When making an API call, you may pass SegmentDimensions
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #             recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #           },
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           gps_point: {
    #             coordinates: {
    #               latitude: 1.0,
    #               longitude: 1.0,
    #             },
    #             range_in_kilometers: 1.0,
    #           },
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string",
    #             value: 1.0,
    #           },
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attributes
    #   Custom segment attributes.
    #   @return [Hash<String,Types::AttributeDimension>]
    #
    # @!attribute [rw] behavior
    #   The segment behaviors attributes.
    #   @return [Types::SegmentBehaviors]
    #
    # @!attribute [rw] demographic
    #   The segment demographics attributes.
    #   @return [Types::SegmentDemographics]
    #
    # @!attribute [rw] location
    #   The segment location attributes.
    #   @return [Types::SegmentLocation]
    #
    # @!attribute [rw] metrics
    #   Custom segment metrics.
    #   @return [Hash<String,Types::MetricDimension>]
    #
    # @!attribute [rw] user_attributes
    #   Custom segment user attributes.
    #   @return [Hash<String,Types::AttributeDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentDimensions AWS API Documentation
    #
    class SegmentDimensions < Struct.new(
      :attributes,
      :behavior,
      :demographic,
      :location,
      :metrics,
      :user_attributes)
      include Aws::Structure
    end

    # Segment group definition.
    #
    # @note When making an API call, you may pass SegmentGroup
    #   data as a hash:
    #
    #       {
    #         dimensions: [
    #           {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               gps_point: {
    #                 coordinates: {
    #                   latitude: 1.0,
    #                   longitude: 1.0,
    #                 },
    #                 range_in_kilometers: 1.0,
    #               },
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string",
    #                 value: 1.0,
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #           },
    #         ],
    #         source_segments: [
    #           {
    #             id: "__string",
    #             version: 1,
    #           },
    #         ],
    #         source_type: "ALL", # accepts ALL, ANY, NONE
    #         type: "ALL", # accepts ALL, ANY, NONE
    #       }
    #
    # @!attribute [rw] dimensions
    #   List of dimensions to include or exclude.
    #   @return [Array<Types::SegmentDimensions>]
    #
    # @!attribute [rw] source_segments
    #   The base segment that you build your segment on. The source segment
    #   defines the starting "universe" of endpoints. When you add
    #   dimensions to the segment, it filters the source segment based on
    #   the dimensions that you specify. You can specify more than one
    #   dimensional segment. You can only specify one imported segment.
    #   @return [Array<Types::SegmentReference>]
    #
    # @!attribute [rw] source_type
    #   Specify how to handle multiple source segments. For example, if you
    #   specify three source segments, should the resulting segment be based
    #   on any or all of the segments? Acceptable values: ANY or ALL.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specify how to handle multiple segment dimensions. For example, if
    #   you specify three dimensions, should the resulting segment include
    #   endpoints that are matched by all, any, or none of the dimensions?
    #   Acceptable values: ALL, ANY, or NONE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentGroup AWS API Documentation
    #
    class SegmentGroup < Struct.new(
      :dimensions,
      :source_segments,
      :source_type,
      :type)
      include Aws::Structure
    end

    # Segment group definition.
    #
    # @note When making an API call, you may pass SegmentGroupList
    #   data as a hash:
    #
    #       {
    #         groups: [
    #           {
    #             dimensions: [
    #               {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                     recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #                   },
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                   gps_point: {
    #                     coordinates: {
    #                       latitude: 1.0,
    #                       longitude: 1.0,
    #                     },
    #                     range_in_kilometers: 1.0,
    #                   },
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string",
    #                     value: 1.0,
    #                   },
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"],
    #                   },
    #                 },
    #               },
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string",
    #                 version: 1,
    #               },
    #             ],
    #             source_type: "ALL", # accepts ALL, ANY, NONE
    #             type: "ALL", # accepts ALL, ANY, NONE
    #           },
    #         ],
    #         include: "ALL", # accepts ALL, ANY, NONE
    #       }
    #
    # @!attribute [rw] groups
    #   A set of segment criteria to evaluate.
    #   @return [Array<Types::SegmentGroup>]
    #
    # @!attribute [rw] include
    #   Specify how to handle multiple segment groups. For example, if the
    #   segment includes three segment groups, should the resulting segment
    #   include endpoints that are matched by all, any, or none of the
    #   segment groups you created. Acceptable values: ALL, ANY, or NONE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentGroupList AWS API Documentation
    #
    class SegmentGroupList < Struct.new(
      :groups,
      :include)
      include Aws::Structure
    end

    # Segment import definition.
    #
    # @!attribute [rw] channel_counts
    #   The number of channel types in the imported segment.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to the
    #   ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to
    #   assume an IAM role. This requirement is removed, and external IDs
    #   are not recommended for IAM roles assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the endpoint files that were imported to create this
    #   segment. Valid values: CSV, JSON
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants Amazon
    #   Pinpoint access to the endpoints in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL of the S3 bucket that the segment was imported from.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The number of endpoints that were successfully imported to create
    #   this segment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentImportResource AWS API Documentation
    #
    class SegmentImportResource < Struct.new(
      :channel_counts,
      :external_id,
      :format,
      :role_arn,
      :s3_url,
      :size)
      include Aws::Structure
    end

    # Segment location dimensions
    #
    # @note When making an API call, you may pass SegmentLocation
    #   data as a hash:
    #
    #       {
    #         country: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"],
    #         },
    #         gps_point: {
    #           coordinates: {
    #             latitude: 1.0,
    #             longitude: 1.0,
    #           },
    #           range_in_kilometers: 1.0,
    #         },
    #       }
    #
    # @!attribute [rw] country
    #   The country filter according to ISO 3166-1 Alpha-2 codes.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] gps_point
    #   The GPS Point dimension.
    #   @return [Types::GPSPointDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentLocation AWS API Documentation
    #
    class SegmentLocation < Struct.new(
      :country,
      :gps_point)
      include Aws::Structure
    end

    # Segment reference.
    #
    # @note When making an API call, you may pass SegmentReference
    #   data as a hash:
    #
    #       {
    #         id: "__string",
    #         version: 1,
    #       }
    #
    # @!attribute [rw] id
    #   A unique identifier for the segment.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   If specified contains a specific version of the segment included.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentReference AWS API Documentation
    #
    class SegmentReference < Struct.new(
      :id,
      :version)
      include Aws::Structure
    end

    # Segment definition.
    #
    # @!attribute [rw] application_id
    #   The ID of the application that the segment applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the segment was created.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The segment dimensions attributes.
    #   @return [Types::SegmentDimensions]
    #
    # @!attribute [rw] id
    #   The unique segment ID.
    #   @return [String]
    #
    # @!attribute [rw] import_definition
    #   The import job settings.
    #   @return [Types::SegmentImportResource]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the segment was last modified.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_groups
    #   A segment group, which consists of zero or more source segments,
    #   plus dimensions that are applied to those source segments.
    #   @return [Types::SegmentGroupList]
    #
    # @!attribute [rw] segment_type
    #   The segment type: DIMENSIONAL - A dynamic segment built from
    #   selection criteria based on endpoint data reported by your app. You
    #   create this type of segment by using the segment builder in the
    #   Amazon Pinpoint console or by making a POST request to the segments
    #   resource. IMPORT - A static segment built from an imported set of
    #   endpoint definitions. You create this type of segment by importing a
    #   segment in the Amazon Pinpoint console or by making a POST request
    #   to the jobs/import resource.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The segment version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentResponse AWS API Documentation
    #
    class SegmentResponse < Struct.new(
      :application_id,
      :creation_date,
      :dimensions,
      :id,
      :import_definition,
      :last_modified_date,
      :name,
      :segment_groups,
      :segment_type,
      :version)
      include Aws::Structure
    end

    # Segments in your account.
    #
    # @!attribute [rw] item
    #   The list of segments.
    #   @return [Array<Types::SegmentResponse>]
    #
    # @!attribute [rw] next_token
    #   An identifier used to retrieve the next page of results. The token
    #   is null if no additional pages exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentsResponse AWS API Documentation
    #
    class SegmentsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendMessagesRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         message_request: { # required
    #           addresses: {
    #             "__string" => {
    #               body_override: "__string",
    #               channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #               context: {
    #                 "__string" => "__string",
    #               },
    #               raw_content: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               title_override: "__string",
    #             },
    #           },
    #           context: {
    #             "__string" => "__string",
    #           },
    #           endpoints: {
    #             "__string" => {
    #               body_override: "__string",
    #               context: {
    #                 "__string" => "__string",
    #               },
    #               raw_content: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               title_override: "__string",
    #             },
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               consolidation_key: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               expires_after: "__string",
    #               icon_reference: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               md5: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               small_image_icon_url: "__string",
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               title: "__string",
    #               url: "__string",
    #             },
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               badge: 1,
    #               body: "__string",
    #               category: "__string",
    #               collapse_id: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               media_url: "__string",
    #               preferred_authentication_method: "__string",
    #               priority: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               thread_id: "__string",
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               icon_reference: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               small_image_icon_url: "__string",
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               body: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #             },
    #             default_push_notification_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               silent_push: false,
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               title: "__string",
    #               url: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               collapse_key: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               icon_reference: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               priority: "__string",
    #               raw_content: "__string",
    #               restricted_package_name: "__string",
    #               silent_push: false,
    #               small_image_icon_url: "__string",
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               keyword: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #             },
    #           },
    #           trace_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] message_request
    #   Send message request.
    #   @return [Types::MessageRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendMessagesRequest AWS API Documentation
    #
    class SendMessagesRequest < Struct.new(
      :application_id,
      :message_request)
      include Aws::Structure
    end

    # @!attribute [rw] message_response
    #   Send message response.
    #   @return [Types::MessageResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendMessagesResponse AWS API Documentation
    #
    class SendMessagesResponse < Struct.new(
      :message_response)
      include Aws::Structure
    end

    # Send message request.
    #
    # @note When making an API call, you may pass SendUsersMessageRequest
    #   data as a hash:
    #
    #       {
    #         context: {
    #           "__string" => "__string",
    #         },
    #         message_configuration: {
    #           adm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             consolidation_key: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             expires_after: "__string",
    #             icon_reference: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             md5: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             title: "__string",
    #             url: "__string",
    #           },
    #           apns_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             badge: 1,
    #             body: "__string",
    #             category: "__string",
    #             collapse_id: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             media_url: "__string",
    #             preferred_authentication_method: "__string",
    #             priority: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             thread_id: "__string",
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           baidu_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             icon_reference: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_message: {
    #             body: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #           },
    #           default_push_notification_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             silent_push: false,
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             title: "__string",
    #             url: "__string",
    #           },
    #           gcm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             collapse_key: "__string",
    #             data: {
    #               "__string" => "__string",
    #             },
    #             icon_reference: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             priority: "__string",
    #             raw_content: "__string",
    #             restricted_package_name: "__string",
    #             silent_push: false,
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           sms_message: {
    #             body: "__string",
    #             keyword: "__string",
    #             message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #             origination_number: "__string",
    #             sender_id: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #           },
    #         },
    #         trace_id: "__string",
    #         users: {
    #           "__string" => {
    #             body_override: "__string",
    #             context: {
    #               "__string" => "__string",
    #             },
    #             raw_content: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             title_override: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] context
    #   A map of custom attribute-value pairs. Amazon Pinpoint adds these
    #   attributes to the data.pinpoint object in the body of the push
    #   notification payload. Amazon Pinpoint also provides these attributes
    #   in the events that it generates for users-messages deliveries.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message_configuration
    #   Message definitions for the default message and any messages that
    #   are tailored for specific channels.
    #   @return [Types::DirectMessageConfiguration]
    #
    # @!attribute [rw] trace_id
    #   A unique ID that you can use to trace a message. This ID is visible
    #   to recipients.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   A map that associates user IDs with EndpointSendConfiguration
    #   objects. Within an EndpointSendConfiguration object, you can tailor
    #   the message for a user by specifying message overrides or
    #   substitutions.
    #   @return [Hash<String,Types::EndpointSendConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendUsersMessageRequest AWS API Documentation
    #
    class SendUsersMessageRequest < Struct.new(
      :context,
      :message_configuration,
      :trace_id,
      :users)
      include Aws::Structure
    end

    # User send message response.
    #
    # @!attribute [rw] application_id
    #   The unique ID of the Amazon Pinpoint project used to send the
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique ID assigned to the users-messages request.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   An object that shows the endpoints that were messaged for each user.
    #   The object provides a list of user IDs. For each user ID, it
    #   provides the endpoint IDs that were messaged. For each endpoint ID,
    #   it provides an EndpointMessageResult object.
    #   @return [Hash<String,Hash<String,Types::EndpointMessageResult>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendUsersMessageResponse AWS API Documentation
    #
    class SendUsersMessageResponse < Struct.new(
      :application_id,
      :request_id,
      :result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendUsersMessagesRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         send_users_message_request: { # required
    #           context: {
    #             "__string" => "__string",
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               consolidation_key: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               expires_after: "__string",
    #               icon_reference: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               md5: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               small_image_icon_url: "__string",
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               title: "__string",
    #               url: "__string",
    #             },
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               badge: 1,
    #               body: "__string",
    #               category: "__string",
    #               collapse_id: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               media_url: "__string",
    #               preferred_authentication_method: "__string",
    #               priority: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               thread_id: "__string",
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               icon_reference: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               small_image_icon_url: "__string",
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               body: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #             },
    #             default_push_notification_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               silent_push: false,
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               title: "__string",
    #               url: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               collapse_key: "__string",
    #               data: {
    #                 "__string" => "__string",
    #               },
    #               icon_reference: "__string",
    #               image_icon_url: "__string",
    #               image_url: "__string",
    #               priority: "__string",
    #               raw_content: "__string",
    #               restricted_package_name: "__string",
    #               silent_push: false,
    #               small_image_icon_url: "__string",
    #               sound: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               keyword: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #             },
    #           },
    #           trace_id: "__string",
    #           users: {
    #             "__string" => {
    #               body_override: "__string",
    #               context: {
    #                 "__string" => "__string",
    #               },
    #               raw_content: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               title_override: "__string",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] send_users_message_request
    #   Send message request.
    #   @return [Types::SendUsersMessageRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendUsersMessagesRequest AWS API Documentation
    #
    class SendUsersMessagesRequest < Struct.new(
      :application_id,
      :send_users_message_request)
      include Aws::Structure
    end

    # @!attribute [rw] send_users_message_response
    #   User send message response.
    #   @return [Types::SendUsersMessageResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendUsersMessagesResponse AWS API Documentation
    #
    class SendUsersMessagesResponse < Struct.new(
      :send_users_message_response)
      include Aws::Structure
    end

    # Information about a session.
    #
    # @note When making an API call, you may pass Session
    #   data as a hash:
    #
    #       {
    #         duration: 1,
    #         id: "__string",
    #         start_timestamp: "__string",
    #         stop_timestamp: "__string",
    #       }
    #
    # @!attribute [rw] duration
    #   Session duration in millis
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   A unique identifier for the session.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   The date and time when the session began.
    #   @return [String]
    #
    # @!attribute [rw] stop_timestamp
    #   The date and time when the session ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Session AWS API Documentation
    #
    class Session < Struct.new(
      :duration,
      :id,
      :start_timestamp,
      :stop_timestamp)
      include Aws::Structure
    end

    # Dimension specification of a segment.
    #
    # @note When making an API call, you may pass SetDimension
    #   data as a hash:
    #
    #       {
    #         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #         values: ["__string"],
    #       }
    #
    # @!attribute [rw] dimension_type
    #   The type of dimension: INCLUSIVE - Endpoints that match the criteria
    #   are included in the segment. EXCLUSIVE - Endpoints that match the
    #   criteria are excluded from the segment.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The criteria values for the segment dimension. Endpoints with
    #   matching attribute values are included or excluded from the segment,
    #   depending on the setting for Type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SetDimension AWS API Documentation
    #
    class SetDimension < Struct.new(
      :dimension_type,
      :values)
      include Aws::Structure
    end

    # Treatment resource
    #
    # @!attribute [rw] id
    #   The unique treatment ID.
    #   @return [String]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] size_percent
    #   The allocated percentage of users for this treatment.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The treatment status.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TreatmentResource AWS API Documentation
    #
    class TreatmentResource < Struct.new(
      :id,
      :message_configuration,
      :schedule,
      :size_percent,
      :state,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAdmChannelRequest
    #   data as a hash:
    #
    #       {
    #         adm_channel_request: { # required
    #           client_id: "__string",
    #           client_secret: "__string",
    #           enabled: false,
    #         },
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] adm_channel_request
    #   Amazon Device Messaging channel definition.
    #   @return [Types::ADMChannelRequest]
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateAdmChannelRequest AWS API Documentation
    #
    class UpdateAdmChannelRequest < Struct.new(
      :adm_channel_request,
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] adm_channel_response
    #   Amazon Device Messaging channel definition.
    #   @return [Types::ADMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateAdmChannelResponse AWS API Documentation
    #
    class UpdateAdmChannelResponse < Struct.new(
      :adm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApnsChannelRequest
    #   data as a hash:
    #
    #       {
    #         apns_channel_request: { # required
    #           bundle_id: "__string",
    #           certificate: "__string",
    #           default_authentication_method: "__string",
    #           enabled: false,
    #           private_key: "__string",
    #           team_id: "__string",
    #           token_key: "__string",
    #           token_key_id: "__string",
    #         },
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] apns_channel_request
    #   Apple Push Notification Service channel definition.
    #   @return [Types::APNSChannelRequest]
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsChannelRequest AWS API Documentation
    #
    class UpdateApnsChannelRequest < Struct.new(
      :apns_channel_request,
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_channel_response
    #   Apple Distribution Push Notification Service channel definition.
    #   @return [Types::APNSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsChannelResponse AWS API Documentation
    #
    class UpdateApnsChannelResponse < Struct.new(
      :apns_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApnsSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         apns_sandbox_channel_request: { # required
    #           bundle_id: "__string",
    #           certificate: "__string",
    #           default_authentication_method: "__string",
    #           enabled: false,
    #           private_key: "__string",
    #           team_id: "__string",
    #           token_key: "__string",
    #           token_key_id: "__string",
    #         },
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] apns_sandbox_channel_request
    #   Apple Development Push Notification Service channel definition.
    #   @return [Types::APNSSandboxChannelRequest]
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsSandboxChannelRequest AWS API Documentation
    #
    class UpdateApnsSandboxChannelRequest < Struct.new(
      :apns_sandbox_channel_request,
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_sandbox_channel_response
    #   Apple Development Push Notification Service channel definition.
    #   @return [Types::APNSSandboxChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsSandboxChannelResponse AWS API Documentation
    #
    class UpdateApnsSandboxChannelResponse < Struct.new(
      :apns_sandbox_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApnsVoipChannelRequest
    #   data as a hash:
    #
    #       {
    #         apns_voip_channel_request: { # required
    #           bundle_id: "__string",
    #           certificate: "__string",
    #           default_authentication_method: "__string",
    #           enabled: false,
    #           private_key: "__string",
    #           team_id: "__string",
    #           token_key: "__string",
    #           token_key_id: "__string",
    #         },
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] apns_voip_channel_request
    #   Apple VoIP Push Notification Service channel definition.
    #   @return [Types::APNSVoipChannelRequest]
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsVoipChannelRequest AWS API Documentation
    #
    class UpdateApnsVoipChannelRequest < Struct.new(
      :apns_voip_channel_request,
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_voip_channel_response
    #   Apple VoIP Push Notification Service channel definition.
    #   @return [Types::APNSVoipChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsVoipChannelResponse AWS API Documentation
    #
    class UpdateApnsVoipChannelResponse < Struct.new(
      :apns_voip_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApnsVoipSandboxChannelRequest
    #   data as a hash:
    #
    #       {
    #         apns_voip_sandbox_channel_request: { # required
    #           bundle_id: "__string",
    #           certificate: "__string",
    #           default_authentication_method: "__string",
    #           enabled: false,
    #           private_key: "__string",
    #           team_id: "__string",
    #           token_key: "__string",
    #           token_key_id: "__string",
    #         },
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] apns_voip_sandbox_channel_request
    #   Apple VoIP Developer Push Notification Service channel definition.
    #   @return [Types::APNSVoipSandboxChannelRequest]
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsVoipSandboxChannelRequest AWS API Documentation
    #
    class UpdateApnsVoipSandboxChannelRequest < Struct.new(
      :apns_voip_sandbox_channel_request,
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] apns_voip_sandbox_channel_response
    #   Apple VoIP Developer Push Notification Service channel definition.
    #   @return [Types::APNSVoipSandboxChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsVoipSandboxChannelResponse AWS API Documentation
    #
    class UpdateApnsVoipSandboxChannelResponse < Struct.new(
      :apns_voip_sandbox_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationSettingsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_application_settings_request: { # required
    #           campaign_hook: {
    #             lambda_function_name: "__string",
    #             mode: "DELIVERY", # accepts DELIVERY, FILTER
    #             web_url: "__string",
    #           },
    #           cloud_watch_metrics_enabled: false,
    #           limits: {
    #             daily: 1,
    #             maximum_duration: 1,
    #             messages_per_second: 1,
    #             total: 1,
    #           },
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_application_settings_request
    #   Creating application setting request
    #   @return [Types::WriteApplicationSettingsRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApplicationSettingsRequest AWS API Documentation
    #
    class UpdateApplicationSettingsRequest < Struct.new(
      :application_id,
      :write_application_settings_request)
      include Aws::Structure
    end

    # @!attribute [rw] application_settings_resource
    #   Application settings.
    #   @return [Types::ApplicationSettingsResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApplicationSettingsResponse AWS API Documentation
    #
    class UpdateApplicationSettingsResponse < Struct.new(
      :application_settings_resource)
      include Aws::Structure
    end

    # Update attributes request
    #
    # @note When making an API call, you may pass UpdateAttributesRequest
    #   data as a hash:
    #
    #       {
    #         blacklist: ["__string"],
    #       }
    #
    # @!attribute [rw] blacklist
    #   The GLOB wildcard for removing the attributes in the application
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateAttributesRequest AWS API Documentation
    #
    class UpdateAttributesRequest < Struct.new(
      :blacklist)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateBaiduChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         baidu_channel_request: { # required
    #           api_key: "__string",
    #           enabled: false,
    #           secret_key: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] baidu_channel_request
    #   Baidu Cloud Push credentials
    #   @return [Types::BaiduChannelRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateBaiduChannelRequest AWS API Documentation
    #
    class UpdateBaiduChannelRequest < Struct.new(
      :application_id,
      :baidu_channel_request)
      include Aws::Structure
    end

    # @!attribute [rw] baidu_channel_response
    #   Baidu Cloud Messaging channel definition
    #   @return [Types::BaiduChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateBaiduChannelResponse AWS API Documentation
    #
    class UpdateBaiduChannelResponse < Struct.new(
      :baidu_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         write_campaign_request: { # required
    #           additional_treatments: [
    #             {
    #               message_configuration: {
    #                 adm_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 apns_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 baidu_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 default_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 email_message: {
    #                   body: "__string",
    #                   from_address: "__string",
    #                   html_body: "__string",
    #                   title: "__string",
    #                 },
    #                 gcm_message: {
    #                   action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                   body: "__string",
    #                   image_icon_url: "__string",
    #                   image_small_icon_url: "__string",
    #                   image_url: "__string",
    #                   json_body: "__string",
    #                   media_url: "__string",
    #                   raw_content: "__string",
    #                   silent_push: false,
    #                   time_to_live: 1,
    #                   title: "__string",
    #                   url: "__string",
    #                 },
    #                 sms_message: {
    #                   body: "__string",
    #                   message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #                   sender_id: "__string",
    #                 },
    #               },
    #               schedule: {
    #                 end_time: "__string",
    #                 frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string",
    #                 },
    #                 start_time: "__string",
    #                 timezone: "__string",
    #               },
    #               size_percent: 1,
    #               treatment_description: "__string",
    #               treatment_name: "__string",
    #             },
    #           ],
    #           description: "__string",
    #           holdout_percent: 1,
    #           hook: {
    #             lambda_function_name: "__string",
    #             mode: "DELIVERY", # accepts DELIVERY, FILTER
    #             web_url: "__string",
    #           },
    #           is_paused: false,
    #           limits: {
    #             daily: 1,
    #             maximum_duration: 1,
    #             messages_per_second: 1,
    #             total: 1,
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             baidu_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             email_message: {
    #               body: "__string",
    #               from_address: "__string",
    #               html_body: "__string",
    #               title: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               raw_content: "__string",
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #           },
    #           name: "__string",
    #           schedule: {
    #             end_time: "__string",
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string",
    #             timezone: "__string",
    #           },
    #           segment_id: "__string",
    #           segment_version: 1,
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] write_campaign_request
    #   Used to create a campaign.
    #   @return [Types::WriteCampaignRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateCampaignRequest AWS API Documentation
    #
    class UpdateCampaignRequest < Struct.new(
      :application_id,
      :campaign_id,
      :write_campaign_request)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_response
    #   Campaign definition
    #   @return [Types::CampaignResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateCampaignResponse AWS API Documentation
    #
    class UpdateCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEmailChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         email_channel_request: { # required
    #           enabled: false,
    #           from_address: "__string",
    #           identity: "__string",
    #           role_arn: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] email_channel_request
    #   Email Channel Request
    #   @return [Types::EmailChannelRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailChannelRequest AWS API Documentation
    #
    class UpdateEmailChannelRequest < Struct.new(
      :application_id,
      :email_channel_request)
      include Aws::Structure
    end

    # @!attribute [rw] email_channel_response
    #   Email Channel Response.
    #   @return [Types::EmailChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailChannelResponse AWS API Documentation
    #
    class UpdateEmailChannelResponse < Struct.new(
      :email_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         endpoint_id: "__string", # required
    #         endpoint_request: { # required
    #           address: "__string",
    #           attributes: {
    #             "__string" => ["__string"],
    #           },
    #           channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string",
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string",
    #           },
    #           metrics: {
    #             "__string" => 1.0,
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"],
    #             },
    #             user_id: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_request
    #   Endpoint update request
    #   @return [Types::EndpointRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpointRequest AWS API Documentation
    #
    class UpdateEndpointRequest < Struct.new(
      :application_id,
      :endpoint_id,
      :endpoint_request)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Simple message object.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpointResponse AWS API Documentation
    #
    class UpdateEndpointResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointsBatchRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         endpoint_batch_request: { # required
    #           item: [
    #             {
    #               address: "__string",
    #               attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, EMAIL, BAIDU, CUSTOM
    #               demographic: {
    #                 app_version: "__string",
    #                 locale: "__string",
    #                 make: "__string",
    #                 model: "__string",
    #                 model_version: "__string",
    #                 platform: "__string",
    #                 platform_version: "__string",
    #                 timezone: "__string",
    #               },
    #               effective_date: "__string",
    #               endpoint_status: "__string",
    #               id: "__string",
    #               location: {
    #                 city: "__string",
    #                 country: "__string",
    #                 latitude: 1.0,
    #                 longitude: 1.0,
    #                 postal_code: "__string",
    #                 region: "__string",
    #               },
    #               metrics: {
    #                 "__string" => 1.0,
    #               },
    #               opt_out: "__string",
    #               request_id: "__string",
    #               user: {
    #                 user_attributes: {
    #                   "__string" => ["__string"],
    #                 },
    #                 user_id: "__string",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] endpoint_batch_request
    #   Endpoint batch update request.
    #   @return [Types::EndpointBatchRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpointsBatchRequest AWS API Documentation
    #
    class UpdateEndpointsBatchRequest < Struct.new(
      :application_id,
      :endpoint_batch_request)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Simple message object.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpointsBatchResponse AWS API Documentation
    #
    class UpdateEndpointsBatchResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGcmChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         gcm_channel_request: { # required
    #           api_key: "__string",
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] gcm_channel_request
    #   Google Cloud Messaging credentials
    #   @return [Types::GCMChannelRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateGcmChannelRequest AWS API Documentation
    #
    class UpdateGcmChannelRequest < Struct.new(
      :application_id,
      :gcm_channel_request)
      include Aws::Structure
    end

    # @!attribute [rw] gcm_channel_response
    #   Google Cloud Messaging channel definition
    #   @return [Types::GCMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateGcmChannelResponse AWS API Documentation
    #
    class UpdateGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSegmentRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         segment_id: "__string", # required
    #         write_segment_request: { # required
    #           dimensions: {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #               gps_point: {
    #                 coordinates: {
    #                   latitude: 1.0,
    #                   longitude: 1.0,
    #                 },
    #                 range_in_kilometers: 1.0,
    #               },
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string",
    #                 value: 1.0,
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"],
    #               },
    #             },
    #           },
    #           name: "__string",
    #           segment_groups: {
    #             groups: [
    #               {
    #                 dimensions: [
    #                   {
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                       gps_point: {
    #                         coordinates: {
    #                           latitude: 1.0,
    #                           longitude: 1.0,
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string",
    #                         value: 1.0,
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"],
    #                       },
    #                     },
    #                   },
    #                 ],
    #                 source_segments: [
    #                   {
    #                     id: "__string",
    #                     version: 1,
    #                   },
    #                 ],
    #                 source_type: "ALL", # accepts ALL, ANY, NONE
    #                 type: "ALL", # accepts ALL, ANY, NONE
    #               },
    #             ],
    #             include: "ALL", # accepts ALL, ANY, NONE
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   @return [String]
    #
    # @!attribute [rw] write_segment_request
    #   Segment definition.
    #   @return [Types::WriteSegmentRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSegmentRequest AWS API Documentation
    #
    class UpdateSegmentRequest < Struct.new(
      :application_id,
      :segment_id,
      :write_segment_request)
      include Aws::Structure
    end

    # @!attribute [rw] segment_response
    #   Segment definition.
    #   @return [Types::SegmentResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSegmentResponse AWS API Documentation
    #
    class UpdateSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSmsChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         sms_channel_request: { # required
    #           enabled: false,
    #           sender_id: "__string",
    #           short_code: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] sms_channel_request
    #   SMS Channel Request
    #   @return [Types::SMSChannelRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsChannelRequest AWS API Documentation
    #
    class UpdateSmsChannelRequest < Struct.new(
      :application_id,
      :sms_channel_request)
      include Aws::Structure
    end

    # @!attribute [rw] sms_channel_response
    #   SMS Channel Response.
    #   @return [Types::SMSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsChannelResponse AWS API Documentation
    #
    class UpdateSmsChannelResponse < Struct.new(
      :sms_channel_response)
      include Aws::Structure
    end

    # Creating application setting request
    #
    # @note When making an API call, you may pass WriteApplicationSettingsRequest
    #   data as a hash:
    #
    #       {
    #         campaign_hook: {
    #           lambda_function_name: "__string",
    #           mode: "DELIVERY", # accepts DELIVERY, FILTER
    #           web_url: "__string",
    #         },
    #         cloud_watch_metrics_enabled: false,
    #         limits: {
    #           daily: 1,
    #           maximum_duration: 1,
    #           messages_per_second: 1,
    #           total: 1,
    #         },
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] campaign_hook
    #   Default campaign hook information.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   The CloudWatchMetrics settings for the app.
    #   @return [Boolean]
    #
    # @!attribute [rw] limits
    #   The default campaign limits for the app. These limits apply to each
    #   campaign for the app, unless the campaign overrides the default with
    #   limits of its own.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] quiet_time
    #   The default quiet time for the app. Each campaign for this app sends
    #   no messages during this time unless the campaign overrides the
    #   default with a quiet time of its own.
    #   @return [Types::QuietTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteApplicationSettingsRequest AWS API Documentation
    #
    class WriteApplicationSettingsRequest < Struct.new(
      :campaign_hook,
      :cloud_watch_metrics_enabled,
      :limits,
      :quiet_time)
      include Aws::Structure
    end

    # Used to create a campaign.
    #
    # @note When making an API call, you may pass WriteCampaignRequest
    #   data as a hash:
    #
    #       {
    #         additional_treatments: [
    #           {
    #             message_configuration: {
    #               adm_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_small_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 raw_content: "__string",
    #                 silent_push: false,
    #                 time_to_live: 1,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #               apns_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_small_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 raw_content: "__string",
    #                 silent_push: false,
    #                 time_to_live: 1,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #               baidu_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_small_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 raw_content: "__string",
    #                 silent_push: false,
    #                 time_to_live: 1,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #               default_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_small_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 raw_content: "__string",
    #                 silent_push: false,
    #                 time_to_live: 1,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #               email_message: {
    #                 body: "__string",
    #                 from_address: "__string",
    #                 html_body: "__string",
    #                 title: "__string",
    #               },
    #               gcm_message: {
    #                 action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #                 body: "__string",
    #                 image_icon_url: "__string",
    #                 image_small_icon_url: "__string",
    #                 image_url: "__string",
    #                 json_body: "__string",
    #                 media_url: "__string",
    #                 raw_content: "__string",
    #                 silent_push: false,
    #                 time_to_live: 1,
    #                 title: "__string",
    #                 url: "__string",
    #               },
    #               sms_message: {
    #                 body: "__string",
    #                 message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #                 sender_id: "__string",
    #               },
    #             },
    #             schedule: {
    #               end_time: "__string",
    #               frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #               is_local_time: false,
    #               quiet_time: {
    #                 end: "__string",
    #                 start: "__string",
    #               },
    #               start_time: "__string",
    #               timezone: "__string",
    #             },
    #             size_percent: 1,
    #             treatment_description: "__string",
    #             treatment_name: "__string",
    #           },
    #         ],
    #         description: "__string",
    #         holdout_percent: 1,
    #         hook: {
    #           lambda_function_name: "__string",
    #           mode: "DELIVERY", # accepts DELIVERY, FILTER
    #           web_url: "__string",
    #         },
    #         is_paused: false,
    #         limits: {
    #           daily: 1,
    #           maximum_duration: 1,
    #           messages_per_second: 1,
    #           total: 1,
    #         },
    #         message_configuration: {
    #           adm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           apns_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           baidu_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           email_message: {
    #             body: "__string",
    #             from_address: "__string",
    #             html_body: "__string",
    #             title: "__string",
    #           },
    #           gcm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           sms_message: {
    #             body: "__string",
    #             message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #             sender_id: "__string",
    #           },
    #         },
    #         name: "__string",
    #         schedule: {
    #           end_time: "__string",
    #           frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #           is_local_time: false,
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           start_time: "__string",
    #           timezone: "__string",
    #         },
    #         segment_id: "__string",
    #         segment_version: 1,
    #         treatment_description: "__string",
    #         treatment_name: "__string",
    #       }
    #
    # @!attribute [rw] additional_treatments
    #   Treatments that are defined in addition to the default treatment.
    #   @return [Array<Types::WriteTreatmentResource>]
    #
    # @!attribute [rw] description
    #   A description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] holdout_percent
    #   The allocated percentage of end users who will not receive messages
    #   from this campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] hook
    #   Campaign hook information.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] is_paused
    #   Indicates whether the campaign is paused. A paused campaign does not
    #   send messages unless you resume it by setting IsPaused to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] limits
    #   The campaign limits settings.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] name
    #   The custom name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] segment_id
    #   The ID of the segment to which the campaign sends messages.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to which the campaign sends messages.
    #   @return [Integer]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteCampaignRequest AWS API Documentation
    #
    class WriteCampaignRequest < Struct.new(
      :additional_treatments,
      :description,
      :holdout_percent,
      :hook,
      :is_paused,
      :limits,
      :message_configuration,
      :name,
      :schedule,
      :segment_id,
      :segment_version,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

    # Request to save an EventStream.
    #
    # @note When making an API call, you may pass WriteEventStream
    #   data as a hash:
    #
    #       {
    #         destination_stream_arn: "__string",
    #         role_arn: "__string",
    #       }
    #
    # @!attribute [rw] destination_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream or
    #   Firehose delivery stream to which you want to publish events.
    #   Firehose ARN:
    #   arn:aws:firehose:REGION:ACCOUNT\_ID:deliverystream/STREAM\_NAME
    #   Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT\_ID:stream/STREAM\_NAME
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that authorizes Amazon Pinpoint to publish events to
    #   the stream in your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteEventStream AWS API Documentation
    #
    class WriteEventStream < Struct.new(
      :destination_stream_arn,
      :role_arn)
      include Aws::Structure
    end

    # Segment definition.
    #
    # @note When making an API call, you may pass WriteSegmentRequest
    #   data as a hash:
    #
    #       {
    #         dimensions: {
    #           attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #           },
    #           behavior: {
    #             recency: {
    #               duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #               recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #             },
    #           },
    #           demographic: {
    #             app_version: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             channel: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             device_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             make: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             model: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             platform: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #           },
    #           location: {
    #             country: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #             gps_point: {
    #               coordinates: {
    #                 latitude: 1.0,
    #                 longitude: 1.0,
    #               },
    #               range_in_kilometers: 1.0,
    #             },
    #           },
    #           metrics: {
    #             "__string" => {
    #               comparison_operator: "__string",
    #               value: 1.0,
    #             },
    #           },
    #           user_attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"],
    #             },
    #           },
    #         },
    #         name: "__string",
    #         segment_groups: {
    #           groups: [
    #             {
    #               dimensions: [
    #                 {
    #                   attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                   },
    #                   behavior: {
    #                     recency: {
    #                       duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #                       recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #                     },
    #                   },
    #                   demographic: {
    #                     app_version: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                     channel: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                     device_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                     make: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                     model: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                     platform: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                   },
    #                   location: {
    #                     country: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                     gps_point: {
    #                       coordinates: {
    #                         latitude: 1.0,
    #                         longitude: 1.0,
    #                       },
    #                       range_in_kilometers: 1.0,
    #                     },
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string",
    #                       value: 1.0,
    #                     },
    #                   },
    #                   user_attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"],
    #                     },
    #                   },
    #                 },
    #               ],
    #               source_segments: [
    #                 {
    #                   id: "__string",
    #                   version: 1,
    #                 },
    #               ],
    #               source_type: "ALL", # accepts ALL, ANY, NONE
    #               type: "ALL", # accepts ALL, ANY, NONE
    #             },
    #           ],
    #           include: "ALL", # accepts ALL, ANY, NONE
    #         },
    #       }
    #
    # @!attribute [rw] dimensions
    #   The segment dimensions attributes.
    #   @return [Types::SegmentDimensions]
    #
    # @!attribute [rw] name
    #   The name of segment
    #   @return [String]
    #
    # @!attribute [rw] segment_groups
    #   A segment group, which consists of zero or more source segments,
    #   plus dimensions that are applied to those source segments. Your
    #   request can only include one segment group. Your request can include
    #   either a SegmentGroups object or a Dimensions object, but not both.
    #   @return [Types::SegmentGroupList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteSegmentRequest AWS API Documentation
    #
    class WriteSegmentRequest < Struct.new(
      :dimensions,
      :name,
      :segment_groups)
      include Aws::Structure
    end

    # Used to create a campaign treatment.
    #
    # @note When making an API call, you may pass WriteTreatmentResource
    #   data as a hash:
    #
    #       {
    #         message_configuration: {
    #           adm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           apns_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           baidu_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           email_message: {
    #             body: "__string",
    #             from_address: "__string",
    #             html_body: "__string",
    #             title: "__string",
    #           },
    #           gcm_message: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_small_icon_url: "__string",
    #             image_url: "__string",
    #             json_body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             silent_push: false,
    #             time_to_live: 1,
    #             title: "__string",
    #             url: "__string",
    #           },
    #           sms_message: {
    #             body: "__string",
    #             message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #             sender_id: "__string",
    #           },
    #         },
    #         schedule: {
    #           end_time: "__string",
    #           frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #           is_local_time: false,
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           start_time: "__string",
    #           timezone: "__string",
    #         },
    #         size_percent: 1,
    #         treatment_description: "__string",
    #         treatment_name: "__string",
    #       }
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] schedule
    #   The campaign schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] size_percent
    #   The allocated percentage of users for this treatment.
    #   @return [Integer]
    #
    # @!attribute [rw] treatment_description
    #   A custom description for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of a variation of the campaign used for A/B testing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteTreatmentResource AWS API Documentation
    #
    class WriteTreatmentResource < Struct.new(
      :message_configuration,
      :schedule,
      :size_percent,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

  end
end
