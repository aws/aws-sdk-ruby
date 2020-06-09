# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pinpoint
  module Types

    # Specifies the status and settings of the ADM (Amazon Device Messaging)
    # channel for an application.
    #
    # @note When making an API call, you may pass ADMChannelRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "__string", # required
    #         client_secret: "__string", # required
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] client_id
    #   The Client ID that you received from Amazon to send messages by
    #   using ADM.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The Client Secret that you received from Amazon to send messages by
    #   using ADM.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the ADM channel for the application.
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

    # Provides information about the status and settings of the ADM (Amazon
    # Device Messaging) channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the ADM channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the ADM channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the ADM channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the ADM channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the ADM channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the ADM channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the ADM channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the ADM channel, this value is ADM.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the ADM channel.
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

    # Specifies the settings for a one-time message that's sent directly to
    # an endpoint through the ADM (Amazon Device Messaging) channel.
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
    #   The action to occur if the recipient taps the push notification.
    #   Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This action uses the deep-linking features
    #     of the Android platform.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body of the notification message.
    #   @return [String]
    #
    # @!attribute [rw] consolidation_key
    #   An arbitrary string that indicates that multiple messages are
    #   logically the same and that Amazon Device Messaging (ADM) can drop
    #   previously enqueued messages in favor of this message.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The JSON data payload to use for the push notification, if the
    #   notification is a silent push notification. This payload is added to
    #   the data.pinpoint.jsonBody object of the notification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expires_after
    #   The amount of time, in seconds, that ADM should store the message if
    #   the recipient's device is offline. Amazon Pinpoint specifies this
    #   value in the expiresAfter parameter when it sends the notification
    #   message to ADM.
    #   @return [String]
    #
    # @!attribute [rw] icon_reference
    #   The icon image name of the asset saved in your app.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL of the large icon image to display in the content view of
    #   the push notification.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image to display in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] md5
    #   The base64-encoded, MD5 checksum of the value specified by the Data
    #   property. ADM uses the MD5 value to verify the integrity of the
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for the
    #   notification message. If specified, this value overrides all other
    #   content for the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Specifies whether the notification is a silent push notification,
    #   which is a push notification that doesn't display on a recipient's
    #   device. Silent push notifications can be used for cases such as
    #   updating an app's configuration or supporting phone home
    #   functionality.
    #   @return [Boolean]
    #
    # @!attribute [rw] small_image_icon_url
    #   The URL of the small icon image to display in the status bar and the
    #   content view of the push notification.
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   The sound to play when the recipient receives the push notification.
    #   You can use the default stream or specify the file name of a sound
    #   resource that's bundled in your app. On an Android platform, the
    #   sound file must reside in /res/raw/.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the notification message.
    #   You can override the default variables with individual address
    #   variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title
    #   The title to display above the notification message on the
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the recipient's default mobile browser, if a
    #   recipient taps the push notification and the value of the Action
    #   property is URL.
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

    # Specifies the status and settings of the APNs (Apple Push Notification
    # service) channel for an application.
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
    #   The bundle identifier that's assigned to your iOS app. This
    #   identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The APNs client certificate that you received from Apple, if you
    #   want Amazon Pinpoint to communicate with APNs by using an APNs
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that you want Amazon Pinpoint to
    #   use when authenticating with APNs, key or certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the APNs channel for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The private key for the APNs client certificate that you want Amazon
    #   Pinpoint to use to communicate with APNs.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The identifier that's assigned to your Apple developer account
    #   team. This identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The authentication key to use for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The key identifier that's assigned to your APNs signing key, if you
    #   want Amazon Pinpoint to communicate with APNs by using APNs tokens.
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

    # Provides information about the status and settings of the APNs (Apple
    # Push Notification service) channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the APNs channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the APNs channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that Amazon Pinpoint uses to
    #   authenticate with APNs for this channel, key or certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the APNs channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   Specifies whether the APNs channel is configured to communicate with
    #   APNs by using APNs tokens. To provide an authentication key for APNs
    #   tokens, set the TokenKey property of the channel.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the APNs channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the APNs channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the APNs channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the APNs channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the APNs channel, this value is APNS.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the APNs channel.
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

    # Specifies the settings for a one-time message that's sent directly to
    # an endpoint through the APNs (Apple Push Notification service)
    # channel.
    #
    # @note When making an API call, you may pass APNSMessage
    #   data as a hash:
    #
    #       {
    #         apns_push_type: "__string",
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
    # @!attribute [rw] apns_push_type
    #   The type of push notification to send. Valid values are:
    #
    #   * alert - For a standard notification that's displayed on
    #     recipients' devices and prompts a recipient to interact with the
    #     notification.
    #
    #   * background - For a silent notification that delivers content in
    #     the background and isn't displayed on recipients' devices.
    #
    #   * complication - For a notification that contains update information
    #     for an app’s complication timeline.
    #
    #   * fileprovider - For a notification that signals changes to a File
    #     Provider extension.
    #
    #   * mdm - For a notification that tells managed devices to contact the
    #     MDM server.
    #
    #   * voip - For a notification that provides information about an
    #     incoming VoIP call.
    #
    #   Amazon Pinpoint specifies this value in the apns-push-type request
    #   header when it sends the notification message to APNs. If you don't
    #   specify a value for this property, Amazon Pinpoint sets the value to
    #   alert or background automatically, based on the value that you
    #   specify for the SilentPush or RawContent property of the message.
    #
    #   For more information about the apns-push-type request header, see
    #   [Sending Notification Requests to APNs][1] on the Apple Developer
    #   website.
    #
    #
    #
    #   [1]: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to occur if the recipient taps the push notification.
    #   Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This setting uses the deep-linking features
    #     of the iOS platform.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] badge
    #   The key that indicates whether and how to modify the badge of your
    #   app's icon when the recipient receives the push notification. If
    #   this key isn't included in the dictionary, the badge doesn't
    #   change. To remove the badge, set this value to 0.
    #   @return [Integer]
    #
    # @!attribute [rw] body
    #   The body of the notification message.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The key that indicates the notification type for the push
    #   notification. This key is a value that's defined by the identifier
    #   property of one of your app's registered categories.
    #   @return [String]
    #
    # @!attribute [rw] collapse_id
    #   An arbitrary identifier that, if assigned to multiple messages, APNs
    #   uses to coalesce the messages into a single push notification
    #   instead of delivering each message individually. This value can't
    #   exceed 64 bytes.
    #
    #   Amazon Pinpoint specifies this value in the apns-collapse-id request
    #   header when it sends the notification message to APNs.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The JSON payload to use for a silent push notification. This payload
    #   is added to the data.pinpoint.jsonBody object of the notification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] media_url
    #   The URL of an image or video to display in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] preferred_authentication_method
    #   The authentication method that you want Amazon Pinpoint to use when
    #   authenticating with APNs, CERTIFICATE or TOKEN.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   para>5 - Low priority, the notification might be delayed, delivered
    #   as part of a group, or throttled.
    #
    #   /listitem> 3.  10 - High priority, the notification is sent immediately. This
    #       is the default value. A high priority notification should
    #       trigger an alert, play a sound, or badge your app's icon on the
    #       recipient's device.
    #
    #   /para> Amazon Pinpoint specifies this value in the apns-priority request
    #   header when it sends the notification message to APNs.
    #
    #   The equivalent values for Firebase Cloud Messaging (FCM), formerly
    #   Google Cloud Messaging (GCM), are normal, for 5, and high, for 10.
    #   If you specify an FCM value for this property, Amazon Pinpoint
    #   accepts and converts the value to the corresponding APNs value.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for the
    #   notification message. If specified, this value overrides all other
    #   content for the message.
    #
    #   <note markdown="1">If you specify the raw content of an APNs push notification, the
    #   message payload has to include the content-available key. The value
    #   of the content-available key has to be an integer, and can only be 0
    #   or 1. If you're sending a standard notification, set the value of
    #   content-available to 0. If you're sending a silent (background)
    #   notification, set the value of content-available to 1. Additionally,
    #   silent notification payloads can't include the alert, badge, or
    #   sound keys. For more information, see [Generating a Remote
    #   Notification][1] and [Pushing Background Updates to Your App][2] on
    #   the Apple Developer website.
    #
    #   </note>
    #
    #
    #
    #   [1]: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification
    #   [2]: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Specifies whether the notification is a silent push notification. A
    #   silent (or background) push notification isn't displayed on
    #   recipients' devices. You can use silent push notifications to make
    #   small updates to your app, or to display messages in an in-app
    #   message center.
    #
    #   Amazon Pinpoint uses this property to determine the correct value
    #   for the apns-push-type request header when it sends the notification
    #   message to APNs. If you specify a value of true for this property,
    #   Amazon Pinpoint sets the value for the apns-push-type header field
    #   to background.
    #
    #   <note markdown="1">If you specify the raw content of an APNs push notification, the
    #   message payload has to include the content-available key. For silent
    #   (background) notifications, set the value of content-available to 1.
    #   Additionally, the message payload for a silent notification can't
    #   include the alert, badge, or sound keys. For more information, see
    #   [Generating a Remote Notification][1] and [Pushing Background
    #   Updates to Your App][2] on the Apple Developer website.
    #
    #    Apple has indicated that they will throttle "excessive" background
    #   notifications based on current traffic volumes. To prevent your
    #   notifications being throttled, Apple recommends that you send no
    #   more than 3 silent push notifications to each recipient per hour.
    #
    #   </note>
    #
    #
    #
    #   [1]: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification
    #   [2]: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app
    #   @return [Boolean]
    #
    # @!attribute [rw] sound
    #   The key for the sound to play when the recipient receives the push
    #   notification. The value for this key is the name of a sound file in
    #   your app's main bundle or the Library/Sounds folder in your app's
    #   data container. If the sound file can't be found or you specify
    #   default for the value, the system plays the default alert sound.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the notification message.
    #   You can override these default variables with individual address
    #   variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] thread_id
    #   The key that represents your app-specific identifier for grouping
    #   notifications. If you provide a Notification Content app extension,
    #   you can use this value to group your notifications together.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live
    #   The amount of time, in seconds, that APNs should store and attempt
    #   to deliver the push notification, if the service is unable to
    #   deliver the notification the first time. If this value is 0, APNs
    #   treats the notification as if it expires immediately and the service
    #   doesn't store or try to deliver the notification again.
    #
    #   Amazon Pinpoint specifies this value in the apns-expiration request
    #   header when it sends the notification message to APNs.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The title to display above the notification message on the
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the recipient's default mobile browser, if a
    #   recipient taps the push notification and the value of the Action
    #   property is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSMessage AWS API Documentation
    #
    class APNSMessage < Struct.new(
      :apns_push_type,
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

    # Specifies channel-specific content and settings for a message template
    # that can be used in push notifications that are sent through the APNs
    # (Apple Push Notification service) channel.
    #
    # @note When making an API call, you may pass APNSPushNotificationTemplate
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         media_url: "__string",
    #         raw_content: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action to occur if a recipient taps a push notification that's
    #   based on the message template. Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This setting uses the deep-linking features
    #     of the iOS platform.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body to use in push notifications that are based on the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] media_url
    #   The URL of an image or video to display in push notifications that
    #   are based on the message template.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for push
    #   notifications that are based on the message template. If specified,
    #   this value overrides all other content for the message template.
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   The key for the sound to play when the recipient receives a push
    #   notification that's based on the message template. The value for
    #   this key is the name of a sound file in your app's main bundle or
    #   the Library/Sounds folder in your app's data container. If the
    #   sound file can't be found or you specify default for the value, the
    #   system plays the default alert sound.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title to use in push notifications that are based on the message
    #   template. This title appears above the notification message on a
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the recipient's default mobile browser, if a
    #   recipient taps a push notification that's based on the message
    #   template and the value of the Action property is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/APNSPushNotificationTemplate AWS API Documentation
    #
    class APNSPushNotificationTemplate < Struct.new(
      :action,
      :body,
      :media_url,
      :raw_content,
      :sound,
      :title,
      :url)
      include Aws::Structure
    end

    # Specifies the status and settings of the APNs (Apple Push Notification
    # service) sandbox channel for an application.
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
    #   The bundle identifier that's assigned to your iOS app. This
    #   identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The APNs client certificate that you received from Apple, if you
    #   want Amazon Pinpoint to communicate with the APNs sandbox
    #   environment by using an APNs certificate.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that you want Amazon Pinpoint to
    #   use when authenticating with the APNs sandbox environment, key or
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the APNs sandbox channel for the
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The private key for the APNs client certificate that you want Amazon
    #   Pinpoint to use to communicate with the APNs sandbox environment.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The identifier that's assigned to your Apple developer account
    #   team. This identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The authentication key to use for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The key identifier that's assigned to your APNs signing key, if you
    #   want Amazon Pinpoint to communicate with the APNs sandbox
    #   environment by using APNs tokens.
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

    # Provides information about the status and settings of the APNs (Apple
    # Push Notification service) sandbox channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the APNs sandbox
    #   channel applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the APNs sandbox channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that Amazon Pinpoint uses to
    #   authenticate with the APNs sandbox environment for this channel, key
    #   or certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the APNs sandbox channel is enabled for the
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   Specifies whether the APNs sandbox channel is configured to
    #   communicate with APNs by using APNs tokens. To provide an
    #   authentication key for APNs tokens, set the TokenKey property of the
    #   channel.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the APNs sandbox channel. This
    #   property is retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the APNs sandbox channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the APNs sandbox channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the APNs sandbox channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the APNs sandbox channel, this value is APNS\_SANDBOX.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the APNs sandbox channel.
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

    # Specifies the status and settings of the APNs (Apple Push Notification
    # service) VoIP channel for an application.
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
    #   The bundle identifier that's assigned to your iOS app. This
    #   identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The APNs client certificate that you received from Apple, if you
    #   want Amazon Pinpoint to communicate with APNs by using an APNs
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that you want Amazon Pinpoint to
    #   use when authenticating with APNs, key or certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the APNs VoIP channel for the
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The private key for the APNs client certificate that you want Amazon
    #   Pinpoint to use to communicate with APNs.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The identifier that's assigned to your Apple developer account
    #   team. This identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The authentication key to use for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The key identifier that's assigned to your APNs signing key, if you
    #   want Amazon Pinpoint to communicate with APNs by using APNs tokens.
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

    # Provides information about the status and settings of the APNs (Apple
    # Push Notification service) VoIP channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the APNs VoIP channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the APNs VoIP channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that Amazon Pinpoint uses to
    #   authenticate with APNs for this channel, key or certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the APNs VoIP channel is enabled for the
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   Specifies whether the APNs VoIP channel is configured to communicate
    #   with APNs by using APNs tokens. To provide an authentication key for
    #   APNs tokens, set the TokenKey property of the channel.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the APNs VoIP channel. This property
    #   is retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the APNs VoIP channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the APNs VoIP channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the APNs VoIP channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the APNs VoIP channel, this value is APNS\_VOIP.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the APNs VoIP channel.
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

    # Specifies the status and settings of the APNs (Apple Push Notification
    # service) VoIP sandbox channel for an application.
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
    #   The bundle identifier that's assigned to your iOS app. This
    #   identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The APNs client certificate that you received from Apple, if you
    #   want Amazon Pinpoint to communicate with the APNs sandbox
    #   environment by using an APNs certificate.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that you want Amazon Pinpoint to
    #   use when authenticating with the APNs sandbox environment for this
    #   channel, key or certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the APNs VoIP sandbox channel is enabled for the
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_key
    #   The private key for the APNs client certificate that you want Amazon
    #   Pinpoint to use to communicate with the APNs sandbox environment.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The identifier that's assigned to your Apple developer account
    #   team. This identifier is used for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key
    #   The authentication key to use for APNs tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_key_id
    #   The key identifier that's assigned to your APNs signing key, if you
    #   want Amazon Pinpoint to communicate with the APNs sandbox
    #   environment by using APNs tokens.
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

    # Provides information about the status and settings of the APNs (Apple
    # Push Notification service) VoIP sandbox channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the APNs VoIP sandbox
    #   channel applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the APNs VoIP sandbox channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] default_authentication_method
    #   The default authentication method that Amazon Pinpoint uses to
    #   authenticate with the APNs sandbox environment for this channel, key
    #   or certificate.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the APNs VoIP sandbox channel is enabled for the
    #   application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_token_key
    #   Specifies whether the APNs VoIP sandbox channel is configured to
    #   communicate with APNs by using APNs tokens. To provide an
    #   authentication key for APNs tokens, set the TokenKey property of the
    #   channel.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the APNs VoIP sandbox channel. This
    #   property is retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the APNs VoIP sandbox channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the APNs VoIP sandbox channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the APNs VoIP sandbox channel was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the APNs VoIP sandbox channel, this value is APNS\_VOIP\_SANDBOX.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the APNs VoIP sandbox channel.
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

    # Provides information about the activities that were performed by a
    # campaign.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each activity that was performed by
    #   the campaign.
    #   @return [Array<Types::ActivityResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ActivitiesResponse AWS API Documentation
    #
    class ActivitiesResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Specifies the configuration and other settings for an activity in a
    # journey.
    #
    # @note When making an API call, you may pass Activity
    #   data as a hash:
    #
    #       {
    #         custom: {
    #           delivery_uri: "__string",
    #           endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #           message_config: {
    #             data: "__string",
    #           },
    #           next_activity: "__string",
    #           template_name: "__string",
    #           template_version: "__string",
    #         },
    #         conditional_split: {
    #           condition: {
    #             conditions: [
    #               {
    #                 event_condition: {
    #                   dimensions: { # required
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     event_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                   },
    #                   message_activity: "__string",
    #                 },
    #                 segment_condition: {
    #                   segment_id: "__string", # required
    #                 },
    #                 segment_dimensions: {
    #                   attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   behavior: {
    #                     recency: {
    #                       duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                       recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                     },
    #                   },
    #                   demographic: {
    #                     app_version: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     channel: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     device_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     make: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     model: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     platform: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   location: {
    #                     country: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     gps_point: {
    #                       coordinates: { # required
    #                         latitude: 1.0, # required
    #                         longitude: 1.0, # required
    #                       },
    #                       range_in_kilometers: 1.0,
    #                     },
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string", # required
    #                       value: 1.0, # required
    #                     },
    #                   },
    #                   user_attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #             operator: "ALL", # accepts ALL, ANY
    #           },
    #           evaluation_wait_time: {
    #             wait_for: "__string",
    #             wait_until: "__string",
    #           },
    #           false_activity: "__string",
    #           true_activity: "__string",
    #         },
    #         description: "__string",
    #         email: {
    #           message_config: {
    #             from_address: "__string",
    #           },
    #           next_activity: "__string",
    #           template_name: "__string",
    #           template_version: "__string",
    #         },
    #         holdout: {
    #           next_activity: "__string",
    #           percentage: 1, # required
    #         },
    #         multi_condition: {
    #           branches: [
    #             {
    #               condition: {
    #                 event_condition: {
    #                   dimensions: { # required
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     event_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                   },
    #                   message_activity: "__string",
    #                 },
    #                 segment_condition: {
    #                   segment_id: "__string", # required
    #                 },
    #                 segment_dimensions: {
    #                   attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   behavior: {
    #                     recency: {
    #                       duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                       recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                     },
    #                   },
    #                   demographic: {
    #                     app_version: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     channel: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     device_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     make: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     model: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     platform: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   location: {
    #                     country: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     gps_point: {
    #                       coordinates: { # required
    #                         latitude: 1.0, # required
    #                         longitude: 1.0, # required
    #                       },
    #                       range_in_kilometers: 1.0,
    #                     },
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string", # required
    #                       value: 1.0, # required
    #                     },
    #                   },
    #                   user_attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                 },
    #               },
    #               next_activity: "__string",
    #             },
    #           ],
    #           default_activity: "__string",
    #           evaluation_wait_time: {
    #             wait_for: "__string",
    #             wait_until: "__string",
    #           },
    #         },
    #         push: {
    #           message_config: {
    #             time_to_live: "__string",
    #           },
    #           next_activity: "__string",
    #           template_name: "__string",
    #           template_version: "__string",
    #         },
    #         random_split: {
    #           branches: [
    #             {
    #               next_activity: "__string",
    #               percentage: 1,
    #             },
    #           ],
    #         },
    #         sms: {
    #           message_config: {
    #             message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #             sender_id: "__string",
    #           },
    #           next_activity: "__string",
    #           template_name: "__string",
    #           template_version: "__string",
    #         },
    #         wait: {
    #           next_activity: "__string",
    #           wait_time: {
    #             wait_for: "__string",
    #             wait_until: "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] custom
    #   The settings for a custom message activity. This type of activity
    #   calls an AWS Lambda function or web hook that sends messages to
    #   participants.
    #   @return [Types::CustomMessageActivity]
    #
    # @!attribute [rw] conditional_split
    #   The settings for a yes/no split activity. This type of activity
    #   sends participants down one of two paths in a journey, based on
    #   conditions that you specify.
    #   @return [Types::ConditionalSplitActivity]
    #
    # @!attribute [rw] description
    #   The custom description of the activity.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The settings for an email activity. This type of activity sends an
    #   email message to participants.
    #   @return [Types::EmailMessageActivity]
    #
    # @!attribute [rw] holdout
    #   The settings for a holdout activity. This type of activity stops a
    #   journey for a specified percentage of participants.
    #   @return [Types::HoldoutActivity]
    #
    # @!attribute [rw] multi_condition
    #   The settings for a multivariate split activity. This type of
    #   activity sends participants down one of as many as five paths
    #   (including a default *Else* path) in a journey, based on conditions
    #   that you specify.
    #   @return [Types::MultiConditionalSplitActivity]
    #
    # @!attribute [rw] push
    #   The settings for a push notification activity. This type of activity
    #   sends a push notification to participants.
    #   @return [Types::PushMessageActivity]
    #
    # @!attribute [rw] random_split
    #   The settings for a random split activity. This type of activity
    #   randomly sends specified percentages of participants down one of as
    #   many as five paths in a journey, based on conditions that you
    #   specify.
    #   @return [Types::RandomSplitActivity]
    #
    # @!attribute [rw] sms
    #   The settings for an SMS activity. This type of activity sends a text
    #   message to participants.
    #   @return [Types::SMSMessageActivity]
    #
    # @!attribute [rw] wait
    #   The settings for a wait activity. This type of activity waits for a
    #   certain amount of time or until a specific date and time before
    #   moving participants to the next activity in a journey.
    #   @return [Types::WaitActivity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Activity AWS API Documentation
    #
    class Activity < Struct.new(
      :custom,
      :conditional_split,
      :description,
      :email,
      :holdout,
      :multi_condition,
      :push,
      :random_split,
      :sms,
      :wait)
      include Aws::Structure
    end

    # Provides information about an activity that was performed by a
    # campaign.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the campaign applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   The unique identifier for the campaign that the activity applies to.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The actual time, in ISO 8601 format, when the activity was marked
    #   CANCELLED or COMPLETED.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the activity.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   Specifies whether the activity succeeded. Possible values are
    #   SUCCESS and FAIL.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start
    #   The scheduled start time, in ISO 8601 format, for the activity.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The actual start time, in ISO 8601 format, of the activity.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current status of the activity. Possible values are: PENDING,
    #   INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.
    #   @return [String]
    #
    # @!attribute [rw] successful_endpoint_count
    #   The total number of endpoints that the campaign successfully
    #   delivered messages to.
    #   @return [Integer]
    #
    # @!attribute [rw] timezones_completed_count
    #   The total number of time zones that were completed.
    #   @return [Integer]
    #
    # @!attribute [rw] timezones_total_count
    #   The total number of unique time zones that are in the segment for
    #   the campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] total_endpoint_count
    #   The total number of endpoints that the campaign attempted to deliver
    #   messages to.
    #   @return [Integer]
    #
    # @!attribute [rw] treatment_id
    #   The unique identifier for the campaign treatment that the activity
    #   applies to. A treatment is a variation of a campaign that's used
    #   for A/B testing of a campaign.
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

    # Specifies address-based configuration settings for a message that's
    # sent directly to an endpoint.
    #
    # @note When making an API call, you may pass AddressConfiguration
    #   data as a hash:
    #
    #       {
    #         body_override: "__string",
    #         channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #   The message body to use instead of the default message body. This
    #   value overrides the default message body.
    #   @return [String]
    #
    # @!attribute [rw] channel_type
    #   The channel to use when sending the message.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   An object that maps custom attributes to attributes for the address
    #   and is attached to the message. Attribute names are case sensitive.
    #
    #   For a push notification, this payload is added to the data.pinpoint
    #   object. For an email or text message, this payload is added to
    #   email/SMS delivery receipt event attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for the
    #   message. If specified, this value overrides all other values for the
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   A map of the message variables to merge with the variables specified
    #   by properties of the DefaultMessage object. The variables specified
    #   in this map take precedence over all other variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title_override
    #   The message title to use instead of the default message title. This
    #   value overrides the default message title.
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

    # Specifies channel-specific content and settings for a message template
    # that can be used in push notifications that are sent through the ADM
    # (Amazon Device Messaging), Baidu (Baidu Cloud Push), or GCM (Firebase
    # Cloud Messaging, formerly Google Cloud Messaging) channel.
    #
    # @note When making an API call, you may pass AndroidPushNotificationTemplate
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         image_icon_url: "__string",
    #         image_url: "__string",
    #         raw_content: "__string",
    #         small_image_icon_url: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action to occur if a recipient taps a push notification that's
    #   based on the message template. Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This action uses the deep-linking features
    #     of the Android platform.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body to use in a push notification that's based on the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL of the large icon image to display in the content view of a
    #   push notification that's based on the message template.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image to display in a push notification that's based
    #   on the message template.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for a push
    #   notification that's based on the message template. If specified,
    #   this value overrides all other content for the message template.
    #   @return [String]
    #
    # @!attribute [rw] small_image_icon_url
    #   The URL of the small icon image to display in the status bar and the
    #   content view of a push notification that's based on the message
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   The sound to play when a recipient receives a push notification
    #   that's based on the message template. You can use the default
    #   stream or specify the file name of a sound resource that's bundled
    #   in your app. On an Android platform, the sound file must reside in
    #   /res/raw/.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title to use in a push notification that's based on the message
    #   template. This title appears above the notification message on a
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in a recipient's default mobile browser, if a
    #   recipient taps a push notification that's based on the message
    #   template and the value of the Action property is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/AndroidPushNotificationTemplate AWS API Documentation
    #
    class AndroidPushNotificationTemplate < Struct.new(
      :action,
      :body,
      :image_icon_url,
      :image_url,
      :raw_content,
      :small_image_icon_url,
      :sound,
      :title,
      :url)
      include Aws::Structure
    end

    # Provides the results of a query that retrieved the data for a standard
    # metric that applies to an application, and provides information about
    # that query.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the metric applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The last date and time of the date range that was used to filter the
    #   query results, in extended ISO 8601 format. The date range is
    #   inclusive.
    #   @return [Time]
    #
    # @!attribute [rw] kpi_name
    #   The name of the metric, also referred to as a *key performance
    #   indicator (KPI)*, that the data was retrieved for. This value
    #   describes the associated metric and consists of two or more terms,
    #   which are comprised of lowercase alphanumeric characters, separated
    #   by a hyphen. For a list of possible values, see the [Amazon Pinpoint
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] kpi_result
    #   An array of objects that contains the results of the query. Each
    #   object contains the value for the metric and metadata about that
    #   value.
    #   @return [Types::BaseKpiResult]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null for the
    #   Application Metrics resource because the resource returns all
    #   results in a single page.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The first date and time of the date range that was used to filter
    #   the query results, in extended ISO 8601 format. The date range is
    #   inclusive.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ApplicationDateRangeKpiResponse AWS API Documentation
    #
    class ApplicationDateRangeKpiResponse < Struct.new(
      :application_id,
      :end_time,
      :kpi_name,
      :kpi_result,
      :next_token,
      :start_time)
      include Aws::Structure
    end

    # Provides information about an application.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the application. This identifier is
    #   displayed as the **Project ID** on the Amazon Pinpoint console.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the application. This name is displayed as the
    #   **Project name** on the Amazon Pinpoint console.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that identifies the tags
    #   that are associated with the application. Each tag consists of a
    #   required tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ApplicationResponse AWS API Documentation
    #
    class ApplicationResponse < Struct.new(
      :arn,
      :id,
      :name,
      :tags)
      include Aws::Structure
    end

    # Provides information about an application, including the default
    # settings for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application. This identifier is
    #   displayed as the **Project ID** on the Amazon Pinpoint console.
    #   @return [String]
    #
    # @!attribute [rw] campaign_hook
    #   The settings for the AWS Lambda function to invoke by default as a
    #   code hook for campaigns in the application. You can use this hook to
    #   customize segments that are used by campaigns in the application.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time, in ISO 8601 format, when the application's
    #   settings were last modified.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The default sending limits for campaigns and journeys in the
    #   application.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] quiet_time
    #   The default quiet time for campaigns and journeys in the
    #   application. Quiet time is a specific time range when messages
    #   aren't sent to endpoints, if all the following conditions are met:
    #
    #   * The EndpointDemographic.Timezone property of the endpoint is set
    #     to a valid value.
    #
    #   * The current time in the endpoint's time zone is later than or
    #     equal to the time specified by the QuietTime.Start property for
    #     the application (or a campaign or journey that has custom quiet
    #     time settings).
    #
    #   * The current time in the endpoint's time zone is earlier than or
    #     equal to the time specified by the QuietTime.End property for the
    #     application (or a campaign or journey that has custom quiet time
    #     settings).
    #
    #   If any of the preceding conditions isn't met, the endpoint will
    #   receive messages from a campaign or journey, even if quiet time is
    #   enabled.
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

    # Provides information about all of your applications.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each application that was returned.
    #   @return [Array<Types::ApplicationResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ApplicationsResponse AWS API Documentation
    #
    class ApplicationsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Specifies attribute-based criteria for including or excluding
    # endpoints from a segment.
    #
    # @note When making an API call, you may pass AttributeDimension
    #   data as a hash:
    #
    #       {
    #         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #         values: ["__string"], # required
    #       }
    #
    # @!attribute [rw] attribute_type
    #   The type of segment dimension to use. Valid values are: INCLUSIVE,
    #   endpoints that match the criteria are included in the segment; and,
    #   EXCLUSIVE, endpoints that match the criteria are excluded from the
    #   segment.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The criteria values to use for the segment dimension. Depending on
    #   the value of the AttributeType property, endpoints are included or
    #   excluded from the segment if their attribute values match the
    #   criteria values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/AttributeDimension AWS API Documentation
    #
    class AttributeDimension < Struct.new(
      :attribute_type,
      :values)
      include Aws::Structure
    end

    # Provides information about the type and the names of attributes that
    # were removed from all the endpoints that are associated with an
    # application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of attribute or attributes that were removed from the
    #   endpoints. Valid values are:
    #
    #   * endpoint-custom-attributes - Custom attributes that describe
    #     endpoints.
    #
    #   * endpoint-metric-attributes - Custom metrics that your app reports
    #     to Amazon Pinpoint for endpoints.
    #
    #   * endpoint-user-attributes - Custom attributes that describe users.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   An array that specifies the names of the attributes that were
    #   removed from the endpoints.
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

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Specifies the status and settings of the Baidu (Baidu Cloud Push)
    # channel for an application.
    #
    # @note When making an API call, you may pass BaiduChannelRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "__string", # required
    #         enabled: false,
    #         secret_key: "__string", # required
    #       }
    #
    # @!attribute [rw] api_key
    #   The API key that you received from the Baidu Cloud Push service to
    #   communicate with the service.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the Baidu channel for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] secret_key
    #   The secret key that you received from the Baidu Cloud Push service
    #   to communicate with the service.
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

    # Provides information about the status and settings of the Baidu (Baidu
    # Cloud Push) channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the Baidu channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the Baidu channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   The API key that you received from the Baidu Cloud Push service to
    #   communicate with the service.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the Baidu channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the Baidu channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the Baidu channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the Baidu channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the Baidu channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the Baidu channel, this value is BAIDU.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the Baidu channel.
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

    # Specifies the settings for a one-time message that's sent directly to
    # an endpoint through the Baidu (Baidu Cloud Push) channel.
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
    #   The action to occur if the recipient taps the push notification.
    #   Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This action uses the deep-linking features
    #     of the Android platform.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body of the notification message.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The JSON data payload to use for the push notification, if the
    #   notification is a silent push notification. This payload is added to
    #   the data.pinpoint.jsonBody object of the notification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] icon_reference
    #   The icon image name of the asset saved in your app.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL of the large icon image to display in the content view of
    #   the push notification.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image to display in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for the
    #   notification message. If specified, this value overrides all other
    #   content for the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Specifies whether the notification is a silent push notification,
    #   which is a push notification that doesn't display on a recipient's
    #   device. Silent push notifications can be used for cases such as
    #   updating an app's configuration or supporting phone home
    #   functionality.
    #   @return [Boolean]
    #
    # @!attribute [rw] small_image_icon_url
    #   The URL of the small icon image to display in the status bar and the
    #   content view of the push notification.
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   The sound to play when the recipient receives the push notification.
    #   You can use the default stream or specify the file name of a sound
    #   resource that's bundled in your app. On an Android platform, the
    #   sound file must reside in /res/raw/.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the notification message.
    #   You can override the default variables with individual address
    #   variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] time_to_live
    #   The amount of time, in seconds, that the Baidu Cloud Push service
    #   should store the message if the recipient's device is offline. The
    #   default value and maximum supported time is 604,800 seconds (7
    #   days).
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The title to display above the notification message on the
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the recipient's default mobile browser, if a
    #   recipient taps the push notification and the value of the Action
    #   property is URL.
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

    # Provides the results of a query that retrieved the data for a standard
    # metric that applies to an application, campaign, or journey.
    #
    # @!attribute [rw] rows
    #   An array of objects that provides the results of a query that
    #   retrieved the data for a standard metric that applies to an
    #   application, campaign, or journey.
    #   @return [Array<Types::ResultRow>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/BaseKpiResult AWS API Documentation
    #
    class BaseKpiResult < Struct.new(
      :rows)
      include Aws::Structure
    end

    # Specifies the contents of a message that's sent through a custom
    # channel to recipients of a campaign.
    #
    # @note When making an API call, you may pass CampaignCustomMessage
    #   data as a hash:
    #
    #       {
    #         data: "__string",
    #       }
    #
    # @!attribute [rw] data
    #   The raw, JSON-formatted string to use as the payload for the
    #   message. The maximum size is 5 KB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignCustomMessage AWS API Documentation
    #
    class CampaignCustomMessage < Struct.new(
      :data)
      include Aws::Structure
    end

    # Provides the results of a query that retrieved the data for a standard
    # metric that applies to a campaign, and provides information about that
    # query.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the metric applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   The unique identifier for the campaign that the metric applies to.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The last date and time of the date range that was used to filter the
    #   query results, in extended ISO 8601 format. The date range is
    #   inclusive.
    #   @return [Time]
    #
    # @!attribute [rw] kpi_name
    #   The name of the metric, also referred to as a *key performance
    #   indicator (KPI)*, that the data was retrieved for. This value
    #   describes the associated metric and consists of two or more terms,
    #   which are comprised of lowercase alphanumeric characters, separated
    #   by a hyphen. For a list of possible values, see the [Amazon Pinpoint
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] kpi_result
    #   An array of objects that contains the results of the query. Each
    #   object contains the value for the metric and metadata about that
    #   value.
    #   @return [Types::BaseKpiResult]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null for the Campaign
    #   Metrics resource because the resource returns all results in a
    #   single page.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The first date and time of the date range that was used to filter
    #   the query results, in extended ISO 8601 format. The date range is
    #   inclusive.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignDateRangeKpiResponse AWS API Documentation
    #
    class CampaignDateRangeKpiResponse < Struct.new(
      :application_id,
      :campaign_id,
      :end_time,
      :kpi_name,
      :kpi_result,
      :next_token,
      :start_time)
      include Aws::Structure
    end

    # Specifies the content and "From" address for an email message
    # that's sent to recipients of a campaign.
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
    #   The body of the email for recipients whose email clients don't
    #   render HTML content.
    #   @return [String]
    #
    # @!attribute [rw] from_address
    #   The verified email address to send the email from. The default
    #   address is the FromAddress specified for the email channel for the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] html_body
    #   The body of the email, in HTML format, for recipients whose email
    #   clients render HTML content.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The subject line, or title, of the email.
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

    # Specifies the settings for events that cause a campaign to be sent.
    #
    # @note When making an API call, you may pass CampaignEventFilter
    #   data as a hash:
    #
    #       {
    #         dimensions: { # required
    #           attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #           },
    #           event_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           metrics: {
    #             "__string" => {
    #               comparison_operator: "__string", # required
    #               value: 1.0, # required
    #             },
    #           },
    #         },
    #         filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #       }
    #
    # @!attribute [rw] dimensions
    #   The dimension settings of the event filter for the campaign.
    #   @return [Types::EventDimensions]
    #
    # @!attribute [rw] filter_type
    #   The type of event that causes the campaign to be sent. Valid values
    #   are: SYSTEM, sends the campaign when a system event occurs; and,
    #   ENDPOINT, sends the campaign when an endpoint event (<link
    #   linkend="apps-application-id-events" />
    #
    #   Events</link> resource) occurs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignEventFilter AWS API Documentation
    #
    class CampaignEventFilter < Struct.new(
      :dimensions,
      :filter_type)
      include Aws::Structure
    end

    # Specifies settings for invoking an AWS Lambda function that customizes
    # a segment for a campaign.
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
    #   The name or Amazon Resource Name (ARN) of the AWS Lambda function
    #   that Amazon Pinpoint invokes to customize a segment for a campaign.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode that Amazon Pinpoint uses to invoke the AWS Lambda
    #   function. Possible values are:
    #
    #   * FILTER - Invoke the function to customize the segment that's used
    #     by a campaign.
    #
    #   * DELIVERY - (Deprecated) Previously, invoked the function to send a
    #     campaign through a custom channel. This functionality is not
    #     supported anymore. To send a campaign through a custom channel,
    #     use the CustomDeliveryConfiguration and CampaignCustomMessage
    #     objects of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] web_url
    #   The web URL that Amazon Pinpoint calls to invoke the AWS Lambda
    #   function over HTTPS.
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

    # For a campaign, specifies limits on the messages that the campaign can
    # send. For an application, specifies the default limits for messages
    # that campaigns and journeys in the application can send.
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
    #   The maximum number of messages that a campaign can send to a single
    #   endpoint during a 24-hour period. For an application, this value
    #   specifies the default limit for the number of messages that
    #   campaigns and journeys can send to a single endpoint during a
    #   24-hour period. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_duration
    #   The maximum amount of time, in seconds, that a campaign can attempt
    #   to deliver a message after the scheduled start time for the
    #   campaign. The minimum value is 60 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] messages_per_second
    #   The maximum number of messages that a campaign can send each second.
    #   For an application, this value specifies the default limit for the
    #   number of messages that campaigns and journeys can send each second.
    #   The minimum value is 50. The maximum value is 20,000.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The maximum number of messages that a campaign can send to a single
    #   endpoint during the course of the campaign. If a campaign recurs,
    #   this setting applies to all runs of the campaign. The maximum value
    #   is 100.
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

    # Provides information about the status, configuration, and other
    # settings for a campaign.
    #
    # @!attribute [rw] additional_treatments
    #   An array of responses, one for each treatment that you defined for
    #   the campaign, in addition to the default treatment.
    #   @return [Array<Types::TreatmentResource>]
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the campaign applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the campaign was created.
    #   @return [String]
    #
    # @!attribute [rw] custom_delivery_configuration
    #   The delivery configuration settings for sending the campaign through
    #   a custom channel.
    #   @return [Types::CustomDeliveryConfiguration]
    #
    # @!attribute [rw] default_state
    #   The current status of the campaign's default treatment. This value
    #   exists only for campaigns that have more than one treatment.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] description
    #   The custom description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] holdout_percent
    #   The allocated percentage of users (segment members) who shouldn't
    #   receive messages from the campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] hook
    #   The settings for the AWS Lambda function to use as a code hook for
    #   the campaign. You can use this hook to customize the segment that's
    #   used by the campaign.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] id
    #   The unique identifier for the campaign.
    #   @return [String]
    #
    # @!attribute [rw] is_paused
    #   Specifies whether the campaign is paused. A paused campaign doesn't
    #   run unless you resume it by changing this value to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the campaign was last modified.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The messaging limits for the campaign.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings for the campaign.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule settings for the campaign.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] segment_id
    #   The unique identifier for the segment that's associated with the
    #   campaign.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version number of the segment that's associated with the
    #   campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current status of the campaign.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that identifies the tags
    #   that are associated with the campaign. Each tag consists of a
    #   required tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_configuration
    #   The message template that’s used for the campaign.
    #   @return [Types::TemplateConfiguration]
    #
    # @!attribute [rw] treatment_description
    #   The custom description of the default treatment for the campaign.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of the default treatment for the campaign, if the
    #   campaign has multiple treatments. A *treatment* is a variation of a
    #   campaign that's used for A/B testing.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the campaign.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignResponse AWS API Documentation
    #
    class CampaignResponse < Struct.new(
      :additional_treatments,
      :application_id,
      :arn,
      :creation_date,
      :custom_delivery_configuration,
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
      :tags,
      :template_configuration,
      :treatment_description,
      :treatment_name,
      :version)
      include Aws::Structure
    end

    # Specifies the content and settings for an SMS message that's sent to
    # recipients of a campaign.
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
    #   The body of the SMS message.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The SMS message type. Valid values are TRANSACTIONAL (for messages
    #   that are critical or time-sensitive, such as a one-time passwords)
    #   and PROMOTIONAL (for messsages that aren't critical or
    #   time-sensitive, such as marketing messages).
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The sender ID to display on recipients' devices when they receive
    #   the SMS message.
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

    # Provides information about the status of a campaign.
    #
    # @!attribute [rw] campaign_status
    #   The current status of the campaign, or the current status of a
    #   treatment that belongs to an A/B test campaign.
    #
    #   If a campaign uses A/B testing, the campaign has a status of
    #   COMPLETED only if all campaign treatments have a status of
    #   COMPLETED. If you delete the segment that's associated with a
    #   campaign, the campaign fails and has a status of DELETED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignState AWS API Documentation
    #
    class CampaignState < Struct.new(
      :campaign_status)
      include Aws::Structure
    end

    # Provides information about the configuration and other settings for
    # all the campaigns that are associated with an application.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each campaign that's associated with
    #   the application.
    #   @return [Array<Types::CampaignResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CampaignsResponse AWS API Documentation
    #
    class CampaignsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Provides information about the general settings and status of a
    # channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time, in ISO 8601 format, when the channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time, in ISO 8601 format, when the channel was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the channel.
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

    # Provides information about the general settings and status of all
    # channels for an application, including channels that aren't enabled
    # for the application.
    #
    # @!attribute [rw] channels
    #   A map that contains a multipart response for each channel. For each
    #   item in this object, the ChannelType is the key and the Channel is
    #   the value.
    #   @return [Hash<String,Types::ChannelResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ChannelsResponse AWS API Documentation
    #
    class ChannelsResponse < Struct.new(
      :channels)
      include Aws::Structure
    end

    # Specifies the conditions to evaluate for an activity in a journey, and
    # how to evaluate those conditions.
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         conditions: [
    #           {
    #             event_condition: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #               },
    #               message_activity: "__string",
    #             },
    #             segment_condition: {
    #               segment_id: "__string", # required
    #             },
    #             segment_dimensions: {
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #               },
    #               behavior: {
    #                 recency: {
    #                   duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                   recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                 },
    #               },
    #               demographic: {
    #                 app_version: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 channel: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 device_type: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 make: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 model: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 platform: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #               },
    #               location: {
    #                 country: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 gps_point: {
    #                   coordinates: { # required
    #                     latitude: 1.0, # required
    #                     longitude: 1.0, # required
    #                   },
    #                   range_in_kilometers: 1.0,
    #                 },
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 },
    #               },
    #               user_attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         operator: "ALL", # accepts ALL, ANY
    #       }
    #
    # @!attribute [rw] conditions
    #   The conditions to evaluate for the activity.
    #   @return [Array<Types::SimpleCondition>]
    #
    # @!attribute [rw] operator
    #   Specifies how to handle multiple conditions for the activity. For
    #   example, if you specify two conditions for an activity, whether both
    #   or only one of the conditions must be met for the activity to be
    #   performed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :conditions,
      :operator)
      include Aws::Structure
    end

    # Specifies the settings for a yes/no split activity in a journey. This
    # type of activity sends participants down one of two paths in a
    # journey, based on conditions that you specify.
    #
    # @note When making an API call, you may pass ConditionalSplitActivity
    #   data as a hash:
    #
    #       {
    #         condition: {
    #           conditions: [
    #             {
    #               event_condition: {
    #                 dimensions: { # required
    #                   attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   event_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string", # required
    #                       value: 1.0, # required
    #                     },
    #                   },
    #                 },
    #                 message_activity: "__string",
    #               },
    #               segment_condition: {
    #                 segment_id: "__string", # required
    #               },
    #               segment_dimensions: {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                     recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                   },
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0,
    #                   },
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #           operator: "ALL", # accepts ALL, ANY
    #         },
    #         evaluation_wait_time: {
    #           wait_for: "__string",
    #           wait_until: "__string",
    #         },
    #         false_activity: "__string",
    #         true_activity: "__string",
    #       }
    #
    # @!attribute [rw] condition
    #   The conditions that define the paths for the activity, and the
    #   relationship between the conditions.
    #   @return [Types::Condition]
    #
    # @!attribute [rw] evaluation_wait_time
    #   The amount of time to wait before determining whether the conditions
    #   are met, or the date and time when Amazon Pinpoint determines
    #   whether the conditions are met.
    #   @return [Types::WaitTime]
    #
    # @!attribute [rw] false_activity
    #   The unique identifier for the activity to perform if the conditions
    #   aren't met.
    #   @return [String]
    #
    # @!attribute [rw] true_activity
    #   The unique identifier for the activity to perform if the conditions
    #   are met.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ConditionalSplitActivity AWS API Documentation
    #
    class ConditionalSplitActivity < Struct.new(
      :condition,
      :evaluation_wait_time,
      :false_activity,
      :true_activity)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAppRequest
    #   data as a hash:
    #
    #       {
    #         create_application_request: { # required
    #           name: "__string", # required
    #           tags: {
    #             "__string" => "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] create_application_request
    #   Specifies the display name of an application and the tags to
    #   associate with the application.
    #   @return [Types::CreateApplicationRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :create_application_request)
      include Aws::Structure
    end

    # @!attribute [rw] application_response
    #   Provides information about an application.
    #   @return [Types::ApplicationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateAppResponse AWS API Documentation
    #
    class CreateAppResponse < Struct.new(
      :application_response)
      include Aws::Structure
    end

    # Specifies the display name of an application and the tags to associate
    # with the application.
    #
    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The display name of the application. This name is displayed as the
    #   **Project name** on the Amazon Pinpoint console.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags to
    #   associate with the application. Each tag consists of a required tag
    #   key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :name,
      :tags)
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
    #               custom_delivery_configuration: {
    #                 delivery_uri: "__string", # required
    #                 endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #               },
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
    #                 custom_message: {
    #                   data: "__string",
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
    #                 event_filter: {
    #                   dimensions: { # required
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     event_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                   },
    #                   filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #                 },
    #                 frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string",
    #                 },
    #                 start_time: "__string", # required
    #                 timezone: "__string",
    #               },
    #               size_percent: 1, # required
    #               template_configuration: {
    #                 email_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #                 push_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #                 sms_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #                 voice_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #               },
    #               treatment_description: "__string",
    #               treatment_name: "__string",
    #             },
    #           ],
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #           },
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
    #             custom_message: {
    #               data: "__string",
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
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #               },
    #               filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #             },
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string",
    #           },
    #           segment_id: "__string",
    #           segment_version: 1,
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #           },
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_campaign_request
    #   Specifies the configuration and other settings for a campaign.
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
    #   Provides information about the status, configuration, and other
    #   settings for a campaign.
    #   @return [Types::CampaignResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateCampaignResponse AWS API Documentation
    #
    class CreateCampaignResponse < Struct.new(
      :campaign_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         email_template_request: { # required
    #           default_substitutions: "__string",
    #           html_part: "__string",
    #           recommender_id: "__string",
    #           subject: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #           text_part: "__string",
    #         },
    #         template_name: "__string", # required
    #       }
    #
    # @!attribute [rw] email_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in messages that are sent through the email channel.
    #   @return [Types::EmailTemplateRequest]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateEmailTemplateRequest AWS API Documentation
    #
    class CreateEmailTemplateRequest < Struct.new(
      :email_template_request,
      :template_name)
      include Aws::Structure
    end

    # @!attribute [rw] create_template_message_body
    #   Provides information about a request to create a message template.
    #   @return [Types::CreateTemplateMessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateEmailTemplateResponse AWS API Documentation
    #
    class CreateEmailTemplateResponse < Struct.new(
      :create_template_message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExportJobRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         export_job_request: { # required
    #           role_arn: "__string", # required
    #           s3_url_prefix: "__string", # required
    #           segment_id: "__string",
    #           segment_version: 1,
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] export_job_request
    #   Specifies the settings for a job that exports endpoint definitions
    #   to an Amazon Simple Storage Service (Amazon S3) bucket.
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
    #   Provides information about the status and settings of a job that
    #   exports endpoint definitions to a file. The file can be added
    #   directly to an Amazon Simple Storage Service (Amazon S3) bucket by
    #   using the Amazon Pinpoint API or downloaded directly to a computer
    #   by using the Amazon Pinpoint console.
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
    #           format: "CSV", # required, accepts CSV, JSON
    #           register_endpoints: false,
    #           role_arn: "__string", # required
    #           s3_url: "__string", # required
    #           segment_id: "__string",
    #           segment_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] import_job_request
    #   Specifies the settings for a job that imports endpoint definitions
    #   from an Amazon Simple Storage Service (Amazon S3) bucket.
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
    #   Provides information about the status and settings of a job that
    #   imports endpoint definitions from one or more files. The files can
    #   be stored in an Amazon Simple Storage Service (Amazon S3) bucket or
    #   uploaded directly from a computer by using the Amazon Pinpoint
    #   console.
    #   @return [Types::ImportJobResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateImportJobResponse AWS API Documentation
    #
    class CreateImportJobResponse < Struct.new(
      :import_job_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateJourneyRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_journey_request: { # required
    #           activities: {
    #             "__string" => {
    #               custom: {
    #                 delivery_uri: "__string",
    #                 endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #                 message_config: {
    #                   data: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               conditional_split: {
    #                 condition: {
    #                   conditions: [
    #                     {
    #                       event_condition: {
    #                         dimensions: { # required
    #                           attributes: {
    #                             "__string" => {
    #                               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                               values: ["__string"], # required
    #                             },
    #                           },
    #                           event_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           metrics: {
    #                             "__string" => {
    #                               comparison_operator: "__string", # required
    #                               value: 1.0, # required
    #                             },
    #                           },
    #                         },
    #                         message_activity: "__string",
    #                       },
    #                       segment_condition: {
    #                         segment_id: "__string", # required
    #                       },
    #                       segment_dimensions: {
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         behavior: {
    #                           recency: {
    #                             duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                             recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                           },
    #                         },
    #                         demographic: {
    #                           app_version: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           channel: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           device_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           make: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           model: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           platform: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         location: {
    #                           country: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           gps_point: {
    #                             coordinates: { # required
    #                               latitude: 1.0, # required
    #                               longitude: 1.0, # required
    #                             },
    #                             range_in_kilometers: 1.0,
    #                           },
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           },
    #                         },
    #                         user_attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                       },
    #                     },
    #                   ],
    #                   operator: "ALL", # accepts ALL, ANY
    #                 },
    #                 evaluation_wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string",
    #                 },
    #                 false_activity: "__string",
    #                 true_activity: "__string",
    #               },
    #               description: "__string",
    #               email: {
    #                 message_config: {
    #                   from_address: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               holdout: {
    #                 next_activity: "__string",
    #                 percentage: 1, # required
    #               },
    #               multi_condition: {
    #                 branches: [
    #                   {
    #                     condition: {
    #                       event_condition: {
    #                         dimensions: { # required
    #                           attributes: {
    #                             "__string" => {
    #                               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                               values: ["__string"], # required
    #                             },
    #                           },
    #                           event_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           metrics: {
    #                             "__string" => {
    #                               comparison_operator: "__string", # required
    #                               value: 1.0, # required
    #                             },
    #                           },
    #                         },
    #                         message_activity: "__string",
    #                       },
    #                       segment_condition: {
    #                         segment_id: "__string", # required
    #                       },
    #                       segment_dimensions: {
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         behavior: {
    #                           recency: {
    #                             duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                             recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                           },
    #                         },
    #                         demographic: {
    #                           app_version: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           channel: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           device_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           make: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           model: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           platform: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         location: {
    #                           country: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           gps_point: {
    #                             coordinates: { # required
    #                               latitude: 1.0, # required
    #                               longitude: 1.0, # required
    #                             },
    #                             range_in_kilometers: 1.0,
    #                           },
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           },
    #                         },
    #                         user_attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                       },
    #                     },
    #                     next_activity: "__string",
    #                   },
    #                 ],
    #                 default_activity: "__string",
    #                 evaluation_wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string",
    #                 },
    #               },
    #               push: {
    #                 message_config: {
    #                   time_to_live: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               random_split: {
    #                 branches: [
    #                   {
    #                     next_activity: "__string",
    #                     percentage: 1,
    #                   },
    #                 ],
    #               },
    #               sms: {
    #                 message_config: {
    #                   message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #                   sender_id: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               wait: {
    #                 next_activity: "__string",
    #                 wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string",
    #                 },
    #               },
    #             },
    #           },
    #           creation_date: "__string",
    #           last_modified_date: "__string",
    #           limits: {
    #             daily_cap: 1,
    #             endpoint_reentry_cap: 1,
    #             messages_per_second: 1,
    #           },
    #           local_time: false,
    #           name: "__string", # required
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           refresh_frequency: "__string",
    #           schedule: {
    #             end_time: Time.now,
    #             start_time: Time.now,
    #             timezone: "__string",
    #           },
    #           start_activity: "__string",
    #           start_condition: {
    #             description: "__string",
    #             segment_start_condition: {
    #               segment_id: "__string", # required
    #             },
    #           },
    #           state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_journey_request
    #   Specifies the configuration and other settings for a journey.
    #   @return [Types::WriteJourneyRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateJourneyRequest AWS API Documentation
    #
    class CreateJourneyRequest < Struct.new(
      :application_id,
      :write_journey_request)
      include Aws::Structure
    end

    # @!attribute [rw] journey_response
    #   Provides information about the status, configuration, and other
    #   settings for a journey.
    #   @return [Types::JourneyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateJourneyResponse AWS API Documentation
    #
    class CreateJourneyResponse < Struct.new(
      :journey_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePushTemplateRequest
    #   data as a hash:
    #
    #       {
    #         push_notification_template_request: { # required
    #           adm: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           apns: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           baidu: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_substitutions: "__string",
    #           gcm: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           recommender_id: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #         },
    #         template_name: "__string", # required
    #       }
    #
    # @!attribute [rw] push_notification_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in messages that are sent through a push notification
    #   channel.
    #   @return [Types::PushNotificationTemplateRequest]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreatePushTemplateRequest AWS API Documentation
    #
    class CreatePushTemplateRequest < Struct.new(
      :push_notification_template_request,
      :template_name)
      include Aws::Structure
    end

    # @!attribute [rw] create_template_message_body
    #   Provides information about a request to create a message template.
    #   @return [Types::CreateTemplateMessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreatePushTemplateResponse AWS API Documentation
    #
    class CreatePushTemplateResponse < Struct.new(
      :create_template_message_body)
      include Aws::Structure
    end

    # Specifies Amazon Pinpoint configuration settings for retrieving and
    # processing recommendation data from a recommender model.
    #
    # @note When making an API call, you may pass CreateRecommenderConfiguration
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "__string" => "__string",
    #         },
    #         description: "__string",
    #         name: "__string",
    #         recommendation_provider_id_type: "__string",
    #         recommendation_provider_role_arn: "__string", # required
    #         recommendation_provider_uri: "__string", # required
    #         recommendation_transformer_uri: "__string",
    #         recommendations_display_name: "__string",
    #         recommendations_per_message: 1,
    #       }
    #
    # @!attribute [rw] attributes
    #   A map of key-value pairs that defines 1-10 custom endpoint or user
    #   attributes, depending on the value for the
    #   RecommendationProviderIdType property. Each of these attributes
    #   temporarily stores a recommended item that's retrieved from the
    #   recommender model and sent to an AWS Lambda function for additional
    #   processing. Each attribute can be used as a message variable in a
    #   message template.
    #
    #   In the map, the key is the name of a custom attribute and the value
    #   is a custom display name for that attribute. The display name
    #   appears in the **Attribute finder** of the template editor on the
    #   Amazon Pinpoint console. The following restrictions apply to these
    #   names:
    #
    #   * An attribute name must start with a letter or number and it can
    #     contain up to 50 characters. The characters can be letters,
    #     numbers, underscores (\_), or hyphens (-). Attribute names are
    #     case sensitive and must be unique.
    #
    #   * An attribute display name must start with a letter or number and
    #     it can contain up to 25 characters. The characters can be letters,
    #     numbers, spaces, underscores (\_), or hyphens (-).
    #
    #   This object is required if the configuration invokes an AWS Lambda
    #   function (RecommendationTransformerUri) to process recommendation
    #   data. Otherwise, don't include this object in your request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   A custom description of the configuration for the recommender model.
    #   The description can contain up to 128 characters. The characters can
    #   be letters, numbers, spaces, or the following symbols: \_ ; () , ‐.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A custom name of the configuration for the recommender model. The
    #   name must start with a letter or number and it can contain up to 128
    #   characters. The characters can be letters, numbers, spaces,
    #   underscores (\_), or hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_id_type
    #   The type of Amazon Pinpoint ID to associate with unique user IDs in
    #   the recommender model. This value enables the model to use attribute
    #   and event data that’s specific to a particular endpoint or user in
    #   an Amazon Pinpoint application. Valid values are:
    #
    #   * PINPOINT\_ENDPOINT\_ID - Associate each user in the model with a
    #     particular endpoint in Amazon Pinpoint. The data is correlated
    #     based on endpoint IDs in Amazon Pinpoint. This is the default
    #     value.
    #
    #   * PINPOINT\_USER\_ID - Associate each user in the model with a
    #     particular user and endpoint in Amazon Pinpoint. The data is
    #     correlated based on user IDs in Amazon Pinpoint. If you specify
    #     this value, an endpoint definition in Amazon Pinpoint has to
    #     specify both a user ID (UserId) and an endpoint ID. Otherwise,
    #     messages won’t be sent to the user's endpoint.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon Pinpoint to retrieve
    #   recommendation data from the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_uri
    #   The Amazon Resource Name (ARN) of the recommender model to retrieve
    #   recommendation data from. This value must match the ARN of an Amazon
    #   Personalize campaign.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_transformer_uri
    #   The name or Amazon Resource Name (ARN) of the AWS Lambda function to
    #   invoke for additional processing of recommendation data that's
    #   retrieved from the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] recommendations_display_name
    #   A custom display name for the standard endpoint or user attribute
    #   (RecommendationItems) that temporarily stores recommended items for
    #   each endpoint or user, depending on the value for the
    #   RecommendationProviderIdType property. This value is required if the
    #   configuration doesn't invoke an AWS Lambda function
    #   (RecommendationTransformerUri) to perform additional processing of
    #   recommendation data.
    #
    #   This name appears in the **Attribute finder** of the template editor
    #   on the Amazon Pinpoint console. The name can contain up to 25
    #   characters. The characters can be letters, numbers, spaces,
    #   underscores (\_), or hyphens (-). These restrictions don't apply to
    #   attribute values.
    #   @return [String]
    #
    # @!attribute [rw] recommendations_per_message
    #   The number of recommended items to retrieve from the model for each
    #   endpoint or user, depending on the value for the
    #   RecommendationProviderIdType property. This number determines how
    #   many recommended items are available for use in message variables.
    #   The minimum value is 1. The maximum value is 5. The default value is
    #   5.
    #
    #   To use multiple recommended items and custom attributes with message
    #   variables, you have to use an AWS Lambda function
    #   (RecommendationTransformerUri) to perform additional processing of
    #   recommendation data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateRecommenderConfiguration AWS API Documentation
    #
    class CreateRecommenderConfiguration < Struct.new(
      :attributes,
      :description,
      :name,
      :recommendation_provider_id_type,
      :recommendation_provider_role_arn,
      :recommendation_provider_uri,
      :recommendation_transformer_uri,
      :recommendations_display_name,
      :recommendations_per_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRecommenderConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         create_recommender_configuration: { # required
    #           attributes: {
    #             "__string" => "__string",
    #           },
    #           description: "__string",
    #           name: "__string",
    #           recommendation_provider_id_type: "__string",
    #           recommendation_provider_role_arn: "__string", # required
    #           recommendation_provider_uri: "__string", # required
    #           recommendation_transformer_uri: "__string",
    #           recommendations_display_name: "__string",
    #           recommendations_per_message: 1,
    #         },
    #       }
    #
    # @!attribute [rw] create_recommender_configuration
    #   Specifies Amazon Pinpoint configuration settings for retrieving and
    #   processing recommendation data from a recommender model.
    #   @return [Types::CreateRecommenderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateRecommenderConfigurationRequest AWS API Documentation
    #
    class CreateRecommenderConfigurationRequest < Struct.new(
      :create_recommender_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] recommender_configuration_response
    #   Provides information about Amazon Pinpoint configuration settings
    #   for retrieving and processing data from a recommender model.
    #   @return [Types::RecommenderConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateRecommenderConfigurationResponse AWS API Documentation
    #
    class CreateRecommenderConfigurationResponse < Struct.new(
      :recommender_configuration_response)
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
    #                 values: ["__string"], # required
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               gps_point: {
    #                 coordinates: { # required
    #                   latitude: 1.0, # required
    #                   longitude: 1.0, # required
    #                 },
    #                 range_in_kilometers: 1.0,
    #               },
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
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
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                   },
    #                 ],
    #                 source_segments: [
    #                   {
    #                     id: "__string", # required
    #                     version: 1,
    #                   },
    #                 ],
    #                 source_type: "ALL", # accepts ALL, ANY, NONE
    #                 type: "ALL", # accepts ALL, ANY, NONE
    #               },
    #             ],
    #             include: "ALL", # accepts ALL, ANY, NONE
    #           },
    #           tags: {
    #             "__string" => "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_segment_request
    #   Specifies the configuration, dimension, and other settings for a
    #   segment. A WriteSegmentRequest object can include a Dimensions
    #   object or a SegmentGroups object, but not both.
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
    #   Provides information about the configuration, dimension, and other
    #   settings for a segment.
    #   @return [Types::SegmentResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSegmentResponse AWS API Documentation
    #
    class CreateSegmentResponse < Struct.new(
      :segment_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSmsTemplateRequest
    #   data as a hash:
    #
    #       {
    #         sms_template_request: { # required
    #           body: "__string",
    #           default_substitutions: "__string",
    #           recommender_id: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #         },
    #         template_name: "__string", # required
    #       }
    #
    # @!attribute [rw] sms_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in text messages that are sent through the SMS channel.
    #   @return [Types::SMSTemplateRequest]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSmsTemplateRequest AWS API Documentation
    #
    class CreateSmsTemplateRequest < Struct.new(
      :sms_template_request,
      :template_name)
      include Aws::Structure
    end

    # @!attribute [rw] create_template_message_body
    #   Provides information about a request to create a message template.
    #   @return [Types::CreateTemplateMessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSmsTemplateResponse AWS API Documentation
    #
    class CreateSmsTemplateResponse < Struct.new(
      :create_template_message_body)
      include Aws::Structure
    end

    # Provides information about a request to create a message template.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the message template that was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message that's returned from the API for the request to create
    #   the message template.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the request to create the message
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateTemplateMessageBody AWS API Documentation
    #
    class CreateTemplateMessageBody < Struct.new(
      :arn,
      :message,
      :request_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVoiceTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         voice_template_request: { # required
    #           body: "__string",
    #           default_substitutions: "__string",
    #           language_code: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #           voice_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] voice_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in messages that are sent through the voice channel.
    #   @return [Types::VoiceTemplateRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateVoiceTemplateRequest AWS API Documentation
    #
    class CreateVoiceTemplateRequest < Struct.new(
      :template_name,
      :voice_template_request)
      include Aws::Structure
    end

    # @!attribute [rw] create_template_message_body
    #   Provides information about a request to create a message template.
    #   @return [Types::CreateTemplateMessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateVoiceTemplateResponse AWS API Documentation
    #
    class CreateVoiceTemplateResponse < Struct.new(
      :create_template_message_body)
      include Aws::Structure
    end

    # Specifies the delivery configuration settings for sending a campaign
    # or campaign treatment through a custom channel. This object is
    # required if you use the CampaignCustomMessage object to define the
    # message to send for the campaign or campaign treatment.
    #
    # @note When making an API call, you may pass CustomDeliveryConfiguration
    #   data as a hash:
    #
    #       {
    #         delivery_uri: "__string", # required
    #         endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #       }
    #
    # @!attribute [rw] delivery_uri
    #   The destination to send the campaign or treatment to. This value can
    #   be one of the following:
    #
    #   * The name or Amazon Resource Name (ARN) of an AWS Lambda function
    #     to invoke to handle delivery of the campaign or treatment.
    #
    #   * The URL for a web application or service that supports HTTPS and
    #     can receive the message. The URL has to be a full URL, including
    #     the HTTPS protocol.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_types
    #   The types of endpoints to send the campaign or treatment to. Each
    #   valid value maps to a type of channel that you can associate with an
    #   endpoint by using the ChannelType property of an endpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CustomDeliveryConfiguration AWS API Documentation
    #
    class CustomDeliveryConfiguration < Struct.new(
      :delivery_uri,
      :endpoint_types)
      include Aws::Structure
    end

    # The settings for a custom message activity. This type of activity
    # calls an AWS Lambda function or web hook that sends messages to
    # participants.
    #
    # @note When making an API call, you may pass CustomMessageActivity
    #   data as a hash:
    #
    #       {
    #         delivery_uri: "__string",
    #         endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #         message_config: {
    #           data: "__string",
    #         },
    #         next_activity: "__string",
    #         template_name: "__string",
    #         template_version: "__string",
    #       }
    #
    # @!attribute [rw] delivery_uri
    #   The destination to send the custom message to. This value can be one
    #   of the following:
    #
    #   * The name or Amazon Resource Name (ARN) of an AWS Lambda function
    #     to invoke to handle delivery of the custom message.
    #
    #   * The URL for a web application or service that supports HTTPS and
    #     can receive the message. The URL has to be a full URL, including
    #     the HTTPS protocol.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_types
    #   The types of endpoints to send the custom message to. Each valid
    #   value maps to a type of channel that you can associate with an
    #   endpoint by using the ChannelType property of an endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message_config
    #   Specifies the message data included in a custom channel message
    #   that's sent to participants in a journey.
    #   @return [Types::JourneyCustomMessage]
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after Amazon
    #   Pinpoint calls the AWS Lambda function or web hook.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the custom message template to use for the message. If
    #   specified, this value must match the name of an existing message
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_version
    #   The unique identifier for the version of the message template to use
    #   for the message. If specified, this value must match the identifier
    #   for an existing template version. To retrieve a list of versions and
    #   version identifiers for a template, use the <link
    #   linkend="templates-template-name-template-type-versions" />
    #
    #   Template Versions</link> resource.
    #
    #   If you don't specify a value for this property, Amazon Pinpoint
    #   uses the *active version* of the template. The *active version* is
    #   typically the version of a template that's been most recently
    #   reviewed and approved for use, depending on your workflow. It isn't
    #   necessarily the latest version of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CustomMessageActivity AWS API Documentation
    #
    class CustomMessageActivity < Struct.new(
      :delivery_uri,
      :endpoint_types,
      :message_config,
      :next_activity,
      :template_name,
      :template_version)
      include Aws::Structure
    end

    # Specifies the default message for all channels.
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
    #   The default body of the message.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the message. You can
    #   override these default variables with individual address variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DefaultMessage AWS API Documentation
    #
    class DefaultMessage < Struct.new(
      :body,
      :substitutions)
      include Aws::Structure
    end

    # Specifies the default settings and content for a push notification
    # that's sent directly to an endpoint.
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
    #   The default action to occur if a recipient taps the push
    #   notification. Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This setting uses the deep-linking features
    #     of the iOS and Android platforms.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The default body of the notification message.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The JSON data payload to use for the default push notification, if
    #   the notification is a silent push notification. This payload is
    #   added to the data.pinpoint.jsonBody object of the notification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] silent_push
    #   Specifies whether the default notification is a silent push
    #   notification, which is a push notification that doesn't display on
    #   a recipient's device. Silent push notifications can be used for
    #   cases such as updating an app's configuration or delivering
    #   messages to an in-app notification center.
    #   @return [Boolean]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the notification message.
    #   You can override the default variables with individual address
    #   variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title
    #   The default title to display above the notification message on a
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The default URL to open in a recipient's default mobile browser, if
    #   a recipient taps the push notification and the value of the Action
    #   property is URL.
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

    # Specifies the default settings and content for a message template that
    # can be used in messages that are sent through a push notification
    # channel.
    #
    # @note When making an API call, you may pass DefaultPushNotificationTemplate
    #   data as a hash:
    #
    #       {
    #         action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #         body: "__string",
    #         sound: "__string",
    #         title: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] action
    #   The action to occur if a recipient taps a push notification that's
    #   based on the message template. Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This setting uses the deep-linking features
    #     of the iOS and Android platforms.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body to use in push notifications that are based on the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   The sound to play when a recipient receives a push notification
    #   that's based on the message template. You can use the default
    #   stream or specify the file name of a sound resource that's bundled
    #   in your app. On an Android platform, the sound file must reside in
    #   /res/raw/.
    #
    #   For an iOS platform, this value is the key for the name of a sound
    #   file in your app's main bundle or the Library/Sounds folder in your
    #   app's data container. If the sound file can't be found or you
    #   specify default for the value, the system plays the default alert
    #   sound.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title to use in push notifications that are based on the message
    #   template. This title appears above the notification message on a
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in a recipient's default mobile browser, if a
    #   recipient taps a push notification that's based on the message
    #   template and the value of the Action property is URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DefaultPushNotificationTemplate AWS API Documentation
    #
    class DefaultPushNotificationTemplate < Struct.new(
      :action,
      :body,
      :sound,
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
    #   Provides information about the status and settings of the ADM
    #   (Amazon Device Messaging) channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) sandbox channel for an
    #   application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) VoIP channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) VoIP sandbox channel for an
    #   application.
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
    #   Provides information about an application.
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
    #   Provides information about the status and settings of the Baidu
    #   (Baidu Cloud Push) channel for an application.
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
    #   Provides information about the status, configuration, and other
    #   settings for a campaign.
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
    #   Provides information about the status and settings of the email
    #   channel for an application.
    #   @return [Types::EmailChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailChannelResponse AWS API Documentation
    #
    class DeleteEmailChannelResponse < Struct.new(
      :email_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailTemplateRequest AWS API Documentation
    #
    class DeleteEmailTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailTemplateResponse AWS API Documentation
    #
    class DeleteEmailTemplateResponse < Struct.new(
      :message_body)
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
    #   Provides information about the channel type and other settings for
    #   an endpoint.
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
    #   Specifies settings for publishing event data to an Amazon Kinesis
    #   data stream or an Amazon Kinesis Data Firehose delivery stream.
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
    #   Provides information about the status and settings of the GCM
    #   channel for an application. The GCM channel enables Amazon Pinpoint
    #   to send push notifications through the Firebase Cloud Messaging
    #   (FCM), formerly Google Cloud Messaging (GCM), service.
    #   @return [Types::GCMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteGcmChannelResponse AWS API Documentation
    #
    class DeleteGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteJourneyRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         journey_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteJourneyRequest AWS API Documentation
    #
    class DeleteJourneyRequest < Struct.new(
      :application_id,
      :journey_id)
      include Aws::Structure
    end

    # @!attribute [rw] journey_response
    #   Provides information about the status, configuration, and other
    #   settings for a journey.
    #   @return [Types::JourneyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteJourneyResponse AWS API Documentation
    #
    class DeleteJourneyResponse < Struct.new(
      :journey_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePushTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeletePushTemplateRequest AWS API Documentation
    #
    class DeletePushTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeletePushTemplateResponse AWS API Documentation
    #
    class DeletePushTemplateResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRecommenderConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         recommender_id: "__string", # required
    #       }
    #
    # @!attribute [rw] recommender_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteRecommenderConfigurationRequest AWS API Documentation
    #
    class DeleteRecommenderConfigurationRequest < Struct.new(
      :recommender_id)
      include Aws::Structure
    end

    # @!attribute [rw] recommender_configuration_response
    #   Provides information about Amazon Pinpoint configuration settings
    #   for retrieving and processing data from a recommender model.
    #   @return [Types::RecommenderConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteRecommenderConfigurationResponse AWS API Documentation
    #
    class DeleteRecommenderConfigurationResponse < Struct.new(
      :recommender_configuration_response)
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
    #   Provides information about the configuration, dimension, and other
    #   settings for a segment.
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
    #   Provides information about the status and settings of the SMS
    #   channel for an application.
    #   @return [Types::SMSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsChannelResponse AWS API Documentation
    #
    class DeleteSmsChannelResponse < Struct.new(
      :sms_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSmsTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsTemplateRequest AWS API Documentation
    #
    class DeleteSmsTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsTemplateResponse AWS API Documentation
    #
    class DeleteSmsTemplateResponse < Struct.new(
      :message_body)
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
    #   Provides information about all the endpoints that are associated
    #   with a user ID.
    #   @return [Types::EndpointsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteUserEndpointsResponse AWS API Documentation
    #
    class DeleteUserEndpointsResponse < Struct.new(
      :endpoints_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteVoiceChannelRequest AWS API Documentation
    #
    class DeleteVoiceChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] voice_channel_response
    #   Provides information about the status and settings of the voice
    #   channel for an application.
    #   @return [Types::VoiceChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteVoiceChannelResponse AWS API Documentation
    #
    class DeleteVoiceChannelResponse < Struct.new(
      :voice_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteVoiceTemplateRequest AWS API Documentation
    #
    class DeleteVoiceTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteVoiceTemplateResponse AWS API Documentation
    #
    class DeleteVoiceTemplateResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # Specifies the settings and content for the default message and any
    # default messages that you tailored for specific channels.
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
    #           apns_push_type: "__string",
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
    #         email_message: {
    #           body: "__string",
    #           feedback_forwarding_address: "__string",
    #           from_address: "__string",
    #           raw_email: {
    #             data: "data",
    #           },
    #           reply_to_addresses: ["__string"],
    #           simple_email: {
    #             html_part: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #             subject: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #             text_part: {
    #               charset: "__string",
    #               data: "__string",
    #             },
    #           },
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
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
    #           media_url: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           origination_number: "__string",
    #           sender_id: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         voice_message: {
    #           body: "__string",
    #           language_code: "__string",
    #           origination_number: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           voice_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] adm_message
    #   The default push notification message for the ADM (Amazon Device
    #   Messaging) channel. This message overrides the default push
    #   notification message (DefaultPushNotificationMessage).
    #   @return [Types::ADMMessage]
    #
    # @!attribute [rw] apns_message
    #   The default push notification message for the APNs (Apple Push
    #   Notification service) channel. This message overrides the default
    #   push notification message (DefaultPushNotificationMessage).
    #   @return [Types::APNSMessage]
    #
    # @!attribute [rw] baidu_message
    #   The default push notification message for the Baidu (Baidu Cloud
    #   Push) channel. This message overrides the default push notification
    #   message (DefaultPushNotificationMessage).
    #   @return [Types::BaiduMessage]
    #
    # @!attribute [rw] default_message
    #   The default message for all channels.
    #   @return [Types::DefaultMessage]
    #
    # @!attribute [rw] default_push_notification_message
    #   The default push notification message for all push notification
    #   channels.
    #   @return [Types::DefaultPushNotificationMessage]
    #
    # @!attribute [rw] email_message
    #   The default message for the email channel. This message overrides
    #   the default message (DefaultMessage).
    #   @return [Types::EmailMessage]
    #
    # @!attribute [rw] gcm_message
    #   The default push notification message for the GCM channel, which is
    #   used to send notifications through the Firebase Cloud Messaging
    #   (FCM), formerly Google Cloud Messaging (GCM), service. This message
    #   overrides the default push notification message
    #   (DefaultPushNotificationMessage).
    #   @return [Types::GCMMessage]
    #
    # @!attribute [rw] sms_message
    #   The default message for the SMS channel. This message overrides the
    #   default message (DefaultMessage).
    #   @return [Types::SMSMessage]
    #
    # @!attribute [rw] voice_message
    #   The default message for the voice channel. This message overrides
    #   the default message (DefaultMessage).
    #   @return [Types::VoiceMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DirectMessageConfiguration AWS API Documentation
    #
    class DirectMessageConfiguration < Struct.new(
      :adm_message,
      :apns_message,
      :baidu_message,
      :default_message,
      :default_push_notification_message,
      :email_message,
      :gcm_message,
      :sms_message,
      :voice_message)
      include Aws::Structure
    end

    # Specifies the status and settings of the email channel for an
    # application.
    #
    # @note When making an API call, you may pass EmailChannelRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set: "__string",
    #         enabled: false,
    #         from_address: "__string", # required
    #         identity: "__string", # required
    #         role_arn: "__string",
    #       }
    #
    # @!attribute [rw] configuration_set
    #   The [Amazon SES configuration set][1] that you want to apply to
    #   messages that you send through the channel.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the email channel for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] from_address
    #   The verified email address that you want to send email from when you
    #   send email through the channel.
    #   @return [String]
    #
    # @!attribute [rw] identity
    #   The Amazon Resource Name (ARN) of the identity, verified with Amazon
    #   Simple Email Service (Amazon SES), that you want to use when you
    #   send email through the channel.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   you want Amazon Pinpoint to use when it submits email-related event
    #   data for the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailChannelRequest AWS API Documentation
    #
    class EmailChannelRequest < Struct.new(
      :configuration_set,
      :enabled,
      :from_address,
      :identity,
      :role_arn)
      include Aws::Structure
    end

    # Provides information about the status and settings of the email
    # channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the email channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set
    #   The [Amazon SES configuration set][1] that's applied to messages
    #   that are sent through the channel.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time, in ISO 8601 format, when the email channel was
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the email channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] from_address
    #   The verified email address that email is sent from when you send
    #   email through the channel.
    #   @return [String]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the email channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] identity
    #   The Amazon Resource Name (ARN) of the identity, verified with Amazon
    #   Simple Email Service (Amazon SES), that's used when you send email
    #   through the channel.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the email channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the email channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time, in ISO 8601 format, when the email channel was
    #   last modified.
    #   @return [String]
    #
    # @!attribute [rw] messages_per_second
    #   The maximum number of emails that can be sent through the channel
    #   each second.
    #   @return [Integer]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the email channel, this value is EMAIL.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   Amazon Pinpoint uses to submit email-related event data for the
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the email channel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailChannelResponse AWS API Documentation
    #
    class EmailChannelResponse < Struct.new(
      :application_id,
      :configuration_set,
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

    # Specifies the default settings and content for a one-time email
    # message that's sent directly to an endpoint.
    #
    # @note When making an API call, you may pass EmailMessage
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         feedback_forwarding_address: "__string",
    #         from_address: "__string",
    #         raw_email: {
    #           data: "data",
    #         },
    #         reply_to_addresses: ["__string"],
    #         simple_email: {
    #           html_part: {
    #             charset: "__string",
    #             data: "__string",
    #           },
    #           subject: {
    #             charset: "__string",
    #             data: "__string",
    #           },
    #           text_part: {
    #             charset: "__string",
    #             data: "__string",
    #           },
    #         },
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] body
    #   The body of the email message.
    #   @return [String]
    #
    # @!attribute [rw] feedback_forwarding_address
    #   The email address to forward bounces and complaints to, if feedback
    #   forwarding is enabled.
    #   @return [String]
    #
    # @!attribute [rw] from_address
    #   The verified email address to send the email message from. The
    #   default value is the FromAddress specified for the email channel.
    #   @return [String]
    #
    # @!attribute [rw] raw_email
    #   The email message, represented as a raw MIME message.
    #   @return [Types::RawEmail]
    #
    # @!attribute [rw] reply_to_addresses
    #   The reply-to email address(es) for the email message. If a recipient
    #   replies to the email, each reply-to address receives the reply.
    #   @return [Array<String>]
    #
    # @!attribute [rw] simple_email
    #   The email message, composed of a subject, a text part, and an HTML
    #   part.
    #   @return [Types::SimpleEmail]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the email message. You can
    #   override the default variables with individual address variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailMessage AWS API Documentation
    #
    class EmailMessage < Struct.new(
      :body,
      :feedback_forwarding_address,
      :from_address,
      :raw_email,
      :reply_to_addresses,
      :simple_email,
      :substitutions)
      include Aws::Structure
    end

    # Specifies the settings for an email activity in a journey. This type
    # of activity sends an email message to participants.
    #
    # @note When making an API call, you may pass EmailMessageActivity
    #   data as a hash:
    #
    #       {
    #         message_config: {
    #           from_address: "__string",
    #         },
    #         next_activity: "__string",
    #         template_name: "__string",
    #         template_version: "__string",
    #       }
    #
    # @!attribute [rw] message_config
    #   Specifies the sender address for an email message that's sent to
    #   participants in the journey.
    #   @return [Types::JourneyEmailMessage]
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after the
    #   message is sent.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the email message template to use for the message. If
    #   specified, this value must match the name of an existing message
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_version
    #   The unique identifier for the version of the email template to use
    #   for the message. If specified, this value must match the identifier
    #   for an existing template version. To retrieve a list of versions and
    #   version identifiers for a template, use the <link
    #   linkend="templates-template-name-template-type-versions" />
    #
    #   Template Versions</link> resource.
    #
    #   If you don't specify a value for this property, Amazon Pinpoint
    #   uses the *active version* of the template. The *active version* is
    #   typically the version of a template that's been most recently
    #   reviewed and approved for use, depending on your workflow. It isn't
    #   necessarily the latest version of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailMessageActivity AWS API Documentation
    #
    class EmailMessageActivity < Struct.new(
      :message_config,
      :next_activity,
      :template_name,
      :template_version)
      include Aws::Structure
    end

    # Specifies the content and settings for a message template that can be
    # used in messages that are sent through the email channel.
    #
    # @note When making an API call, you may pass EmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         default_substitutions: "__string",
    #         html_part: "__string",
    #         recommender_id: "__string",
    #         subject: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         template_description: "__string",
    #         text_part: "__string",
    #       }
    #
    # @!attribute [rw] default_substitutions
    #   A JSON object that specifies the default values to use for message
    #   variables in the message template. This object is a set of key-value
    #   pairs. Each key defines a message variable in the template. The
    #   corresponding value defines the default value for that variable.
    #   When you create a message that's based on the template, you can
    #   override these defaults with message-specific and address-specific
    #   variables and values.
    #   @return [String]
    #
    # @!attribute [rw] html_part
    #   The message body, in HTML format, to use in email messages that are
    #   based on the message template. We recommend using HTML format for
    #   email clients that render HTML content. You can include links,
    #   formatted text, and more in an HTML message.
    #   @return [String]
    #
    # @!attribute [rw] recommender_id
    #   The unique identifier for the recommender model to use for the
    #   message template. Amazon Pinpoint uses this value to determine how
    #   to retrieve and process data from a recommender model when it sends
    #   messages that use the template, if the template contains message
    #   variables for recommendation data.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject line, or title, to use in email messages that are based
    #   on the message template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags to
    #   associate with the message template. Each tag consists of a required
    #   tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   A custom description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] text_part
    #   The message body, in plain text format, to use in email messages
    #   that are based on the message template. We recommend using plain
    #   text format for email clients that don't render HTML content and
    #   clients that are connected to high-latency networks, such as mobile
    #   devices.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailTemplateRequest AWS API Documentation
    #
    class EmailTemplateRequest < Struct.new(
      :default_substitutions,
      :html_part,
      :recommender_id,
      :subject,
      :tags,
      :template_description,
      :text_part)
      include Aws::Structure
    end

    # Provides information about the content and settings for a message
    # template that can be used in messages that are sent through the email
    # channel.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the message template was created.
    #   @return [String]
    #
    # @!attribute [rw] default_substitutions
    #   The JSON object that specifies the default values that are used for
    #   message variables in the message template. This object is a set of
    #   key-value pairs. Each key defines a message variable in the
    #   template. The corresponding value defines the default value for that
    #   variable.
    #   @return [String]
    #
    # @!attribute [rw] html_part
    #   The message body, in HTML format, that's used in email messages
    #   that are based on the message template.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the message template was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] recommender_id
    #   The unique identifier for the recommender model that's used by the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject line, or title, that's used in email messages that are
    #   based on the message template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that identifies the tags
    #   that are associated with the message template. Each tag consists of
    #   a required tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   The custom description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of channel that the message template is designed for. For
    #   an email template, this value is EMAIL.
    #   @return [String]
    #
    # @!attribute [rw] text_part
    #   The message body, in plain text format, that's used in email
    #   messages that are based on the message template.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The unique identifier, as an integer, for the active version of the
    #   message template, or the version of the template that you specified
    #   by using the version parameter in your request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EmailTemplateResponse AWS API Documentation
    #
    class EmailTemplateResponse < Struct.new(
      :arn,
      :creation_date,
      :default_substitutions,
      :html_part,
      :last_modified_date,
      :recommender_id,
      :subject,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :text_part,
      :version)
      include Aws::Structure
    end

    # Specifies an endpoint to create or update and the settings and
    # attributes to set or change for the endpoint.
    #
    # @note When making an API call, you may pass EndpointBatchItem
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #   The destination address for messages or push notifications that you
    #   send to the endpoint. The address varies by channel. For a
    #   push-notification channel, use the token provided by the push
    #   notification service, such as an Apple Push Notification service
    #   (APNs) device token or a Firebase Cloud Messaging (FCM) registration
    #   token. For the SMS channel, use a phone number in E.164 format, such
    #   as +12065550100. For the email channel, use an email address.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more custom attributes that describe the endpoint by
    #   associating a name with an array of values. For example, the value
    #   of a custom attribute named Interests might be: \["Science",
    #   "Music", "Travel"\]. You can use these attributes as filter
    #   criteria when you create segments. Attribute names are case
    #   sensitive.
    #
    #   An attribute name can contain up to 50 characters. An attribute
    #   value can contain up to 100 characters. When you define the name of
    #   a custom attribute, avoid using the following characters: number
    #   sign (#), colon (:), question mark (?), backslash (\\), and slash
    #   (/). The Amazon Pinpoint console can't display attribute names that
    #   contain these characters. This restriction doesn't apply to
    #   attribute values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel to use when sending messages or push notifications to
    #   the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The demographic information for the endpoint, such as the time zone
    #   and platform.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The date and time, in ISO 8601 format, when the endpoint was created
    #   or updated.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   Specifies whether to send messages or push notifications to the
    #   endpoint. Valid values are: ACTIVE, messages are sent to the
    #   endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
    #
    #   Amazon Pinpoint automatically sets this value to ACTIVE when you
    #   create an endpoint or update an existing endpoint. Amazon Pinpoint
    #   automatically sets this value to INACTIVE if you update another
    #   endpoint that has the same address specified by the Address
    #   property.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the endpoint in the context of the batch.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The geographic information for the endpoint.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   One or more custom metrics that your app reports to Amazon Pinpoint
    #   for the endpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Specifies whether the user who's associated with the endpoint has
    #   opted out of receiving messages and push notifications from you.
    #   Possible values are: ALL, the user has opted out and doesn't want
    #   to receive any messages or push notifications; and, NONE, the user
    #   hasn't opted out and wants to receive all messages and push
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the request to create or update the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   One or more custom attributes that describe the user who's
    #   associated with the endpoint.
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

    # Specifies a batch of endpoints to create or update and the settings
    # and attributes to set or change for each endpoint.
    #
    # @note When making an API call, you may pass EndpointBatchRequest
    #   data as a hash:
    #
    #       {
    #         item: [ # required
    #           {
    #             address: "__string",
    #             attributes: {
    #               "__string" => ["__string"],
    #             },
    #             channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #   An array that defines the endpoints to create or update and, for
    #   each endpoint, the property values to set or change. An array can
    #   contain a maximum of 100 items.
    #   @return [Array<Types::EndpointBatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointBatchRequest AWS API Documentation
    #
    class EndpointBatchRequest < Struct.new(
      :item)
      include Aws::Structure
    end

    # Specifies demographic information about an endpoint, such as the
    # applicable time zone and platform.
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
    #   The version of the app that's associated with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale of the endpoint, in the following format: the ISO 639-1
    #   alpha-2 code, followed by an underscore (\_), followed by an ISO
    #   3166-1 alpha-2 value.
    #   @return [String]
    #
    # @!attribute [rw] make
    #   The manufacturer of the endpoint device, such as apple or samsung.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model name or number of the endpoint device, such as iPhone or
    #   SM-G900F.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The model version of the endpoint device.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the endpoint device, such as ios.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version of the endpoint device.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone of the endpoint, specified as a tz database name
    #   value, such as America/Los\_Angeles.
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

    # Provides the status code and message that result from processing data
    # for an endpoint.
    #
    # @!attribute [rw] message
    #   The custom message that's returned in the response as a result of
    #   processing the endpoint data.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code that's returned in the response as a result of
    #   processing the endpoint data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointItemResponse AWS API Documentation
    #
    class EndpointItemResponse < Struct.new(
      :message,
      :status_code)
      include Aws::Structure
    end

    # Specifies geographic information about an endpoint.
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
    #   The name of the city where the endpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region where the endpoint is located. For example, US for
    #   the United States.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude coordinate of the endpoint location, rounded to one
    #   decimal place.
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude coordinate of the endpoint location, rounded to one
    #   decimal place.
    #   @return [Float]
    #
    # @!attribute [rw] postal_code
    #   The postal or ZIP code for the area where the endpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the region where the endpoint is located. For locations
    #   in the United States, this value is the name of a state.
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

    # Provides information about the delivery status and results of sending
    # a message directly to an endpoint.
    #
    # @!attribute [rw] address
    #   The endpoint address that the message was delivered to.
    #   @return [String]
    #
    # @!attribute [rw] delivery_status
    #   The delivery status of the message. Possible values are:
    #
    #   * DUPLICATE - The endpoint address is a duplicate of another
    #     endpoint address. Amazon Pinpoint won't attempt to send the
    #     message again.
    #
    #   * OPT\_OUT - The user who's associated with the endpoint has opted
    #     out of receiving messages from you. Amazon Pinpoint won't attempt
    #     to send the message again.
    #
    #   * PERMANENT\_FAILURE - An error occurred when delivering the message
    #     to the endpoint. Amazon Pinpoint won't attempt to send the
    #     message again.
    #
    #   * SUCCESSFUL - The message was successfully delivered to the
    #     endpoint.
    #
    #   * TEMPORARY\_FAILURE - A temporary error occurred. Amazon Pinpoint
    #     won't attempt to send the message again.
    #
    #   * THROTTLED - Amazon Pinpoint throttled the operation to send the
    #     message to the endpoint.
    #
    #   * TIMEOUT - The message couldn't be sent within the timeout period.
    #
    #   * UNKNOWN\_FAILURE - An unknown error occurred.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The unique identifier for the message that was sent.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The downstream service status code for delivering the message.
    #   @return [Integer]
    #
    # @!attribute [rw] status_message
    #   The status message for delivering the message.
    #   @return [String]
    #
    # @!attribute [rw] updated_token
    #   For push notifications that are sent through the GCM channel,
    #   specifies whether the endpoint's device registration token was
    #   updated as part of delivering the message.
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

    # Specifies the channel type and other settings for an endpoint.
    #
    # @note When making an API call, you may pass EndpointRequest
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #   The destination address for messages or push notifications that you
    #   send to the endpoint. The address varies by channel. For a
    #   push-notification channel, use the token provided by the push
    #   notification service, such as an Apple Push Notification service
    #   (APNs) device token or a Firebase Cloud Messaging (FCM) registration
    #   token. For the SMS channel, use a phone number in E.164 format, such
    #   as +12065550100. For the email channel, use an email address.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more custom attributes that describe the endpoint by
    #   associating a name with an array of values. For example, the value
    #   of a custom attribute named Interests might be: \["Science",
    #   "Music", "Travel"\]. You can use these attributes as filter
    #   criteria when you create segments. Attribute names are case
    #   sensitive.
    #
    #   An attribute name can contain up to 50 characters. An attribute
    #   value can contain up to 100 characters. When you define the name of
    #   a custom attribute, avoid using the following characters: number
    #   sign (#), colon (:), question mark (?), backslash (\\), and slash
    #   (/). The Amazon Pinpoint console can't display attribute names that
    #   contain these characters. This restriction doesn't apply to
    #   attribute values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel to use when sending messages or push notifications to
    #   the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The demographic information for the endpoint, such as the time zone
    #   and platform.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The date and time, in ISO 8601 format, when the endpoint is updated.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   Specifies whether to send messages or push notifications to the
    #   endpoint. Valid values are: ACTIVE, messages are sent to the
    #   endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
    #
    #   Amazon Pinpoint automatically sets this value to ACTIVE when you
    #   create an endpoint or update an existing endpoint. Amazon Pinpoint
    #   automatically sets this value to INACTIVE if you update another
    #   endpoint that has the same address specified by the Address
    #   property.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The geographic information for the endpoint.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   One or more custom metrics that your app reports to Amazon Pinpoint
    #   for the endpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Specifies whether the user who's associated with the endpoint has
    #   opted out of receiving messages and push notifications from you.
    #   Possible values are: ALL, the user has opted out and doesn't want
    #   to receive any messages or push notifications; and, NONE, the user
    #   hasn't opted out and wants to receive all messages and push
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the most recent request to update the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   One or more custom attributes that describe the user who's
    #   associated with the endpoint.
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

    # Provides information about the channel type and other settings for an
    # endpoint.
    #
    # @!attribute [rw] address
    #   The destination address for messages or push notifications that you
    #   send to the endpoint. The address varies by channel. For example,
    #   the address for a push-notification channel is typically the token
    #   provided by a push notification service, such as an Apple Push
    #   Notification service (APNs) device token or a Firebase Cloud
    #   Messaging (FCM) registration token. The address for the SMS channel
    #   is a phone number in E.164 format, such as +12065550100. The address
    #   for the email channel is an email address.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that's associated with
    #   the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more custom attributes that describe the endpoint by
    #   associating a name with an array of values. For example, the value
    #   of a custom attribute named Interests might be: \["Science",
    #   "Music", "Travel"\]. You can use these attributes as filter
    #   criteria when you create segments.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel that's used when sending messages or push notifications
    #   to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] cohort_id
    #   A number from 0-99 that represents the cohort that the endpoint is
    #   assigned to. Endpoints are grouped into cohorts randomly, and each
    #   cohort contains approximately 1 percent of the endpoints for an
    #   application. Amazon Pinpoint assigns cohorts to the holdout or
    #   treatment allocations for campaigns.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time, in ISO 8601 format, when the endpoint was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The demographic information for the endpoint, such as the time zone
    #   and platform.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The date and time, in ISO 8601 format, when the endpoint was last
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   Specifies whether messages or push notifications are sent to the
    #   endpoint. Possible values are: ACTIVE, messages are sent to the
    #   endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
    #
    #   Amazon Pinpoint automatically sets this value to ACTIVE when you
    #   create an endpoint or update an existing endpoint. Amazon Pinpoint
    #   automatically sets this value to INACTIVE if you update another
    #   endpoint that has the same address specified by the Address
    #   property.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier that you assigned to the endpoint. The
    #   identifier should be a globally unique identifier (GUID) to ensure
    #   that it doesn't conflict with other endpoint identifiers that are
    #   associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The geographic information for the endpoint.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   One or more custom metrics that your app reports to Amazon Pinpoint
    #   for the endpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Specifies whether the user who's associated with the endpoint has
    #   opted out of receiving messages and push notifications from you.
    #   Possible values are: ALL, the user has opted out and doesn't want
    #   to receive any messages or push notifications; and, NONE, the user
    #   hasn't opted out and wants to receive all messages and push
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the most recent request to update the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   One or more custom user attributes that your app reports to Amazon
    #   Pinpoint for the user who's associated with the endpoint.
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

    # Specifies the content, including message variables and attributes, to
    # use in a message that's sent directly to an endpoint.
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
    #   The body of the message. If specified, this value overrides the
    #   default message body.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   A map of custom attributes to attach to the message for the address.
    #   Attribute names are case sensitive.
    #
    #   For a push notification, this payload is added to the data.pinpoint
    #   object. For an email or text message, this payload is added to
    #   email/SMS delivery receipt event attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for the
    #   message. If specified, this value overrides all other values for the
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   A map of the message variables to merge with the variables specified
    #   for the default message (DefaultMessage.Substitutions). The
    #   variables specified in this map take precedence over all other
    #   variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] title_override
    #   The title or subject line of the message. If specified, this value
    #   overrides the default message title or subject line.
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

    # Specifies data for one or more attributes that describe the user
    # who's associated with an endpoint.
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
    #   One or more custom attributes that describe the user by associating
    #   a name with an array of values. For example, the value of an
    #   attribute named Interests might be: \["Science", "Music",
    #   "Travel"\]. You can use these attributes as filter criteria when
    #   you create segments. Attribute names are case sensitive.
    #
    #   An attribute name can contain up to 50 characters. An attribute
    #   value can contain up to 100 characters. When you define the name of
    #   a custom attribute, avoid using the following characters: number
    #   sign (#), colon (:), question mark (?), backslash (\\), and slash
    #   (/). The Amazon Pinpoint console can't display attribute names that
    #   contain these characters. This restriction doesn't apply to
    #   attribute values.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointUser AWS API Documentation
    #
    class EndpointUser < Struct.new(
      :user_attributes,
      :user_id)
      include Aws::Structure
    end

    # Provides information about all the endpoints that are associated with
    # a user ID.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each endpoint that's associated with
    #   the user ID.
    #   @return [Array<Types::EndpointResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EndpointsResponse AWS API Documentation
    #
    class EndpointsResponse < Struct.new(
      :item)
      include Aws::Structure
    end

    # Specifies information about an event that reports data to Amazon
    # Pinpoint.
    #
    # @note When making an API call, you may pass Event
    #   data as a hash:
    #
    #       {
    #         app_package_name: "__string",
    #         app_title: "__string",
    #         app_version_code: "__string",
    #         attributes: {
    #           "__string" => "__string",
    #         },
    #         client_sdk_version: "__string",
    #         event_type: "__string", # required
    #         metrics: {
    #           "__string" => 1.0,
    #         },
    #         sdk_name: "__string",
    #         session: {
    #           duration: 1,
    #           id: "__string", # required
    #           start_timestamp: "__string", # required
    #           stop_timestamp: "__string",
    #         },
    #         timestamp: "__string", # required
    #       }
    #
    # @!attribute [rw] app_package_name
    #   The package name of the app that's recording the event.
    #   @return [String]
    #
    # @!attribute [rw] app_title
    #   The title of the app that's recording the event.
    #   @return [String]
    #
    # @!attribute [rw] app_version_code
    #   The version number of the app that's recording the event.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more custom attributes that are associated with the event.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_sdk_version
    #   The version of the SDK that's running on the client device.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The name of the event.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   One or more custom metrics that are associated with the event.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] sdk_name
    #   The name of the SDK that's being used to record the event.
    #   @return [String]
    #
    # @!attribute [rw] session
    #   Information about the session in which the event occurred.
    #   @return [Types::Session]
    #
    # @!attribute [rw] timestamp
    #   The date and time, in ISO 8601 format, when the event occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :app_package_name,
      :app_title,
      :app_version_code,
      :attributes,
      :client_sdk_version,
      :event_type,
      :metrics,
      :sdk_name,
      :session,
      :timestamp)
      include Aws::Structure
    end

    # Specifies the conditions to evaluate for an event that applies to an
    # activity in a journey.
    #
    # @note When making an API call, you may pass EventCondition
    #   data as a hash:
    #
    #       {
    #         dimensions: { # required
    #           attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #           },
    #           event_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           metrics: {
    #             "__string" => {
    #               comparison_operator: "__string", # required
    #               value: 1.0, # required
    #             },
    #           },
    #         },
    #         message_activity: "__string",
    #       }
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the event filter to use for the activity.
    #   @return [Types::EventDimensions]
    #
    # @!attribute [rw] message_activity
    #   The message identifier (message\_id) for the message to use when
    #   determining whether message events meet the condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventCondition AWS API Documentation
    #
    class EventCondition < Struct.new(
      :dimensions,
      :message_activity)
      include Aws::Structure
    end

    # Specifies the dimensions for an event filter that determines when a
    # campaign is sent or a journey activity is performed.
    #
    # @note When making an API call, you may pass EventDimensions
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #         event_type: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attributes
    #   One or more custom attributes that your application reports to
    #   Amazon Pinpoint. You can use these attributes as selection criteria
    #   when you create an event filter.
    #   @return [Hash<String,Types::AttributeDimension>]
    #
    # @!attribute [rw] event_type
    #   The name of the event that causes the campaign to be sent or the
    #   journey activity to be performed. This can be a standard event that
    #   Amazon Pinpoint generates, such as \_email.delivered. For campaigns,
    #   this can also be a custom event that's specific to your
    #   application. For information about standard events, see [Streaming
    #   Amazon Pinpoint Events][1] in the *Amazon Pinpoint Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/developerguide/event-streams.html
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] metrics
    #   One or more custom metrics that your application reports to Amazon
    #   Pinpoint. You can use these metrics as selection criteria when you
    #   create an event filter.
    #   @return [Hash<String,Types::MetricDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventDimensions AWS API Documentation
    #
    class EventDimensions < Struct.new(
      :attributes,
      :event_type,
      :metrics)
      include Aws::Structure
    end

    # Provides the status code and message that result from processing an
    # event.
    #
    # @!attribute [rw] message
    #   A custom message that's returned in the response as a result of
    #   processing the event.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code that's returned in the response as a result of
    #   processing the event. Possible values are: 202, for events that were
    #   accepted; and, 400, for events that weren't valid.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventItemResponse AWS API Documentation
    #
    class EventItemResponse < Struct.new(
      :message,
      :status_code)
      include Aws::Structure
    end

    # Specifies settings for publishing event data to an Amazon Kinesis data
    # stream or an Amazon Kinesis Data Firehose delivery stream.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application to publish event data for.
    #   @return [String]
    #
    # @!attribute [rw] destination_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or
    #   Amazon Kinesis Data Firehose delivery stream to publish event data
    #   to.
    #
    #   For a Kinesis data stream, the ARN format is:
    #   arn:aws:kinesis:*region*\:*account-id*\:stream/*stream\_name*
    #
    #   For a Kinesis Data Firehose delivery stream, the ARN format is:
    #   arn:aws:firehose:*region*\:*account-id*\:deliverystream/*stream\_name*
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to an external
    #   ID key in an IAM trust policy. Amazon Pinpoint previously used this
    #   value to assume an IAM role when publishing event data, but we
    #   removed this requirement. We don't recommend use of external IDs
    #   for IAM roles that are assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the event stream was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The IAM user who last modified the event stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The AWS Identity and Access Management (IAM) role that authorizes
    #   Amazon Pinpoint to publish event data to the stream in your AWS
    #   account.
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

    # Specifies a batch of endpoints and events to process.
    #
    # @note When making an API call, you may pass EventsBatch
    #   data as a hash:
    #
    #       {
    #         endpoint: { # required
    #           address: "__string",
    #           attributes: {
    #             "__string" => ["__string"],
    #           },
    #           channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #         events: { # required
    #           "__string" => {
    #             app_package_name: "__string",
    #             app_title: "__string",
    #             app_version_code: "__string",
    #             attributes: {
    #               "__string" => "__string",
    #             },
    #             client_sdk_version: "__string",
    #             event_type: "__string", # required
    #             metrics: {
    #               "__string" => 1.0,
    #             },
    #             sdk_name: "__string",
    #             session: {
    #               duration: 1,
    #               id: "__string", # required
    #               start_timestamp: "__string", # required
    #               stop_timestamp: "__string",
    #             },
    #             timestamp: "__string", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] endpoint
    #   A set of properties and attributes that are associated with the
    #   endpoint.
    #   @return [Types::PublicEndpoint]
    #
    # @!attribute [rw] events
    #   A set of properties that are associated with the event.
    #   @return [Hash<String,Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventsBatch AWS API Documentation
    #
    class EventsBatch < Struct.new(
      :endpoint,
      :events)
      include Aws::Structure
    end

    # Specifies a batch of events to process.
    #
    # @note When making an API call, you may pass EventsRequest
    #   data as a hash:
    #
    #       {
    #         batch_item: { # required
    #           "__string" => {
    #             endpoint: { # required
    #               address: "__string",
    #               attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #             events: { # required
    #               "__string" => {
    #                 app_package_name: "__string",
    #                 app_title: "__string",
    #                 app_version_code: "__string",
    #                 attributes: {
    #                   "__string" => "__string",
    #                 },
    #                 client_sdk_version: "__string",
    #                 event_type: "__string", # required
    #                 metrics: {
    #                   "__string" => 1.0,
    #                 },
    #                 sdk_name: "__string",
    #                 session: {
    #                   duration: 1,
    #                   id: "__string", # required
    #                   start_timestamp: "__string", # required
    #                   stop_timestamp: "__string",
    #                 },
    #                 timestamp: "__string", # required
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] batch_item
    #   The batch of events to process. For each item in a batch, the
    #   endpoint ID acts as a key that has an EventsBatch object as its
    #   value.
    #   @return [Hash<String,Types::EventsBatch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventsRequest AWS API Documentation
    #
    class EventsRequest < Struct.new(
      :batch_item)
      include Aws::Structure
    end

    # Provides information about endpoints and the events that they're
    # associated with.
    #
    # @!attribute [rw] results
    #   A map that contains a multipart response for each endpoint. For each
    #   item in this object, the endpoint ID is the key and the item
    #   response is the value. If no item response exists, the value can
    #   also be one of the following: 202, the request was processed
    #   successfully; or 400, the payload wasn't valid or required fields
    #   were missing.
    #   @return [Hash<String,Types::ItemResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/EventsResponse AWS API Documentation
    #
    class EventsResponse < Struct.new(
      :results)
      include Aws::Structure
    end

    # Specifies the settings for a job that exports endpoint definitions to
    # an Amazon Simple Storage Service (Amazon S3) bucket.
    #
    # @note When making an API call, you may pass ExportJobRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "__string", # required
    #         s3_url_prefix: "__string", # required
    #         segment_id: "__string",
    #         segment_version: 1,
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon Pinpoint to access the
    #   Amazon S3 location where you want to export endpoint definitions to.
    #   @return [String]
    #
    # @!attribute [rw] s3_url_prefix
    #   The URL of the location in an Amazon Simple Storage Service (Amazon
    #   S3) bucket where you want to export endpoint definitions to. This
    #   location is typically a folder that contains multiple files. The URL
    #   should be in the following format:
    #   s3://*bucket-name*/*folder-name*/.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The identifier for the segment to export endpoint definitions from.
    #   If you don't specify this value, Amazon Pinpoint exports
    #   definitions for all the endpoints that are associated with the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to export endpoint definitions from, if
    #   specified.
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

    # Provides information about the resource settings for a job that
    # exports endpoint definitions to a file. The file can be added directly
    # to an Amazon Simple Storage Service (Amazon S3) bucket by using the
    # Amazon Pinpoint API or downloaded directly to a computer by using the
    # Amazon Pinpoint console.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorized Amazon Pinpoint to access the
    #   Amazon S3 location where the endpoint definitions were exported to.
    #   @return [String]
    #
    # @!attribute [rw] s3_url_prefix
    #   The URL of the location in an Amazon Simple Storage Service (Amazon
    #   S3) bucket where the endpoint definitions were exported to. This
    #   location is typically a folder that contains multiple files. The URL
    #   should be in the following format:
    #   s3://*bucket-name*/*folder-name*/.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The identifier for the segment that the endpoint definitions were
    #   exported from. If this value isn't present, Amazon Pinpoint
    #   exported definitions for all the endpoints that are associated with
    #   the application.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment that the endpoint definitions were
    #   exported from.
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

    # Provides information about the status and settings of a job that
    # exports endpoint definitions to a file. The file can be added directly
    # to an Amazon Simple Storage Service (Amazon S3) bucket by using the
    # Amazon Pinpoint API or downloaded directly to a computer by using the
    # Amazon Pinpoint console.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that's associated with
    #   the export job.
    #   @return [String]
    #
    # @!attribute [rw] completed_pieces
    #   The number of pieces that were processed successfully (completed) by
    #   the export job, as of the time of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_date
    #   The date, in ISO 8601 format, when the export job was completed.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the export job was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The resource settings that apply to the export job.
    #   @return [Types::ExportJobResource]
    #
    # @!attribute [rw] failed_pieces
    #   The number of pieces that weren't processed successfully (failed)
    #   by the export job, as of the time of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] failures
    #   An array of entries, one for each of the first 100 entries that
    #   weren't processed successfully (failed) by the export job, if any.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique identifier for the export job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the export job. The job status is FAILED if Amazon
    #   Pinpoint wasn't able to process one or more pieces in the job.
    #   @return [String]
    #
    # @!attribute [rw] total_failures
    #   The total number of endpoint definitions that weren't processed
    #   successfully (failed) by the export job, typically because an error,
    #   such as a syntax error, occurred.
    #   @return [Integer]
    #
    # @!attribute [rw] total_pieces
    #   The total number of pieces that must be processed to complete the
    #   export job. Each piece consists of an approximately equal portion of
    #   the endpoint definitions that are part of the export job.
    #   @return [Integer]
    #
    # @!attribute [rw] total_processed
    #   The total number of endpoint definitions that were processed by the
    #   export job.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The job type. This value is EXPORT for export jobs.
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

    # Provides information about all the export jobs that are associated
    # with an application or segment. An export job is a job that exports
    # endpoint definitions to a file.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each export job that's associated
    #   with the application (Export Jobs resource) or segment (Segment
    #   Export Jobs resource).
    #   @return [Array<Types::ExportJobResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ExportJobsResponse AWS API Documentation
    #
    class ExportJobsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Specifies the status and settings of the GCM channel for an
    # application. This channel enables Amazon Pinpoint to send push
    # notifications through the Firebase Cloud Messaging (FCM), formerly
    # Google Cloud Messaging (GCM), service.
    #
    # @note When making an API call, you may pass GCMChannelRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "__string", # required
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] api_key
    #   The Web API Key, also referred to as an *API\_KEY* or *server key*,
    #   that you received from Google to communicate with Google services.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the GCM channel for the application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GCMChannelRequest AWS API Documentation
    #
    class GCMChannelRequest < Struct.new(
      :api_key,
      :enabled)
      include Aws::Structure
    end

    # Provides information about the status and settings of the GCM channel
    # for an application. The GCM channel enables Amazon Pinpoint to send
    # push notifications through the Firebase Cloud Messaging (FCM),
    # formerly Google Cloud Messaging (GCM), service.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the GCM channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the GCM channel was enabled.
    #   @return [String]
    #
    # @!attribute [rw] credential
    #   The Web API Key, also referred to as an *API\_KEY* or *server key*,
    #   that you received from Google to communicate with Google services.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the GCM channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the GCM channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the GCM channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the GCM channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time when the GCM channel was last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the GCM channel, this value is GCM.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the GCM channel.
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

    # Specifies the settings for a one-time message that's sent directly to
    # an endpoint through the GCM channel. The GCM channel enables Amazon
    # Pinpoint to send messages to the Firebase Cloud Messaging (FCM),
    # formerly Google Cloud Messaging (GCM), service.
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
    #   The action to occur if the recipient taps the push notification.
    #   Valid values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This action uses the deep-linking features
    #     of the Android platform.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body of the notification message.
    #   @return [String]
    #
    # @!attribute [rw] collapse_key
    #   An arbitrary string that identifies a group of messages that can be
    #   collapsed to ensure that only the last message is sent when delivery
    #   can resume. This helps avoid sending too many instances of the same
    #   messages when the recipient's device comes online again or becomes
    #   active.
    #
    #   Amazon Pinpoint specifies this value in the Firebase Cloud Messaging
    #   (FCM) collapse\_key parameter when it sends the notification message
    #   to FCM.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The JSON data payload to use for the push notification, if the
    #   notification is a silent push notification. This payload is added to
    #   the data.pinpoint.jsonBody object of the notification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] icon_reference
    #   The icon image name of the asset saved in your app.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL of the large icon image to display in the content view of
    #   the push notification.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image to display in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   para>normal - The notification might be delayed. Delivery is
    #   optimized for battery usage on the recipient's device. Use this
    #   value unless immediate delivery is required.
    #
    #   /listitem> 3.  high - The notification is sent immediately and might wake a
    #       sleeping device.
    #
    #   /para> Amazon Pinpoint specifies this value in the FCM priority parameter
    #   when it sends the notification message to FCM.
    #
    #   The equivalent values for Apple Push Notification service (APNs) are
    #   5, for normal, and 10, for high. If you specify an APNs value for
    #   this property, Amazon Pinpoint accepts and converts the value to the
    #   corresponding FCM value.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for the
    #   notification message. If specified, this value overrides all other
    #   content for the message.
    #   @return [String]
    #
    # @!attribute [rw] restricted_package_name
    #   The package name of the application where registration tokens must
    #   match in order for the recipient to receive the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Specifies whether the notification is a silent push notification,
    #   which is a push notification that doesn't display on a recipient's
    #   device. Silent push notifications can be used for cases such as
    #   updating an app's configuration or supporting phone home
    #   functionality.
    #   @return [Boolean]
    #
    # @!attribute [rw] small_image_icon_url
    #   The URL of the small icon image to display in the status bar and the
    #   content view of the push notification.
    #   @return [String]
    #
    # @!attribute [rw] sound
    #   The sound to play when the recipient receives the push notification.
    #   You can use the default stream or specify the file name of a sound
    #   resource that's bundled in your app. On an Android platform, the
    #   sound file must reside in /res/raw/.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the notification message.
    #   You can override the default variables with individual address
    #   variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] time_to_live
    #   The amount of time, in seconds, that FCM should store and attempt to
    #   deliver the push notification, if the service is unable to deliver
    #   the notification the first time. If you don't specify this value,
    #   FCM defaults to the maximum value, which is 2,419,200 seconds (28
    #   days).
    #
    #   Amazon Pinpoint specifies this value in the FCM time\_to\_live
    #   parameter when it sends the notification message to FCM.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The title to display above the notification message on the
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in the recipient's default mobile browser, if a
    #   recipient taps the push notification and the value of the Action
    #   property is URL.
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

    # Specifies the GPS coordinates of a location.
    #
    # @note When making an API call, you may pass GPSCoordinates
    #   data as a hash:
    #
    #       {
    #         latitude: 1.0, # required
    #         longitude: 1.0, # required
    #       }
    #
    # @!attribute [rw] latitude
    #   The latitude coordinate of the location.
    #   @return [Float]
    #
    # @!attribute [rw] longitude
    #   The longitude coordinate of the location.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GPSCoordinates AWS API Documentation
    #
    class GPSCoordinates < Struct.new(
      :latitude,
      :longitude)
      include Aws::Structure
    end

    # Specifies GPS-based criteria for including or excluding endpoints from
    # a segment.
    #
    # @note When making an API call, you may pass GPSPointDimension
    #   data as a hash:
    #
    #       {
    #         coordinates: { # required
    #           latitude: 1.0, # required
    #           longitude: 1.0, # required
    #         },
    #         range_in_kilometers: 1.0,
    #       }
    #
    # @!attribute [rw] coordinates
    #   The GPS coordinates to measure distance from.
    #   @return [Types::GPSCoordinates]
    #
    # @!attribute [rw] range_in_kilometers
    #   The range, in kilometers, from the GPS coordinates.
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
    #   Provides information about the status and settings of the ADM
    #   (Amazon Device Messaging) channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) sandbox channel for an
    #   application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) VoIP channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) VoIP sandbox channel for an
    #   application.
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
    #   Provides information about an application.
    #   @return [Types::ApplicationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetAppResponse AWS API Documentation
    #
    class GetAppResponse < Struct.new(
      :application_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApplicationDateRangeKpiRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         end_time: Time.now,
    #         kpi_name: "__string", # required
    #         next_token: "__string",
    #         page_size: "__string",
    #         start_time: Time.now,
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] kpi_name
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApplicationDateRangeKpiRequest AWS API Documentation
    #
    class GetApplicationDateRangeKpiRequest < Struct.new(
      :application_id,
      :end_time,
      :kpi_name,
      :next_token,
      :page_size,
      :start_time)
      include Aws::Structure
    end

    # @!attribute [rw] application_date_range_kpi_response
    #   Provides the results of a query that retrieved the data for a
    #   standard metric that applies to an application, and provides
    #   information about that query.
    #   @return [Types::ApplicationDateRangeKpiResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApplicationDateRangeKpiResponse AWS API Documentation
    #
    class GetApplicationDateRangeKpiResponse < Struct.new(
      :application_date_range_kpi_response)
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
    #   Provides information about an application, including the default
    #   settings for an application.
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
    #   Provides information about all of your applications.
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
    #   Provides information about the status and settings of the Baidu
    #   (Baidu Cloud Push) channel for an application.
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
    #   Provides information about the activities that were performed by a
    #   campaign.
    #   @return [Types::ActivitiesResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignActivitiesResponse AWS API Documentation
    #
    class GetCampaignActivitiesResponse < Struct.new(
      :activities_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCampaignDateRangeKpiRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         campaign_id: "__string", # required
    #         end_time: Time.now,
    #         kpi_name: "__string", # required
    #         next_token: "__string",
    #         page_size: "__string",
    #         start_time: Time.now,
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] kpi_name
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignDateRangeKpiRequest AWS API Documentation
    #
    class GetCampaignDateRangeKpiRequest < Struct.new(
      :application_id,
      :campaign_id,
      :end_time,
      :kpi_name,
      :next_token,
      :page_size,
      :start_time)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_date_range_kpi_response
    #   Provides the results of a query that retrieved the data for a
    #   standard metric that applies to a campaign, and provides information
    #   about that query.
    #   @return [Types::CampaignDateRangeKpiResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignDateRangeKpiResponse AWS API Documentation
    #
    class GetCampaignDateRangeKpiResponse < Struct.new(
      :campaign_date_range_kpi_response)
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
    #   Provides information about the status, configuration, and other
    #   settings for a campaign.
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
    #   Provides information about the status, configuration, and other
    #   settings for a campaign.
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
    #   Provides information about the configuration and other settings for
    #   all the campaigns that are associated with an application.
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
    #   Provides information about the configuration and other settings for
    #   all the campaigns that are associated with an application.
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
    #   Provides information about the general settings and status of all
    #   channels for an application, including channels that aren't enabled
    #   for the application.
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
    #   Provides information about the status and settings of the email
    #   channel for an application.
    #   @return [Types::EmailChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailChannelResponse AWS API Documentation
    #
    class GetEmailChannelResponse < Struct.new(
      :email_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailTemplateRequest AWS API Documentation
    #
    class GetEmailTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] email_template_response
    #   Provides information about the content and settings for a message
    #   template that can be used in messages that are sent through the
    #   email channel.
    #   @return [Types::EmailTemplateResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailTemplateResponse AWS API Documentation
    #
    class GetEmailTemplateResponse < Struct.new(
      :email_template_response)
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
    #   Provides information about the channel type and other settings for
    #   an endpoint.
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
    #   Specifies settings for publishing event data to an Amazon Kinesis
    #   data stream or an Amazon Kinesis Data Firehose delivery stream.
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
    #   Provides information about the status and settings of a job that
    #   exports endpoint definitions to a file. The file can be added
    #   directly to an Amazon Simple Storage Service (Amazon S3) bucket by
    #   using the Amazon Pinpoint API or downloaded directly to a computer
    #   by using the Amazon Pinpoint console.
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
    #   Provides information about all the export jobs that are associated
    #   with an application or segment. An export job is a job that exports
    #   endpoint definitions to a file.
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
    #   Provides information about the status and settings of the GCM
    #   channel for an application. The GCM channel enables Amazon Pinpoint
    #   to send push notifications through the Firebase Cloud Messaging
    #   (FCM), formerly Google Cloud Messaging (GCM), service.
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
    #   Provides information about the status and settings of a job that
    #   imports endpoint definitions from one or more files. The files can
    #   be stored in an Amazon Simple Storage Service (Amazon S3) bucket or
    #   uploaded directly from a computer by using the Amazon Pinpoint
    #   console.
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
    #   Provides information about the status and settings of all the import
    #   jobs that are associated with an application or segment. An import
    #   job is a job that imports endpoint definitions from one or more
    #   files.
    #   @return [Types::ImportJobsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJobsResponse AWS API Documentation
    #
    class GetImportJobsResponse < Struct.new(
      :import_jobs_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJourneyDateRangeKpiRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         end_time: Time.now,
    #         journey_id: "__string", # required
    #         kpi_name: "__string", # required
    #         next_token: "__string",
    #         page_size: "__string",
    #         start_time: Time.now,
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] journey_id
    #   @return [String]
    #
    # @!attribute [rw] kpi_name
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyDateRangeKpiRequest AWS API Documentation
    #
    class GetJourneyDateRangeKpiRequest < Struct.new(
      :application_id,
      :end_time,
      :journey_id,
      :kpi_name,
      :next_token,
      :page_size,
      :start_time)
      include Aws::Structure
    end

    # @!attribute [rw] journey_date_range_kpi_response
    #   Provides the results of a query that retrieved the data for a
    #   standard engagement metric that applies to a journey, and provides
    #   information about that query.
    #   @return [Types::JourneyDateRangeKpiResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyDateRangeKpiResponse AWS API Documentation
    #
    class GetJourneyDateRangeKpiResponse < Struct.new(
      :journey_date_range_kpi_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJourneyExecutionActivityMetricsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         journey_activity_id: "__string", # required
    #         journey_id: "__string", # required
    #         next_token: "__string",
    #         page_size: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] journey_activity_id
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyExecutionActivityMetricsRequest AWS API Documentation
    #
    class GetJourneyExecutionActivityMetricsRequest < Struct.new(
      :application_id,
      :journey_activity_id,
      :journey_id,
      :next_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] journey_execution_activity_metrics_response
    #   Provides the results of a query that retrieved the data for a
    #   standard execution metric that applies to a journey activity, and
    #   provides information about that query.
    #   @return [Types::JourneyExecutionActivityMetricsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyExecutionActivityMetricsResponse AWS API Documentation
    #
    class GetJourneyExecutionActivityMetricsResponse < Struct.new(
      :journey_execution_activity_metrics_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJourneyExecutionMetricsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         journey_id: "__string", # required
    #         next_token: "__string",
    #         page_size: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyExecutionMetricsRequest AWS API Documentation
    #
    class GetJourneyExecutionMetricsRequest < Struct.new(
      :application_id,
      :journey_id,
      :next_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] journey_execution_metrics_response
    #   Provides the results of a query that retrieved the data for a
    #   standard execution metric that applies to a journey, and provides
    #   information about that query.
    #   @return [Types::JourneyExecutionMetricsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyExecutionMetricsResponse AWS API Documentation
    #
    class GetJourneyExecutionMetricsResponse < Struct.new(
      :journey_execution_metrics_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJourneyRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         journey_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyRequest AWS API Documentation
    #
    class GetJourneyRequest < Struct.new(
      :application_id,
      :journey_id)
      include Aws::Structure
    end

    # @!attribute [rw] journey_response
    #   Provides information about the status, configuration, and other
    #   settings for a journey.
    #   @return [Types::JourneyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetJourneyResponse AWS API Documentation
    #
    class GetJourneyResponse < Struct.new(
      :journey_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPushTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetPushTemplateRequest AWS API Documentation
    #
    class GetPushTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] push_notification_template_response
    #   Provides information about the content and settings for a message
    #   template that can be used in messages that are sent through a push
    #   notification channel.
    #   @return [Types::PushNotificationTemplateResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetPushTemplateResponse AWS API Documentation
    #
    class GetPushTemplateResponse < Struct.new(
      :push_notification_template_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecommenderConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         recommender_id: "__string", # required
    #       }
    #
    # @!attribute [rw] recommender_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetRecommenderConfigurationRequest AWS API Documentation
    #
    class GetRecommenderConfigurationRequest < Struct.new(
      :recommender_id)
      include Aws::Structure
    end

    # @!attribute [rw] recommender_configuration_response
    #   Provides information about Amazon Pinpoint configuration settings
    #   for retrieving and processing data from a recommender model.
    #   @return [Types::RecommenderConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetRecommenderConfigurationResponse AWS API Documentation
    #
    class GetRecommenderConfigurationResponse < Struct.new(
      :recommender_configuration_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecommenderConfigurationsRequest
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetRecommenderConfigurationsRequest AWS API Documentation
    #
    class GetRecommenderConfigurationsRequest < Struct.new(
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] list_recommender_configurations_response
    #   Provides information about all the recommender model configurations
    #   that are associated with your Amazon Pinpoint account.
    #   @return [Types::ListRecommenderConfigurationsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetRecommenderConfigurationsResponse AWS API Documentation
    #
    class GetRecommenderConfigurationsResponse < Struct.new(
      :list_recommender_configurations_response)
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
    #   Provides information about all the export jobs that are associated
    #   with an application or segment. An export job is a job that exports
    #   endpoint definitions to a file.
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
    #   Provides information about the status and settings of all the import
    #   jobs that are associated with an application or segment. An import
    #   job is a job that imports endpoint definitions from one or more
    #   files.
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
    #   Provides information about the configuration, dimension, and other
    #   settings for a segment.
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
    #   Provides information about the configuration, dimension, and other
    #   settings for a segment.
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
    #   Provides information about all the segments that are associated with
    #   an application.
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
    #   Provides information about all the segments that are associated with
    #   an application.
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
    #   Provides information about the status and settings of the SMS
    #   channel for an application.
    #   @return [Types::SMSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsChannelResponse AWS API Documentation
    #
    class GetSmsChannelResponse < Struct.new(
      :sms_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSmsTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsTemplateRequest AWS API Documentation
    #
    class GetSmsTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] sms_template_response
    #   Provides information about the content and settings for a message
    #   template that can be used in text messages that are sent through the
    #   SMS channel.
    #   @return [Types::SMSTemplateResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsTemplateResponse AWS API Documentation
    #
    class GetSmsTemplateResponse < Struct.new(
      :sms_template_response)
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
    #   Provides information about all the endpoints that are associated
    #   with a user ID.
    #   @return [Types::EndpointsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetUserEndpointsResponse AWS API Documentation
    #
    class GetUserEndpointsResponse < Struct.new(
      :endpoints_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetVoiceChannelRequest AWS API Documentation
    #
    class GetVoiceChannelRequest < Struct.new(
      :application_id)
      include Aws::Structure
    end

    # @!attribute [rw] voice_channel_response
    #   Provides information about the status and settings of the voice
    #   channel for an application.
    #   @return [Types::VoiceChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetVoiceChannelResponse AWS API Documentation
    #
    class GetVoiceChannelResponse < Struct.new(
      :voice_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetVoiceTemplateRequest AWS API Documentation
    #
    class GetVoiceTemplateRequest < Struct.new(
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] voice_template_response
    #   Provides information about the content and settings for a message
    #   template that can be used in messages that are sent through the
    #   voice channel.
    #   @return [Types::VoiceTemplateResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetVoiceTemplateResponse AWS API Documentation
    #
    class GetVoiceTemplateResponse < Struct.new(
      :voice_template_response)
      include Aws::Structure
    end

    # Specifies the settings for a holdout activity in a journey. This type
    # of activity stops a journey for a specified percentage of
    # participants.
    #
    # @note When making an API call, you may pass HoldoutActivity
    #   data as a hash:
    #
    #       {
    #         next_activity: "__string",
    #         percentage: 1, # required
    #       }
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after
    #   performing the holdout activity.
    #   @return [String]
    #
    # @!attribute [rw] percentage
    #   The percentage of participants who shouldn't continue the journey.
    #
    #   To determine which participants are held out, Amazon Pinpoint
    #   applies a probability-based algorithm to the percentage that you
    #   specify. Therefore, the actual percentage of participants who are
    #   held out may not be equal to the percentage that you specify.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/HoldoutActivity AWS API Documentation
    #
    class HoldoutActivity < Struct.new(
      :next_activity,
      :percentage)
      include Aws::Structure
    end

    # Specifies the settings for a job that imports endpoint definitions
    # from an Amazon Simple Storage Service (Amazon S3) bucket.
    #
    # @note When making an API call, you may pass ImportJobRequest
    #   data as a hash:
    #
    #       {
    #         define_segment: false,
    #         external_id: "__string",
    #         format: "CSV", # required, accepts CSV, JSON
    #         register_endpoints: false,
    #         role_arn: "__string", # required
    #         s3_url: "__string", # required
    #         segment_id: "__string",
    #         segment_name: "__string",
    #       }
    #
    # @!attribute [rw] define_segment
    #   Specifies whether to create a segment that contains the endpoints,
    #   when the endpoint definitions are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to an external
    #   ID key in an IAM trust policy. Amazon Pinpoint previously used this
    #   value to assume an IAM role when importing endpoint definitions, but
    #   we removed this requirement. We don't recommend use of external IDs
    #   for IAM roles that are assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the files that contain the endpoint definitions to
    #   import. Valid values are: CSV, for comma-separated values format;
    #   and, JSON, for newline-delimited JSON format. If the Amazon S3
    #   location stores multiple files that use different formats, Amazon
    #   Pinpoint imports data only from the files that use the specified
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] register_endpoints
    #   Specifies whether to register the endpoints with Amazon Pinpoint,
    #   when the endpoint definitions are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon Pinpoint to access the
    #   Amazon S3 location to import endpoint definitions from.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL of the Amazon Simple Storage Service (Amazon S3) bucket that
    #   contains the endpoint definitions to import. This location can be a
    #   folder or a single file. If the location is a folder, Amazon
    #   Pinpoint imports endpoint definitions from the files in this
    #   location, including any subfolders that the folder contains.
    #
    #   The URL should be in the following format:
    #   s3://*bucket-name*/*folder-name*/*file-name*. The location can end
    #   with the key for an individual object or a prefix that qualifies
    #   multiple objects.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The identifier for the segment to update or add the imported
    #   endpoint definitions to, if the import job is meant to update an
    #   existing segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   A custom name for the segment that's created by the import job, if
    #   the value of the DefineSegment property is true.
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

    # Provides information about the resource settings for a job that
    # imports endpoint definitions from one or more files. The files can be
    # stored in an Amazon Simple Storage Service (Amazon S3) bucket or
    # uploaded directly from a computer by using the Amazon Pinpoint
    # console.
    #
    # @!attribute [rw] define_segment
    #   Specifies whether the import job creates a segment that contains the
    #   endpoints, when the endpoint definitions are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to an external
    #   ID key in an IAM trust policy. Amazon Pinpoint previously used this
    #   value to assume an IAM role when importing endpoint definitions, but
    #   we removed this requirement. We don't recommend use of external IDs
    #   for IAM roles that are assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the files that contain the endpoint definitions to
    #   import. Valid values are: CSV, for comma-separated values format;
    #   and, JSON, for newline-delimited JSON format.
    #
    #   If the files are stored in an Amazon S3 location and that location
    #   contains multiple files that use different formats, Amazon Pinpoint
    #   imports data only from the files that use the specified format.
    #   @return [String]
    #
    # @!attribute [rw] register_endpoints
    #   Specifies whether the import job registers the endpoints with Amazon
    #   Pinpoint, when the endpoint definitions are imported.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon Pinpoint to access the
    #   Amazon S3 location to import endpoint definitions from.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL of the Amazon Simple Storage Service (Amazon S3) bucket that
    #   contains the endpoint definitions to import. This location can be a
    #   folder or a single file. If the location is a folder, Amazon
    #   Pinpoint imports endpoint definitions from the files in this
    #   location, including any subfolders that the folder contains.
    #
    #   The URL should be in the following format:
    #   s3://*bucket-name*/*folder-name*/*file-name*. The location can end
    #   with the key for an individual object or a prefix that qualifies
    #   multiple objects.
    #   @return [String]
    #
    # @!attribute [rw] segment_id
    #   The identifier for the segment that the import job updates or adds
    #   endpoint definitions to, if the import job updates an existing
    #   segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   The custom name for the segment that's created by the import job,
    #   if the value of the DefineSegment property is true.
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

    # Provides information about the status and settings of a job that
    # imports endpoint definitions from one or more files. The files can be
    # stored in an Amazon Simple Storage Service (Amazon S3) bucket or
    # uploaded directly from a computer by using the Amazon Pinpoint
    # console.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that's associated with
    #   the import job.
    #   @return [String]
    #
    # @!attribute [rw] completed_pieces
    #   The number of pieces that were processed successfully (completed) by
    #   the import job, as of the time of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_date
    #   The date, in ISO 8601 format, when the import job was completed.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the import job was created.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The resource settings that apply to the import job.
    #   @return [Types::ImportJobResource]
    #
    # @!attribute [rw] failed_pieces
    #   The number of pieces that weren't processed successfully (failed)
    #   by the import job, as of the time of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] failures
    #   An array of entries, one for each of the first 100 entries that
    #   weren't processed successfully (failed) by the import job, if any.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   The unique identifier for the import job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the import job. The job status is FAILED if Amazon
    #   Pinpoint wasn't able to process one or more pieces in the job.
    #   @return [String]
    #
    # @!attribute [rw] total_failures
    #   The total number of endpoint definitions that weren't processed
    #   successfully (failed) by the import job, typically because an error,
    #   such as a syntax error, occurred.
    #   @return [Integer]
    #
    # @!attribute [rw] total_pieces
    #   The total number of pieces that must be processed to complete the
    #   import job. Each piece consists of an approximately equal portion of
    #   the endpoint definitions that are part of the import job.
    #   @return [Integer]
    #
    # @!attribute [rw] total_processed
    #   The total number of endpoint definitions that were processed by the
    #   import job.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The job type. This value is IMPORT for import jobs.
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

    # Provides information about the status and settings of all the import
    # jobs that are associated with an application or segment. An import job
    # is a job that imports endpoint definitions from one or more files.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each import job that's associated
    #   with the application (Import Jobs resource) or segment (Segment
    #   Import Jobs resource).
    #   @return [Array<Types::ImportJobResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ImportJobsResponse AWS API Documentation
    #
    class ImportJobsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Provides information about the results of a request to create or
    # update an endpoint that's associated with an event.
    #
    # @!attribute [rw] endpoint_item_response
    #   The response that was received after the endpoint data was accepted.
    #   @return [Types::EndpointItemResponse]
    #
    # @!attribute [rw] events_item_response
    #   A multipart response object that contains a key and a value for each
    #   event in the request. In each object, the event ID is the key and an
    #   EventItemResponse object is the value.
    #   @return [Hash<String,Types::EventItemResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ItemResponse AWS API Documentation
    #
    class ItemResponse < Struct.new(
      :endpoint_item_response,
      :events_item_response)
      include Aws::Structure
    end

    # Specifies the message content for a custom channel message that's
    # sent to participants in a journey.
    #
    # @note When making an API call, you may pass JourneyCustomMessage
    #   data as a hash:
    #
    #       {
    #         data: "__string",
    #       }
    #
    # @!attribute [rw] data
    #   The message content that's passed to an AWS Lambda function or to a
    #   web hook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyCustomMessage AWS API Documentation
    #
    class JourneyCustomMessage < Struct.new(
      :data)
      include Aws::Structure
    end

    # Provides the results of a query that retrieved the data for a standard
    # engagement metric that applies to a journey, and provides information
    # about that query.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the metric applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The last date and time of the date range that was used to filter the
    #   query results, in extended ISO 8601 format. The date range is
    #   inclusive.
    #   @return [Time]
    #
    # @!attribute [rw] journey_id
    #   The unique identifier for the journey that the metric applies to.
    #   @return [String]
    #
    # @!attribute [rw] kpi_name
    #   The name of the metric, also referred to as a *key performance
    #   indicator (KPI)*, that the data was retrieved for. This value
    #   describes the associated metric and consists of two or more terms,
    #   which are comprised of lowercase alphanumeric characters, separated
    #   by a hyphen. For a list of possible values, see the [Amazon Pinpoint
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html
    #   @return [String]
    #
    # @!attribute [rw] kpi_result
    #   An array of objects that contains the results of the query. Each
    #   object contains the value for the metric and metadata about that
    #   value.
    #   @return [Types::BaseKpiResult]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null for the Journey
    #   Engagement Metrics resource because the resource returns all results
    #   in a single page.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The first date and time of the date range that was used to filter
    #   the query results, in extended ISO 8601 format. The date range is
    #   inclusive.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyDateRangeKpiResponse AWS API Documentation
    #
    class JourneyDateRangeKpiResponse < Struct.new(
      :application_id,
      :end_time,
      :journey_id,
      :kpi_name,
      :kpi_result,
      :next_token,
      :start_time)
      include Aws::Structure
    end

    # Specifies the "From" address for an email message that's sent to
    # participants in a journey.
    #
    # @note When making an API call, you may pass JourneyEmailMessage
    #   data as a hash:
    #
    #       {
    #         from_address: "__string",
    #       }
    #
    # @!attribute [rw] from_address
    #   The verified email address to send the email message from. The
    #   default address is the FromAddress specified for the email channel
    #   for the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyEmailMessage AWS API Documentation
    #
    class JourneyEmailMessage < Struct.new(
      :from_address)
      include Aws::Structure
    end

    # Provides the results of a query that retrieved the data for a standard
    # execution metric that applies to a journey activity, and provides
    # information about that query.
    #
    # @!attribute [rw] activity_type
    #   The type of activity that the metric applies to. Possible values
    #   are:
    #
    #   * CONDITIONAL\_SPLIT - For a yes/no split activity, which is an
    #     activity that sends participants down one of two paths in a
    #     journey.
    #
    #   * HOLDOUT - For a holdout activity, which is an activity that stops
    #     a journey for a specified percentage of participants.
    #
    #   * MESSAGE - For an email activity, which is an activity that sends
    #     an email message to participants.
    #
    #   * MULTI\_CONDITIONAL\_SPLIT - For a multivariate split activity,
    #     which is an activity that sends participants down one of as many
    #     as five paths in a journey.
    #
    #   * RANDOM\_SPLIT - For a random split activity, which is an activity
    #     that sends specified percentages of participants down one of as
    #     many as five paths in a journey.
    #
    #   * WAIT - For a wait activity, which is an activity that waits for a
    #     certain amount of time or until a specific date and time before
    #     moving participants to the next activity in a journey.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the metric applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] journey_activity_id
    #   The unique identifier for the activity that the metric applies to.
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   The unique identifier for the journey that the metric applies to.
    #   @return [String]
    #
    # @!attribute [rw] last_evaluated_time
    #   The date and time, in ISO 8601 format, when Amazon Pinpoint last
    #   evaluated the execution status of the activity and updated the data
    #   for the metric.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   A JSON object that contains the results of the query. The results
    #   vary depending on the type of activity (ActivityType). For
    #   information about the structure and contents of the results, see the
    #   [Amazon Pinpoint Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyExecutionActivityMetricsResponse AWS API Documentation
    #
    class JourneyExecutionActivityMetricsResponse < Struct.new(
      :activity_type,
      :application_id,
      :journey_activity_id,
      :journey_id,
      :last_evaluated_time,
      :metrics)
      include Aws::Structure
    end

    # Provides the results of a query that retrieved the data for a standard
    # execution metric that applies to a journey, and provides information
    # about that query.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the metric applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   The unique identifier for the journey that the metric applies to.
    #   @return [String]
    #
    # @!attribute [rw] last_evaluated_time
    #   The date and time, in ISO 8601 format, when Amazon Pinpoint last
    #   evaluated the journey and updated the data for the metric.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   A JSON object that contains the results of the query. For
    #   information about the structure and contents of the results, see the
    #   [Amazon Pinpoint Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyExecutionMetricsResponse AWS API Documentation
    #
    class JourneyExecutionMetricsResponse < Struct.new(
      :application_id,
      :journey_id,
      :last_evaluated_time,
      :metrics)
      include Aws::Structure
    end

    # Specifies limits on the messages that a journey can send and the
    # number of times participants can enter a journey.
    #
    # @note When making an API call, you may pass JourneyLimits
    #   data as a hash:
    #
    #       {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #       }
    #
    # @!attribute [rw] daily_cap
    #   The maximum number of messages that the journey can send to a single
    #   participant during a 24-hour period. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint_reentry_cap
    #   The maximum number of times that a participant can enter the
    #   journey. The maximum value is 100. To allow participants to enter
    #   the journey an unlimited number of times, set this value to 0.
    #   @return [Integer]
    #
    # @!attribute [rw] messages_per_second
    #   The maximum number of messages that the journey can send each
    #   second.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyLimits AWS API Documentation
    #
    class JourneyLimits < Struct.new(
      :daily_cap,
      :endpoint_reentry_cap,
      :messages_per_second)
      include Aws::Structure
    end

    # Specifies the message configuration for a push notification that's
    # sent to participants in a journey.
    #
    # @note When making an API call, you may pass JourneyPushMessage
    #   data as a hash:
    #
    #       {
    #         time_to_live: "__string",
    #       }
    #
    # @!attribute [rw] time_to_live
    #   The number of seconds that the push notification service should keep
    #   the message, if the service is unable to deliver the notification
    #   the first time. This value is converted to an expiration value when
    #   it's sent to a push-notification service. If this value is 0, the
    #   service treats the notification as if it expires immediately and the
    #   service doesn't store or try to deliver the notification again.
    #
    #   This value doesn't apply to messages that are sent through the
    #   Amazon Device Messaging (ADM) service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyPushMessage AWS API Documentation
    #
    class JourneyPushMessage < Struct.new(
      :time_to_live)
      include Aws::Structure
    end

    # Provides information about the status, configuration, and other
    # settings for a journey.
    #
    # @!attribute [rw] activities
    #   A map that contains a set of Activity objects, one object for each
    #   activity in the journey. For each Activity object, the key is the
    #   unique identifier (string) for an activity and the value is the
    #   settings for the activity.
    #   @return [Hash<String,Types::Activity>]
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the journey applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the journey was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the journey.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the journey was last modified.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The messaging and entry limits for the journey.
    #   @return [Types::JourneyLimits]
    #
    # @!attribute [rw] local_time
    #   Specifies whether the journey's scheduled start and end times use
    #   each participant's local time. If this value is true, the schedule
    #   uses each participant's local time.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the journey.
    #   @return [String]
    #
    # @!attribute [rw] quiet_time
    #   The quiet time settings for the journey. Quiet time is a specific
    #   time range when a journey doesn't send messages to participants, if
    #   all the following conditions are met:
    #
    #   * The EndpointDemographic.Timezone property of the endpoint for the
    #     participant is set to a valid value.
    #
    #   * The current time in the participant's time zone is later than or
    #     equal to the time specified by the QuietTime.Start property for
    #     the journey.
    #
    #   * The current time in the participant's time zone is earlier than
    #     or equal to the time specified by the QuietTime.End property for
    #     the journey.
    #
    #   If any of the preceding conditions isn't met, the participant will
    #   receive messages from the journey, even if quiet time is enabled.
    #   @return [Types::QuietTime]
    #
    # @!attribute [rw] refresh_frequency
    #   The frequency with which Amazon Pinpoint evaluates segment and event
    #   data for the journey, as a duration in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule settings for the journey.
    #   @return [Types::JourneySchedule]
    #
    # @!attribute [rw] start_activity
    #   The unique identifier for the first activity in the journey.
    #   @return [String]
    #
    # @!attribute [rw] start_condition
    #   The segment that defines which users are participants in the
    #   journey.
    #   @return [Types::StartCondition]
    #
    # @!attribute [rw] state
    #   The current status of the journey. Possible values are:
    #
    #   * DRAFT - The journey is being developed and hasn't been published
    #     yet.
    #
    #   * ACTIVE - The journey has been developed and published. Depending
    #     on the journey's schedule, the journey may currently be running
    #     or scheduled to start running at a later time. If a journey's
    #     status is ACTIVE, you can't add, change, or remove activities
    #     from it.
    #
    #   * COMPLETED - The journey has been published and has finished
    #     running. All participants have entered the journey and no
    #     participants are waiting to complete the journey or any activities
    #     in the journey.
    #
    #   * CANCELLED - The journey has been stopped. If a journey's status
    #     is CANCELLED, you can't add, change, or remove activities or
    #     segment settings from the journey.
    #
    #   * CLOSED - The journey has been published and has started running.
    #     It may have also passed its scheduled end time, or passed its
    #     scheduled start time and a refresh frequency hasn't been
    #     specified for it. If a journey's status is CLOSED, you can't add
    #     participants to it, and no existing participants can enter the
    #     journey for the first time. However, any existing participants who
    #     are currently waiting to start an activity may continue the
    #     journey.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   This object is not used or supported.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyResponse AWS API Documentation
    #
    class JourneyResponse < Struct.new(
      :activities,
      :application_id,
      :creation_date,
      :id,
      :last_modified_date,
      :limits,
      :local_time,
      :name,
      :quiet_time,
      :refresh_frequency,
      :schedule,
      :start_activity,
      :start_condition,
      :state,
      :tags)
      include Aws::Structure
    end

    # Specifies the sender ID and message type for an SMS message that's
    # sent to participants in a journey.
    #
    # @note When making an API call, you may pass JourneySMSMessage
    #   data as a hash:
    #
    #       {
    #         message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #         sender_id: "__string",
    #       }
    #
    # @!attribute [rw] message_type
    #   The SMS message type. Valid values are TRANSACTIONAL (for messages
    #   that are critical or time-sensitive, such as a one-time passwords)
    #   and PROMOTIONAL (for messsages that aren't critical or
    #   time-sensitive, such as marketing messages).
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The sender ID to display as the sender of the message on a
    #   recipient's device. Support for sender IDs varies by country or
    #   region. For more information, see [Supported Countries and
    #   Regions][1] in the Amazon Pinpoint User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com.amazon.com/pinpoint/latest/userguide/channels-sms-countries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneySMSMessage AWS API Documentation
    #
    class JourneySMSMessage < Struct.new(
      :message_type,
      :sender_id)
      include Aws::Structure
    end

    # Specifies the schedule settings for a journey.
    #
    # @note When making an API call, you may pass JourneySchedule
    #   data as a hash:
    #
    #       {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: "__string",
    #       }
    #
    # @!attribute [rw] end_time
    #   The scheduled time, in ISO 8601 format, when the journey ended or
    #   will end.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The scheduled time, in ISO 8601 format, when the journey began or
    #   will begin.
    #   @return [Time]
    #
    # @!attribute [rw] timezone
    #   The starting UTC offset for the journey schedule, if the value of
    #   the journey's LocalTime property is true. Valid values are: UTC,
    #   UTC+01, UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05,
    #   UTC+05:30, UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45,
    #   UTC+09, UTC+09:30, UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45,
    #   UTC+13, UTC+13:45, UTC-02, UTC-02:30, UTC-03, UTC-03:30, UTC-04,
    #   UTC-05, UTC-06, UTC-07, UTC-08, UTC-09, UTC-09:30, UTC-10, and
    #   UTC-11.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneySchedule AWS API Documentation
    #
    class JourneySchedule < Struct.new(
      :end_time,
      :start_time,
      :timezone)
      include Aws::Structure
    end

    # Changes the status of a journey.
    #
    # @note When making an API call, you may pass JourneyStateRequest
    #   data as a hash:
    #
    #       {
    #         state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #       }
    #
    # @!attribute [rw] state
    #   The status of the journey. Currently, the only supported value is
    #   CANCELLED.
    #
    #   If you cancel a journey, Amazon Pinpoint continues to perform
    #   activities that are currently in progress, until those activities
    #   are complete. Amazon Pinpoint also continues to collect and
    #   aggregate analytics data for those activities, until they are
    #   complete, and any activities that were complete when you cancelled
    #   the journey.
    #
    #   After you cancel a journey, you can't add, change, or remove any
    #   activities from the journey. In addition, Amazon Pinpoint stops
    #   evaluating the journey and doesn't perform any activities that
    #   haven't started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneyStateRequest AWS API Documentation
    #
    class JourneyStateRequest < Struct.new(
      :state)
      include Aws::Structure
    end

    # Provides information about the status, configuration, and other
    # settings for all the journeys that are associated with an application.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each journey that's associated with
    #   the application.
    #   @return [Array<Types::JourneyResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/JourneysResponse AWS API Documentation
    #
    class JourneysResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJourneysRequest
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListJourneysRequest AWS API Documentation
    #
    class ListJourneysRequest < Struct.new(
      :application_id,
      :page_size,
      :token)
      include Aws::Structure
    end

    # @!attribute [rw] journeys_response
    #   Provides information about the status, configuration, and other
    #   settings for all the journeys that are associated with an
    #   application.
    #   @return [Types::JourneysResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListJourneysResponse AWS API Documentation
    #
    class ListJourneysResponse < Struct.new(
      :journeys_response)
      include Aws::Structure
    end

    # Provides information about all the recommender model configurations
    # that are associated with your Amazon Pinpoint account.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each recommender model configuration
    #   that's associated with your Amazon Pinpoint account.
    #   @return [Array<Types::RecommenderConfigurationResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListRecommenderConfigurationsResponse AWS API Documentation
    #
    class ListRecommenderConfigurationsResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags_model
    #   Specifies the tags (keys and values) for an application, campaign,
    #   message template, or segment.
    #   @return [Types::TagsModel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags_model)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTemplateVersionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #         page_size: "__string",
    #         template_name: "__string", # required
    #         template_type: "__string", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTemplateVersionsRequest AWS API Documentation
    #
    class ListTemplateVersionsRequest < Struct.new(
      :next_token,
      :page_size,
      :template_name,
      :template_type)
      include Aws::Structure
    end

    # @!attribute [rw] template_versions_response
    #   Provides information about all the versions of a specific message
    #   template.
    #   @return [Types::TemplateVersionsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTemplateVersionsResponse AWS API Documentation
    #
    class ListTemplateVersionsResponse < Struct.new(
      :template_versions_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #         page_size: "__string",
    #         prefix: "__string",
    #         template_type: "__string",
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTemplatesRequest AWS API Documentation
    #
    class ListTemplatesRequest < Struct.new(
      :next_token,
      :page_size,
      :prefix,
      :template_type)
      include Aws::Structure
    end

    # @!attribute [rw] templates_response
    #   Provides information about all the message templates that are
    #   associated with your Amazon Pinpoint account.
    #   @return [Types::TemplatesResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ListTemplatesResponse AWS API Documentation
    #
    class ListTemplatesResponse < Struct.new(
      :templates_response)
      include Aws::Structure
    end

    # Specifies the content and settings for a push notification that's
    # sent to recipients of a campaign.
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
    #   The action to occur if a recipient taps the push notification. Valid
    #   values are:
    #
    #   * OPEN\_APP - Your app opens or it becomes the foreground app if it
    #     was sent to the background. This is the default action.
    #
    #   * DEEP\_LINK - Your app opens and displays a designated user
    #     interface in the app. This setting uses the deep-linking features
    #     of iOS and Android.
    #
    #   * URL - The default mobile browser on the recipient's device opens
    #     and loads the web page at a URL that you specify.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body of the notification message. The maximum number of
    #   characters is 200.
    #   @return [String]
    #
    # @!attribute [rw] image_icon_url
    #   The URL of the image to display as the push-notification icon, such
    #   as the icon for the app.
    #   @return [String]
    #
    # @!attribute [rw] image_small_icon_url
    #   The URL of the image to display as the small, push-notification
    #   icon, such as a small version of the icon for the app.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image to display in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] json_body
    #   The JSON payload to use for a silent push notification.
    #   @return [String]
    #
    # @!attribute [rw] media_url
    #   The URL of the image or video to display in the push notification.
    #   @return [String]
    #
    # @!attribute [rw] raw_content
    #   The raw, JSON-formatted string to use as the payload for the
    #   notification message. If specified, this value overrides all other
    #   content for the message.
    #   @return [String]
    #
    # @!attribute [rw] silent_push
    #   Specifies whether the notification is a silent push notification,
    #   which is a push notification that doesn't display on a recipient's
    #   device. Silent push notifications can be used for cases such as
    #   updating an app's configuration, displaying messages in an in-app
    #   message center, or supporting phone home functionality.
    #   @return [Boolean]
    #
    # @!attribute [rw] time_to_live
    #   The number of seconds that the push-notification service should keep
    #   the message, if the service is unable to deliver the notification
    #   the first time. This value is converted to an expiration value when
    #   it's sent to a push-notification service. If this value is 0, the
    #   service treats the notification as if it expires immediately and the
    #   service doesn't store or try to deliver the notification again.
    #
    #   This value doesn't apply to messages that are sent through the
    #   Amazon Device Messaging (ADM) service.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   The title to display above the notification message on a
    #   recipient's device.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to open in a recipient's default mobile browser, if a
    #   recipient taps the push notification and the value of the Action
    #   property is URL.
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

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   The message that's returned from the API.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the request or response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageBody AWS API Documentation
    #
    class MessageBody < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Specifies the message configuration settings for a campaign.
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
    #         custom_message: {
    #           data: "__string",
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
    #   The message that the campaign sends through the ADM (Amazon Device
    #   Messaging) channel. If specified, this message overrides the default
    #   message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] apns_message
    #   The message that the campaign sends through the APNs (Apple Push
    #   Notification service) channel. If specified, this message overrides
    #   the default message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] baidu_message
    #   The message that the campaign sends through the Baidu (Baidu Cloud
    #   Push) channel. If specified, this message overrides the default
    #   message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] custom_message
    #   The message that the campaign sends through a custom channel, as
    #   specified by the delivery configuration
    #   (CustomDeliveryConfiguration) settings for the campaign. If
    #   specified, this message overrides the default message.
    #   @return [Types::CampaignCustomMessage]
    #
    # @!attribute [rw] default_message
    #   The default message that the campaign sends through all the channels
    #   that are configured for the campaign.
    #   @return [Types::Message]
    #
    # @!attribute [rw] email_message
    #   The message that the campaign sends through the email channel. If
    #   specified, this message overrides the default message.
    #   @return [Types::CampaignEmailMessage]
    #
    # @!attribute [rw] gcm_message
    #   The message that the campaign sends through the GCM channel, which
    #   enables Amazon Pinpoint to send push notifications through the
    #   Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging
    #   (GCM), service. If specified, this message overrides the default
    #   message.
    #   @return [Types::Message]
    #
    # @!attribute [rw] sms_message
    #   The message that the campaign sends through the SMS channel. If
    #   specified, this message overrides the default message.
    #   @return [Types::CampaignSmsMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageConfiguration AWS API Documentation
    #
    class MessageConfiguration < Struct.new(
      :adm_message,
      :apns_message,
      :baidu_message,
      :custom_message,
      :default_message,
      :email_message,
      :gcm_message,
      :sms_message)
      include Aws::Structure
    end

    # Specifies the configuration and other settings for a message.
    #
    # @note When making an API call, you may pass MessageRequest
    #   data as a hash:
    #
    #       {
    #         addresses: {
    #           "__string" => {
    #             body_override: "__string",
    #             channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #         message_configuration: { # required
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
    #             apns_push_type: "__string",
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
    #           email_message: {
    #             body: "__string",
    #             feedback_forwarding_address: "__string",
    #             from_address: "__string",
    #             raw_email: {
    #               data: "data",
    #             },
    #             reply_to_addresses: ["__string"],
    #             simple_email: {
    #               html_part: {
    #                 charset: "__string",
    #                 data: "__string",
    #               },
    #               subject: {
    #                 charset: "__string",
    #                 data: "__string",
    #               },
    #               text_part: {
    #                 charset: "__string",
    #                 data: "__string",
    #               },
    #             },
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
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
    #             media_url: "__string",
    #             message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #             origination_number: "__string",
    #             sender_id: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #           },
    #           voice_message: {
    #             body: "__string",
    #             language_code: "__string",
    #             origination_number: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             voice_id: "__string",
    #           },
    #         },
    #         template_configuration: {
    #           email_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           push_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           sms_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           voice_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #         },
    #         trace_id: "__string",
    #       }
    #
    # @!attribute [rw] addresses
    #   A map of key-value pairs, where each key is an address and each
    #   value is an AddressConfiguration object. An address can be a push
    #   notification token, a phone number, or an email address. You can use
    #   an AddressConfiguration object to tailor the message for an address
    #   by specifying settings such as content overrides and message
    #   variables.
    #   @return [Hash<String,Types::AddressConfiguration>]
    #
    # @!attribute [rw] context
    #   A map of custom attributes to attach to the message. For a push
    #   notification, this payload is added to the data.pinpoint object. For
    #   an email or text message, this payload is added to email/SMS
    #   delivery receipt event attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] endpoints
    #   A map of key-value pairs, where each key is an endpoint ID and each
    #   value is an EndpointSendConfiguration object. You can use an
    #   EndpointSendConfiguration object to tailor the message for an
    #   endpoint by specifying settings such as content overrides and
    #   message variables.
    #   @return [Hash<String,Types::EndpointSendConfiguration>]
    #
    # @!attribute [rw] message_configuration
    #   The settings and content for the default message and any default
    #   messages that you defined for specific channels.
    #   @return [Types::DirectMessageConfiguration]
    #
    # @!attribute [rw] template_configuration
    #   The message template to use for the message.
    #   @return [Types::TemplateConfiguration]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier for tracing the message. This identifier is
    #   visible to message recipients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MessageRequest AWS API Documentation
    #
    class MessageRequest < Struct.new(
      :addresses,
      :context,
      :endpoints,
      :message_configuration,
      :template_configuration,
      :trace_id)
      include Aws::Structure
    end

    # Provides information about the results of a request to send a message
    # to an endpoint address.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that was used to send the
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_result
    #   A map that contains a multipart response for each address that the
    #   message was sent to. In the map, the endpoint ID is the key and the
    #   result is the value.
    #   @return [Hash<String,Types::EndpointMessageResult>]
    #
    # @!attribute [rw] request_id
    #   The identifier for the original request that the message was
    #   delivered for.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   A map that contains a multipart response for each address (email
    #   address, phone number, or push notification token) that the message
    #   was sent to. In the map, the address is the key and the result is
    #   the value.
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

    # Provides information about the results of sending a message directly
    # to an endpoint address.
    #
    # @!attribute [rw] delivery_status
    #   The delivery status of the message. Possible values are:
    #
    #   * DUPLICATE - The endpoint address is a duplicate of another
    #     endpoint address. Amazon Pinpoint won't attempt to send the
    #     message again.
    #
    #   * OPT\_OUT - The user who's associated with the endpoint address
    #     has opted out of receiving messages from you. Amazon Pinpoint
    #     won't attempt to send the message again.
    #
    #   * PERMANENT\_FAILURE - An error occurred when delivering the message
    #     to the endpoint address. Amazon Pinpoint won't attempt to send
    #     the message again.
    #
    #   * SUCCESSFUL - The message was successfully delivered to the
    #     endpoint address.
    #
    #   * TEMPORARY\_FAILURE - A temporary error occurred. Amazon Pinpoint
    #     won't attempt to send the message again.
    #
    #   * THROTTLED - Amazon Pinpoint throttled the operation to send the
    #     message to the endpoint address.
    #
    #   * TIMEOUT - The message couldn't be sent within the timeout period.
    #
    #   * UNKNOWN\_FAILURE - An unknown error occurred.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The unique identifier for the message that was sent.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The downstream service status code for delivering the message.
    #   @return [Integer]
    #
    # @!attribute [rw] status_message
    #   The status message for delivering the message.
    #   @return [String]
    #
    # @!attribute [rw] updated_token
    #   For push notifications that are sent through the GCM channel,
    #   specifies whether the endpoint's device registration token was
    #   updated as part of delivering the message.
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

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MethodNotAllowedException AWS API Documentation
    #
    class MethodNotAllowedException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Specifies metric-based criteria for including or excluding endpoints
    # from a segment. These criteria derive from custom metrics that you
    # define for endpoints.
    #
    # @note When making an API call, you may pass MetricDimension
    #   data as a hash:
    #
    #       {
    #         comparison_operator: "__string", # required
    #         value: 1.0, # required
    #       }
    #
    # @!attribute [rw] comparison_operator
    #   The operator to use when comparing metric values. Valid values are:
    #   GREATER\_THAN, LESS\_THAN, GREATER\_THAN\_OR\_EQUAL,
    #   LESS\_THAN\_OR\_EQUAL, and EQUAL.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to compare.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :comparison_operator,
      :value)
      include Aws::Structure
    end

    # Specifies a condition to evaluate for an activity path in a journey.
    #
    # @note When making an API call, you may pass MultiConditionalBranch
    #   data as a hash:
    #
    #       {
    #         condition: {
    #           event_condition: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 },
    #               },
    #             },
    #             message_activity: "__string",
    #           },
    #           segment_condition: {
    #             segment_id: "__string", # required
    #           },
    #           segment_dimensions: {
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               gps_point: {
    #                 coordinates: { # required
    #                   latitude: 1.0, # required
    #                   longitude: 1.0, # required
    #                 },
    #                 range_in_kilometers: 1.0,
    #               },
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #           },
    #         },
    #         next_activity: "__string",
    #       }
    #
    # @!attribute [rw] condition
    #   The condition to evaluate for the activity path.
    #   @return [Types::SimpleCondition]
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after
    #   completing the activity for the path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MultiConditionalBranch AWS API Documentation
    #
    class MultiConditionalBranch < Struct.new(
      :condition,
      :next_activity)
      include Aws::Structure
    end

    # Specifies the settings for a multivariate split activity in a journey.
    # This type of activity sends participants down one of as many as five
    # paths (including a default *Else* path) in a journey, based on
    # conditions that you specify.
    #
    # @note When making an API call, you may pass MultiConditionalSplitActivity
    #   data as a hash:
    #
    #       {
    #         branches: [
    #           {
    #             condition: {
    #               event_condition: {
    #                 dimensions: { # required
    #                   attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   event_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string", # required
    #                       value: 1.0, # required
    #                     },
    #                   },
    #                 },
    #                 message_activity: "__string",
    #               },
    #               segment_condition: {
    #                 segment_id: "__string", # required
    #               },
    #               segment_dimensions: {
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                     recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                   },
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0,
    #                   },
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #               },
    #             },
    #             next_activity: "__string",
    #           },
    #         ],
    #         default_activity: "__string",
    #         evaluation_wait_time: {
    #           wait_for: "__string",
    #           wait_until: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] branches
    #   The paths for the activity, including the conditions for entering
    #   each path and the activity to perform for each path.
    #   @return [Array<Types::MultiConditionalBranch>]
    #
    # @!attribute [rw] default_activity
    #   The unique identifier for the activity to perform for participants
    #   who don't meet any of the conditions specified for other paths in
    #   the activity.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_wait_time
    #   The amount of time to wait or the date and time when Amazon Pinpoint
    #   determines whether the conditions are met.
    #   @return [Types::WaitTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/MultiConditionalSplitActivity AWS API Documentation
    #
    class MultiConditionalSplitActivity < Struct.new(
      :branches,
      :default_activity,
      :evaluation_wait_time)
      include Aws::Structure
    end

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Specifies a phone number to validate and retrieve information about.
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
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region where the phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number to retrieve information about. The phone number
    #   that you provide should include a valid numeric country code.
    #   Otherwise, the operation might result in an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/NumberValidateRequest AWS API Documentation
    #
    class NumberValidateRequest < Struct.new(
      :iso_country_code,
      :phone_number)
      include Aws::Structure
    end

    # Provides information about a phone number.
    #
    # @!attribute [rw] carrier
    #   The carrier or service provider that the phone number is currently
    #   registered with. In some countries and regions, this value may be
    #   the carrier or service provider that the phone number was originally
    #   registered with.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The name of the city where the phone number was originally
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] cleansed_phone_number_e164
    #   The cleansed phone number, in E.164 format, for the location where
    #   the phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] cleansed_phone_number_national
    #   The cleansed phone number, in the format for the location where the
    #   phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The name of the country or region where the phone number was
    #   originally registered.
    #   @return [String]
    #
    # @!attribute [rw] country_code_iso_2
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region where the phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] country_code_numeric
    #   The numeric code for the country or region where the phone number
    #   was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] county
    #   The name of the county where the phone number was originally
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] original_country_code_iso_2
    #   The two-character code, in ISO 3166-1 alpha-2 format, that was sent
    #   in the request body.
    #   @return [String]
    #
    # @!attribute [rw] original_phone_number
    #   The phone number that was sent in the request body.
    #   @return [String]
    #
    # @!attribute [rw] phone_type
    #   The description of the phone type. Valid values are: MOBILE,
    #   LANDLINE, VOIP, INVALID, PREPAID, and OTHER.
    #   @return [String]
    #
    # @!attribute [rw] phone_type_code
    #   The phone type, represented by an integer. Valid values are: 0
    #   (mobile), 1 (landline), 2 (VoIP), 3 (invalid), 4 (other), and 5
    #   (prepaid).
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   The time zone for the location where the phone number was originally
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] zip_code
    #   The postal or ZIP code for the location where the phone number was
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

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PayloadTooLargeException AWS API Documentation
    #
    class PayloadTooLargeException < Struct.new(
      :message,
      :request_id)
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
    #   Specifies a phone number to validate and retrieve information about.
    #   @return [Types::NumberValidateRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PhoneNumberValidateRequest AWS API Documentation
    #
    class PhoneNumberValidateRequest < Struct.new(
      :number_validate_request)
      include Aws::Structure
    end

    # @!attribute [rw] number_validate_response
    #   Provides information about a phone number.
    #   @return [Types::NumberValidateResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PhoneNumberValidateResponse AWS API Documentation
    #
    class PhoneNumberValidateResponse < Struct.new(
      :number_validate_response)
      include Aws::Structure
    end

    # Specifies the properties and attributes of an endpoint that's
    # associated with an event.
    #
    # @note When making an API call, you may pass PublicEndpoint
    #   data as a hash:
    #
    #       {
    #         address: "__string",
    #         attributes: {
    #           "__string" => ["__string"],
    #         },
    #         channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #   The unique identifier for the recipient, such as a device token,
    #   email address, or mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   One or more custom attributes that describe the endpoint by
    #   associating a name with an array of values. You can use these
    #   attributes as filter criteria when you create segments.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_type
    #   The channel that's used when sending messages or push notifications
    #   to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] demographic
    #   The demographic information for the endpoint, such as the time zone
    #   and platform.
    #   @return [Types::EndpointDemographic]
    #
    # @!attribute [rw] effective_date
    #   The date and time, in ISO 8601 format, when the endpoint was last
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   Specifies whether to send messages or push notifications to the
    #   endpoint. Valid values are: ACTIVE, messages are sent to the
    #   endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
    #
    #   Amazon Pinpoint automatically sets this value to ACTIVE when you
    #   create an endpoint or update an existing endpoint. Amazon Pinpoint
    #   automatically sets this value to INACTIVE if you update another
    #   endpoint that has the same address specified by the Address
    #   property.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The geographic information for the endpoint.
    #   @return [Types::EndpointLocation]
    #
    # @!attribute [rw] metrics
    #   One or more custom metrics that your app reports to Amazon Pinpoint
    #   for the endpoint.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] opt_out
    #   Specifies whether the user who's associated with the endpoint has
    #   opted out of receiving messages and push notifications from you.
    #   Possible values are: ALL, the user has opted out and doesn't want
    #   to receive any messages or push notifications; and, NONE, the user
    #   hasn't opted out and wants to receive all messages and push
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   A unique identifier that's generated each time the endpoint is
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   One or more custom user attributes that your app reports to Amazon
    #   Pinpoint for the user who's associated with the endpoint.
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

    # Specifies the settings for a push notification activity in a journey.
    # This type of activity sends a push notification to participants.
    #
    # @note When making an API call, you may pass PushMessageActivity
    #   data as a hash:
    #
    #       {
    #         message_config: {
    #           time_to_live: "__string",
    #         },
    #         next_activity: "__string",
    #         template_name: "__string",
    #         template_version: "__string",
    #       }
    #
    # @!attribute [rw] message_config
    #   Specifies the time to live (TTL) value for push notifications that
    #   are sent to participants in a journey.
    #   @return [Types::JourneyPushMessage]
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after the
    #   message is sent.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the push notification template to use for the message.
    #   If specified, this value must match the name of an existing message
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_version
    #   The unique identifier for the version of the push notification
    #   template to use for the message. If specified, this value must match
    #   the identifier for an existing template version. To retrieve a list
    #   of versions and version identifiers for a template, use the <link
    #   linkend="templates-template-name-template-type-versions" />
    #
    #   Template Versions</link> resource.
    #
    #   If you don't specify a value for this property, Amazon Pinpoint
    #   uses the *active version* of the template. The *active version* is
    #   typically the version of a template that's been most recently
    #   reviewed and approved for use, depending on your workflow. It isn't
    #   necessarily the latest version of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PushMessageActivity AWS API Documentation
    #
    class PushMessageActivity < Struct.new(
      :message_config,
      :next_activity,
      :template_name,
      :template_version)
      include Aws::Structure
    end

    # Specifies the content and settings for a message template that can be
    # used in messages that are sent through a push notification channel.
    #
    # @note When making an API call, you may pass PushNotificationTemplateRequest
    #   data as a hash:
    #
    #       {
    #         adm: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           title: "__string",
    #           url: "__string",
    #         },
    #         apns: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           media_url: "__string",
    #           raw_content: "__string",
    #           sound: "__string",
    #           title: "__string",
    #           url: "__string",
    #         },
    #         baidu: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           sound: "__string",
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_substitutions: "__string",
    #         gcm: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           title: "__string",
    #           url: "__string",
    #         },
    #         recommender_id: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         template_description: "__string",
    #       }
    #
    # @!attribute [rw] adm
    #   The message template to use for the ADM (Amazon Device Messaging)
    #   channel. This message template overrides the default template for
    #   push notification channels (DefaultPushNotificationTemplate).
    #   @return [Types::AndroidPushNotificationTemplate]
    #
    # @!attribute [rw] apns
    #   The message template to use for the APNs (Apple Push Notification
    #   service) channel. This message template overrides the default
    #   template for push notification channels
    #   (DefaultPushNotificationTemplate).
    #   @return [Types::APNSPushNotificationTemplate]
    #
    # @!attribute [rw] baidu
    #   The message template to use for the Baidu (Baidu Cloud Push)
    #   channel. This message template overrides the default template for
    #   push notification channels (DefaultPushNotificationTemplate).
    #   @return [Types::AndroidPushNotificationTemplate]
    #
    # @!attribute [rw] default
    #   The default message template to use for push notification channels.
    #   @return [Types::DefaultPushNotificationTemplate]
    #
    # @!attribute [rw] default_substitutions
    #   A JSON object that specifies the default values to use for message
    #   variables in the message template. This object is a set of key-value
    #   pairs. Each key defines a message variable in the template. The
    #   corresponding value defines the default value for that variable.
    #   When you create a message that's based on the template, you can
    #   override these defaults with message-specific and address-specific
    #   variables and values.
    #   @return [String]
    #
    # @!attribute [rw] gcm
    #   The message template to use for the GCM channel, which is used to
    #   send notifications through the Firebase Cloud Messaging (FCM),
    #   formerly Google Cloud Messaging (GCM), service. This message
    #   template overrides the default template for push notification
    #   channels (DefaultPushNotificationTemplate).
    #   @return [Types::AndroidPushNotificationTemplate]
    #
    # @!attribute [rw] recommender_id
    #   The unique identifier for the recommender model to use for the
    #   message template. Amazon Pinpoint uses this value to determine how
    #   to retrieve and process data from a recommender model when it sends
    #   messages that use the template, if the template contains message
    #   variables for recommendation data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags to
    #   associate with the message template. Each tag consists of a required
    #   tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   A custom description of the message template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PushNotificationTemplateRequest AWS API Documentation
    #
    class PushNotificationTemplateRequest < Struct.new(
      :adm,
      :apns,
      :baidu,
      :default,
      :default_substitutions,
      :gcm,
      :recommender_id,
      :tags,
      :template_description)
      include Aws::Structure
    end

    # Provides information about the content and settings for a message
    # template that can be used in messages that are sent through a push
    # notification channel.
    #
    # @!attribute [rw] adm
    #   The message template that's used for the ADM (Amazon Device
    #   Messaging) channel. This message template overrides the default
    #   template for push notification channels
    #   (DefaultPushNotificationTemplate).
    #   @return [Types::AndroidPushNotificationTemplate]
    #
    # @!attribute [rw] apns
    #   The message template that's used for the APNs (Apple Push
    #   Notification service) channel. This message template overrides the
    #   default template for push notification channels
    #   (DefaultPushNotificationTemplate).
    #   @return [Types::APNSPushNotificationTemplate]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] baidu
    #   The message template that's used for the Baidu (Baidu Cloud Push)
    #   channel. This message template overrides the default template for
    #   push notification channels (DefaultPushNotificationTemplate).
    #   @return [Types::AndroidPushNotificationTemplate]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the message template was created.
    #   @return [String]
    #
    # @!attribute [rw] default
    #   The default message template that's used for push notification
    #   channels.
    #   @return [Types::DefaultPushNotificationTemplate]
    #
    # @!attribute [rw] default_substitutions
    #   The JSON object that specifies the default values that are used for
    #   message variables in the message template. This object is a set of
    #   key-value pairs. Each key defines a message variable in the
    #   template. The corresponding value defines the default value for that
    #   variable.
    #   @return [String]
    #
    # @!attribute [rw] gcm
    #   The message template that's used for the GCM channel, which is used
    #   to send notifications through the Firebase Cloud Messaging (FCM),
    #   formerly Google Cloud Messaging (GCM), service. This message
    #   template overrides the default template for push notification
    #   channels (DefaultPushNotificationTemplate).
    #   @return [Types::AndroidPushNotificationTemplate]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the message template was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] recommender_id
    #   The unique identifier for the recommender model that's used by the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that identifies the tags
    #   that are associated with the message template. Each tag consists of
    #   a required tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   The custom description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of channel that the message template is designed for. For a
    #   push notification template, this value is PUSH.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The unique identifier, as an integer, for the active version of the
    #   message template, or the version of the template that you specified
    #   by using the version parameter in your request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PushNotificationTemplateResponse AWS API Documentation
    #
    class PushNotificationTemplateResponse < Struct.new(
      :adm,
      :apns,
      :arn,
      :baidu,
      :creation_date,
      :default,
      :default_substitutions,
      :gcm,
      :last_modified_date,
      :recommender_id,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventStreamRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         write_event_stream: { # required
    #           destination_stream_arn: "__string", # required
    #           role_arn: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] write_event_stream
    #   Specifies the Amazon Resource Name (ARN) of an event stream to
    #   publish events to and the AWS Identity and Access Management (IAM)
    #   role to use when publishing those events.
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
    #   Specifies settings for publishing event data to an Amazon Kinesis
    #   data stream or an Amazon Kinesis Data Firehose delivery stream.
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
    #           batch_item: { # required
    #             "__string" => {
    #               endpoint: { # required
    #                 address: "__string",
    #                 attributes: {
    #                   "__string" => ["__string"],
    #                 },
    #                 channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #               events: { # required
    #                 "__string" => {
    #                   app_package_name: "__string",
    #                   app_title: "__string",
    #                   app_version_code: "__string",
    #                   attributes: {
    #                     "__string" => "__string",
    #                   },
    #                   client_sdk_version: "__string",
    #                   event_type: "__string", # required
    #                   metrics: {
    #                     "__string" => 1.0,
    #                   },
    #                   sdk_name: "__string",
    #                   session: {
    #                     duration: 1,
    #                     id: "__string", # required
    #                     start_timestamp: "__string", # required
    #                     stop_timestamp: "__string",
    #                   },
    #                   timestamp: "__string", # required
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
    #   Specifies a batch of events to process.
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
    #   Provides information about endpoints and the events that they're
    #   associated with.
    #   @return [Types::EventsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEventsResponse AWS API Documentation
    #
    class PutEventsResponse < Struct.new(
      :events_response)
      include Aws::Structure
    end

    # Specifies the start and end times that define a time range when
    # messages aren't sent to endpoints.
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
    #   The specific time when quiet time ends. This value has to use
    #   24-hour notation and be in HH:MM format, where HH is the hour (with
    #   a leading zero, if applicable) and MM is the minutes. For example,
    #   use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The specific time when quiet time begins. This value has to use
    #   24-hour notation and be in HH:MM format, where HH is the hour (with
    #   a leading zero, if applicable) and MM is the minutes. For example,
    #   use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/QuietTime AWS API Documentation
    #
    class QuietTime < Struct.new(
      :end,
      :start)
      include Aws::Structure
    end

    # Specifies the settings for a random split activity in a journey. This
    # type of activity randomly sends specified percentages of participants
    # down one of as many as five paths in a journey, based on conditions
    # that you specify.
    #
    # @note When making an API call, you may pass RandomSplitActivity
    #   data as a hash:
    #
    #       {
    #         branches: [
    #           {
    #             next_activity: "__string",
    #             percentage: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] branches
    #   The paths for the activity, including the percentage of participants
    #   to enter each path and the activity to perform for each path.
    #   @return [Array<Types::RandomSplitEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RandomSplitActivity AWS API Documentation
    #
    class RandomSplitActivity < Struct.new(
      :branches)
      include Aws::Structure
    end

    # Specifies the settings for a path in a random split activity in a
    # journey.
    #
    # @note When making an API call, you may pass RandomSplitEntry
    #   data as a hash:
    #
    #       {
    #         next_activity: "__string",
    #         percentage: 1,
    #       }
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after
    #   completing the activity for the path.
    #   @return [String]
    #
    # @!attribute [rw] percentage
    #   The percentage of participants to send down the activity path.
    #
    #   To determine which participants are sent down each path, Amazon
    #   Pinpoint applies a probability-based algorithm to the percentages
    #   that you specify for the paths. Therefore, the actual percentage of
    #   participants who are sent down a path may not be equal to the
    #   percentage that you specify.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RandomSplitEntry AWS API Documentation
    #
    class RandomSplitEntry < Struct.new(
      :next_activity,
      :percentage)
      include Aws::Structure
    end

    # Specifies the contents of an email message, represented as a raw MIME
    # message.
    #
    # @note When making an API call, you may pass RawEmail
    #   data as a hash:
    #
    #       {
    #         data: "data",
    #       }
    #
    # @!attribute [rw] data
    #   The email message, represented as a raw MIME message. The entire
    #   message must be base64 encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RawEmail AWS API Documentation
    #
    class RawEmail < Struct.new(
      :data)
      include Aws::Structure
    end

    # Specifies criteria for including or excluding endpoints from a segment
    # based on how recently an endpoint was active.
    #
    # @note When making an API call, you may pass RecencyDimension
    #   data as a hash:
    #
    #       {
    #         duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #         recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] duration
    #   The duration to use when determining whether an endpoint is active
    #   or inactive.
    #   @return [String]
    #
    # @!attribute [rw] recency_type
    #   The type of recency dimension to use for the segment. Valid values
    #   are: ACTIVE, endpoints that were active within the specified
    #   duration are included in the segment; and, INACTIVE, endpoints that
    #   weren't active within the specified duration are included in the
    #   segment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RecencyDimension AWS API Documentation
    #
    class RecencyDimension < Struct.new(
      :duration,
      :recency_type)
      include Aws::Structure
    end

    # Provides information about Amazon Pinpoint configuration settings for
    # retrieving and processing data from a recommender model.
    #
    # @!attribute [rw] attributes
    #   A map that defines 1-10 custom endpoint or user attributes,
    #   depending on the value for the RecommendationProviderIdType
    #   property. Each of these attributes temporarily stores a recommended
    #   item that's retrieved from the recommender model and sent to an AWS
    #   Lambda function for additional processing. Each attribute can be
    #   used as a message variable in a message template.
    #
    #   This value is null if the configuration doesn't invoke an AWS
    #   Lambda function (RecommendationTransformerUri) to perform additional
    #   processing of recommendation data.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creation_date
    #   The date, in extended ISO 8601 format, when the configuration was
    #   created for the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The custom description of the configuration for the recommender
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the recommender model configuration.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in extended ISO 8601 format, when the configuration for
    #   the recommender model was last modified.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The custom name of the configuration for the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_id_type
    #   The type of Amazon Pinpoint ID that's associated with unique user
    #   IDs in the recommender model. This value enables the model to use
    #   attribute and event data that’s specific to a particular endpoint or
    #   user in an Amazon Pinpoint application. Possible values are:
    #
    #   * PINPOINT\_ENDPOINT\_ID - Each user in the model is associated with
    #     a particular endpoint in Amazon Pinpoint. The data is correlated
    #     based on endpoint IDs in Amazon Pinpoint. This is the default
    #     value.
    #
    #   * PINPOINT\_USER\_ID - Each user in the model is associated with a
    #     particular user and endpoint in Amazon Pinpoint. The data is
    #     correlated based on user IDs in Amazon Pinpoint. If this value is
    #     specified, an endpoint definition in Amazon Pinpoint has to
    #     specify both a user ID (UserId) and an endpoint ID. Otherwise,
    #     messages won’t be sent to the user's endpoint.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon Pinpoint to retrieve
    #   recommendation data from the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_uri
    #   The Amazon Resource Name (ARN) of the recommender model that Amazon
    #   Pinpoint retrieves the recommendation data from. This value is the
    #   ARN of an Amazon Personalize campaign.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_transformer_uri
    #   The name or Amazon Resource Name (ARN) of the AWS Lambda function
    #   that Amazon Pinpoint invokes to perform additional processing of
    #   recommendation data that it retrieves from the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] recommendations_display_name
    #   The custom display name for the standard endpoint or user attribute
    #   (RecommendationItems) that temporarily stores recommended items for
    #   each endpoint or user, depending on the value for the
    #   RecommendationProviderIdType property. This name appears in the
    #   **Attribute finder** of the template editor on the Amazon Pinpoint
    #   console.
    #
    #   This value is null if the configuration doesn't invoke an AWS
    #   Lambda function (RecommendationTransformerUri) to perform additional
    #   processing of recommendation data.
    #   @return [String]
    #
    # @!attribute [rw] recommendations_per_message
    #   The number of recommended items that are retrieved from the model
    #   for each endpoint or user, depending on the value for the
    #   RecommendationProviderIdType property. This number determines how
    #   many recommended items are available for use in message variables.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RecommenderConfigurationResponse AWS API Documentation
    #
    class RecommenderConfigurationResponse < Struct.new(
      :attributes,
      :creation_date,
      :description,
      :id,
      :last_modified_date,
      :name,
      :recommendation_provider_id_type,
      :recommendation_provider_role_arn,
      :recommendation_provider_uri,
      :recommendation_transformer_uri,
      :recommendations_display_name,
      :recommendations_per_message)
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
    #   Specifies one or more attributes to remove from all the endpoints
    #   that are associated with an application.
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
    #   Provides information about the type and the names of attributes that
    #   were removed from all the endpoints that are associated with an
    #   application.
    #   @return [Types::AttributesResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/RemoveAttributesResponse AWS API Documentation
    #
    class RemoveAttributesResponse < Struct.new(
      :attributes_resource)
      include Aws::Structure
    end

    # Provides the results of a query that retrieved the data for a standard
    # metric that applies to an application, campaign, or journey.
    #
    # @!attribute [rw] grouped_bys
    #   An array of objects that defines the field and field values that
    #   were used to group data in a result set that contains multiple
    #   results. This value is null if the data in a result set isn’t
    #   grouped.
    #   @return [Array<Types::ResultRowValue>]
    #
    # @!attribute [rw] values
    #   An array of objects that provides pre-aggregated values for a
    #   standard metric that applies to an application, campaign, or
    #   journey.
    #   @return [Array<Types::ResultRowValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ResultRow AWS API Documentation
    #
    class ResultRow < Struct.new(
      :grouped_bys,
      :values)
      include Aws::Structure
    end

    # Provides a single value and metadata about that value as part of an
    # array of query results for a standard metric that applies to an
    # application, campaign, or journey.
    #
    # @!attribute [rw] key
    #   The friendly name of the metric whose value is specified by the
    #   Value property.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the value specified by the Value property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   In a Values object, the value for the metric that the query
    #   retrieved data for. In a GroupedBys object, the value for the field
    #   that was used to group data in a result set that contains multiple
    #   results (Values objects).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/ResultRowValue AWS API Documentation
    #
    class ResultRowValue < Struct.new(
      :key,
      :type,
      :value)
      include Aws::Structure
    end

    # Specifies the status and settings of the SMS channel for an
    # application.
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
    #   Specifies whether to enable the SMS channel for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] sender_id
    #   The identity that you want to display on recipients' devices when
    #   they receive messages from the SMS channel.
    #   @return [String]
    #
    # @!attribute [rw] short_code
    #   The registered short code that you want to use when you send
    #   messages through the SMS channel.
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

    # Provides information about the status and settings of the SMS channel
    # for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the SMS channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time, in ISO 8601 format, when the SMS channel was
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the SMS channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the SMS channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the SMS channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the SMS channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time, in ISO 8601 format, when the SMS channel was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the SMS channel, this value is SMS.
    #   @return [String]
    #
    # @!attribute [rw] promotional_messages_per_second
    #   The maximum number of promotional messages that you can send through
    #   the SMS channel each second.
    #   @return [Integer]
    #
    # @!attribute [rw] sender_id
    #   The identity that displays on recipients' devices when they receive
    #   messages from the SMS channel.
    #   @return [String]
    #
    # @!attribute [rw] short_code
    #   The registered short code to use when you send messages through the
    #   SMS channel.
    #   @return [String]
    #
    # @!attribute [rw] transactional_messages_per_second
    #   The maximum number of transactional messages that you can send
    #   through the SMS channel each second.
    #   @return [Integer]
    #
    # @!attribute [rw] version
    #   The current version of the SMS channel.
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

    # Specifies the default settings for a one-time SMS message that's sent
    # directly to an endpoint.
    #
    # @note When making an API call, you may pass SMSMessage
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         keyword: "__string",
    #         media_url: "__string",
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
    # @!attribute [rw] media_url
    #   The URL of an image or video to display in the SMS message.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The SMS message type. Valid values are TRANSACTIONAL (for messages
    #   that are critical or time-sensitive, such as a one-time passwords)
    #   and PROMOTIONAL (for messsages that aren't critical or
    #   time-sensitive, such as marketing messages).
    #   @return [String]
    #
    # @!attribute [rw] origination_number
    #   The number to send the SMS message from. This value should be one of
    #   the dedicated long or short codes that's assigned to your AWS
    #   account. If you don't specify a long or short code, Amazon Pinpoint
    #   assigns a random long code to the SMS message and sends the message
    #   from that code.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The sender ID to display as the sender of the message on a
    #   recipient's device. Support for sender IDs varies by country or
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   The message variables to use in the SMS message. You can override
    #   the default variables with individual address variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SMSMessage AWS API Documentation
    #
    class SMSMessage < Struct.new(
      :body,
      :keyword,
      :media_url,
      :message_type,
      :origination_number,
      :sender_id,
      :substitutions)
      include Aws::Structure
    end

    # Specifies the settings for an SMS activity in a journey. This type of
    # activity sends a text message to participants.
    #
    # @note When making an API call, you may pass SMSMessageActivity
    #   data as a hash:
    #
    #       {
    #         message_config: {
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           sender_id: "__string",
    #         },
    #         next_activity: "__string",
    #         template_name: "__string",
    #         template_version: "__string",
    #       }
    #
    # @!attribute [rw] message_config
    #   Specifies the sender ID and message type for an SMS message that's
    #   sent to participants in a journey.
    #   @return [Types::JourneySMSMessage]
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after the
    #   message is sent.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the SMS message template to use for the message. If
    #   specified, this value must match the name of an existing message
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_version
    #   The unique identifier for the version of the SMS template to use for
    #   the message. If specified, this value must match the identifier for
    #   an existing template version. To retrieve a list of versions and
    #   version identifiers for a template, use the <link
    #   linkend="templates-template-name-template-type-versions" />
    #
    #   Template Versions</link> resource.
    #
    #   If you don't specify a value for this property, Amazon Pinpoint
    #   uses the *active version* of the template. The *active version* is
    #   typically the version of a template that's been most recently
    #   reviewed and approved for use, depending on your workflow. It isn't
    #   necessarily the latest version of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SMSMessageActivity AWS API Documentation
    #
    class SMSMessageActivity < Struct.new(
      :message_config,
      :next_activity,
      :template_name,
      :template_version)
      include Aws::Structure
    end

    # Specifies the content and settings for a message template that can be
    # used in text messages that are sent through the SMS channel.
    #
    # @note When making an API call, you may pass SMSTemplateRequest
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         default_substitutions: "__string",
    #         recommender_id: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         template_description: "__string",
    #       }
    #
    # @!attribute [rw] body
    #   The message body to use in text messages that are based on the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] default_substitutions
    #   A JSON object that specifies the default values to use for message
    #   variables in the message template. This object is a set of key-value
    #   pairs. Each key defines a message variable in the template. The
    #   corresponding value defines the default value for that variable.
    #   When you create a message that's based on the template, you can
    #   override these defaults with message-specific and address-specific
    #   variables and values.
    #   @return [String]
    #
    # @!attribute [rw] recommender_id
    #   The unique identifier for the recommender model to use for the
    #   message template. Amazon Pinpoint uses this value to determine how
    #   to retrieve and process data from a recommender model when it sends
    #   messages that use the template, if the template contains message
    #   variables for recommendation data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags to
    #   associate with the message template. Each tag consists of a required
    #   tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   A custom description of the message template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SMSTemplateRequest AWS API Documentation
    #
    class SMSTemplateRequest < Struct.new(
      :body,
      :default_substitutions,
      :recommender_id,
      :tags,
      :template_description)
      include Aws::Structure
    end

    # Provides information about the content and settings for a message
    # template that can be used in text messages that are sent through the
    # SMS channel.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message body that's used in text messages that are based on the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the message template was created.
    #   @return [String]
    #
    # @!attribute [rw] default_substitutions
    #   The JSON object that specifies the default values that are used for
    #   message variables in the message template. This object is a set of
    #   key-value pairs. Each key defines a message variable in the
    #   template. The corresponding value defines the default value for that
    #   variable.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the message template was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] recommender_id
    #   The unique identifier for the recommender model that's used by the
    #   message template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that identifies the tags
    #   that are associated with the message template. Each tag consists of
    #   a required tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   The custom description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of channel that the message template is designed for. For
    #   an SMS template, this value is SMS.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The unique identifier, as an integer, for the active version of the
    #   message template, or the version of the template that you specified
    #   by using the version parameter in your request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SMSTemplateResponse AWS API Documentation
    #
    class SMSTemplateResponse < Struct.new(
      :arn,
      :body,
      :creation_date,
      :default_substitutions,
      :last_modified_date,
      :recommender_id,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version)
      include Aws::Structure
    end

    # Specifies the schedule settings for a campaign.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         end_time: "__string",
    #         event_filter: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #           },
    #           filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #         },
    #         frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         start_time: "__string", # required
    #         timezone: "__string",
    #       }
    #
    # @!attribute [rw] end_time
    #   The scheduled time, in ISO 8601 format, when the campaign ended or
    #   will end.
    #   @return [String]
    #
    # @!attribute [rw] event_filter
    #   The type of event that causes the campaign to be sent, if the value
    #   of the Frequency property is EVENT.
    #   @return [Types::CampaignEventFilter]
    #
    # @!attribute [rw] frequency
    #   Specifies how often the campaign is sent or whether the campaign is
    #   sent in response to a specific event.
    #   @return [String]
    #
    # @!attribute [rw] is_local_time
    #   Specifies whether the start and end times for the campaign schedule
    #   use each recipient's local time. To base the schedule on each
    #   recipient's local time, set this value to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] quiet_time
    #   The default quiet time for the campaign. Quiet time is a specific
    #   time range when a campaign doesn't send messages to endpoints, if
    #   all the following conditions are met:
    #
    #   * The EndpointDemographic.Timezone property of the endpoint is set
    #     to a valid value.
    #
    #   * The current time in the endpoint's time zone is later than or
    #     equal to the time specified by the QuietTime.Start property for
    #     the campaign.
    #
    #   * The current time in the endpoint's time zone is earlier than or
    #     equal to the time specified by the QuietTime.End property for the
    #     campaign.
    #
    #   If any of the preceding conditions isn't met, the endpoint will
    #   receive messages from the campaign, even if quiet time is enabled.
    #   @return [Types::QuietTime]
    #
    # @!attribute [rw] start_time
    #   The scheduled time when the campaign began or will begin. Valid
    #   values are: IMMEDIATE, to start the campaign immediately; or, a
    #   specific time in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The starting UTC offset for the campaign schedule, if the value of
    #   the IsLocalTime property is true. Valid values are: UTC, UTC+01,
    #   UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,
    #   UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+09, UTC+09:30,
    #   UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+13, UTC-02, UTC-03, UTC-04,
    #   UTC-05, UTC-06, UTC-07, UTC-08, UTC-09, UTC-10, and UTC-11.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :end_time,
      :event_filter,
      :frequency,
      :is_local_time,
      :quiet_time,
      :start_time,
      :timezone)
      include Aws::Structure
    end

    # Specifies dimension settings for including or excluding endpoints from
    # a segment based on how recently an endpoint was active.
    #
    # @note When making an API call, you may pass SegmentBehaviors
    #   data as a hash:
    #
    #       {
    #         recency: {
    #           duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #           recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #         },
    #       }
    #
    # @!attribute [rw] recency
    #   The dimension settings that are based on how recently an endpoint
    #   was active.
    #   @return [Types::RecencyDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentBehaviors AWS API Documentation
    #
    class SegmentBehaviors < Struct.new(
      :recency)
      include Aws::Structure
    end

    # Specifies a segment to associate with an activity in a journey.
    #
    # @note When making an API call, you may pass SegmentCondition
    #   data as a hash:
    #
    #       {
    #         segment_id: "__string", # required
    #       }
    #
    # @!attribute [rw] segment_id
    #   The unique identifier for the segment to associate with the
    #   activity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentCondition AWS API Documentation
    #
    class SegmentCondition < Struct.new(
      :segment_id)
      include Aws::Structure
    end

    # Specifies demographic-based dimension settings for including or
    # excluding endpoints from a segment. These settings derive from
    # characteristics of endpoint devices, such as platform, make, and
    # model.
    #
    # @note When making an API call, you may pass SegmentDemographics
    #   data as a hash:
    #
    #       {
    #         app_version: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
    #         },
    #         channel: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
    #         },
    #         device_type: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
    #         },
    #         make: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
    #         },
    #         model: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
    #         },
    #         platform: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
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

    # Specifies the dimension settings for a segment.
    #
    # @note When making an API call, you may pass SegmentDimensions
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #             recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #           },
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #           gps_point: {
    #             coordinates: { # required
    #               latitude: 1.0, # required
    #               longitude: 1.0, # required
    #             },
    #             range_in_kilometers: 1.0,
    #           },
    #         },
    #         metrics: {
    #           "__string" => {
    #             comparison_operator: "__string", # required
    #             value: 1.0, # required
    #           },
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"], # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attributes
    #   One or more custom attributes to use as criteria for the segment.
    #   @return [Hash<String,Types::AttributeDimension>]
    #
    # @!attribute [rw] behavior
    #   The behavior-based criteria, such as how recently users have used
    #   your app, for the segment.
    #   @return [Types::SegmentBehaviors]
    #
    # @!attribute [rw] demographic
    #   The demographic-based criteria, such as device platform, for the
    #   segment.
    #   @return [Types::SegmentDemographics]
    #
    # @!attribute [rw] location
    #   The location-based criteria, such as region or GPS coordinates, for
    #   the segment.
    #   @return [Types::SegmentLocation]
    #
    # @!attribute [rw] metrics
    #   One or more custom metrics to use as criteria for the segment.
    #   @return [Hash<String,Types::MetricDimension>]
    #
    # @!attribute [rw] user_attributes
    #   One or more custom user attributes to use as criteria for the
    #   segment.
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

    # Specifies the base segments and dimensions for a segment, and the
    # relationships between these base segments and dimensions.
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
    #                 values: ["__string"], # required
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               gps_point: {
    #                 coordinates: { # required
    #                   latitude: 1.0, # required
    #                   longitude: 1.0, # required
    #                 },
    #                 range_in_kilometers: 1.0,
    #               },
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #           },
    #         ],
    #         source_segments: [
    #           {
    #             id: "__string", # required
    #             version: 1,
    #           },
    #         ],
    #         source_type: "ALL", # accepts ALL, ANY, NONE
    #         type: "ALL", # accepts ALL, ANY, NONE
    #       }
    #
    # @!attribute [rw] dimensions
    #   An array that defines the dimensions for the segment.
    #   @return [Array<Types::SegmentDimensions>]
    #
    # @!attribute [rw] source_segments
    #   The base segment to build the segment on. A base segment, also
    #   referred to as a *source segment*, defines the initial population of
    #   endpoints for a segment. When you add dimensions to a segment,
    #   Amazon Pinpoint filters the base segment by using the dimensions
    #   that you specify.
    #
    #   You can specify more than one dimensional segment or only one
    #   imported segment. If you specify an imported segment, the Amazon
    #   Pinpoint console displays a segment size estimate that indicates the
    #   size of the imported segment without any filters applied to it.
    #   @return [Array<Types::SegmentReference>]
    #
    # @!attribute [rw] source_type
    #   Specifies how to handle multiple base segments for the segment. For
    #   example, if you specify three base segments for the segment, whether
    #   the resulting segment is based on all, any, or none of the base
    #   segments.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies how to handle multiple dimensions for the segment. For
    #   example, if you specify three dimensions for the segment, whether
    #   the resulting segment includes endpoints that match all, any, or
    #   none of the dimensions.
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

    # Specifies the settings that define the relationships between segment
    # groups for a segment.
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
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 behavior: {
    #                   recency: {
    #                     duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                     recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                   },
    #                 },
    #                 demographic: {
    #                   app_version: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   channel: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   device_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   make: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   model: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   platform: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 location: {
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   gps_point: {
    #                     coordinates: { # required
    #                       latitude: 1.0, # required
    #                       longitude: 1.0, # required
    #                     },
    #                     range_in_kilometers: 1.0,
    #                   },
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #                 user_attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #               },
    #             ],
    #             source_segments: [
    #               {
    #                 id: "__string", # required
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
    #   An array that defines the set of segment criteria to evaluate when
    #   handling segment groups for the segment.
    #   @return [Array<Types::SegmentGroup>]
    #
    # @!attribute [rw] include
    #   Specifies how to handle multiple segment groups for the segment. For
    #   example, if the segment includes three segment groups, whether the
    #   resulting segment includes endpoints that match all, any, or none of
    #   the segment groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentGroupList AWS API Documentation
    #
    class SegmentGroupList < Struct.new(
      :groups,
      :include)
      include Aws::Structure
    end

    # Provides information about the import job that created a segment. An
    # import job is a job that creates a user segment by importing endpoint
    # definitions.
    #
    # @!attribute [rw] channel_counts
    #   The number of channel types in the endpoint definitions that were
    #   imported to create the segment.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] external_id
    #   (Deprecated) Your AWS account ID, which you assigned to an external
    #   ID key in an IAM trust policy. Amazon Pinpoint previously used this
    #   value to assume an IAM role when importing endpoint definitions, but
    #   we removed this requirement. We don't recommend use of external IDs
    #   for IAM roles that are assumed by Amazon Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the files that were imported to create the segment.
    #   Valid values are: CSV, for comma-separated values format; and, JSON,
    #   for newline-delimited JSON format.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorized Amazon Pinpoint to access the
    #   Amazon S3 location to import endpoint definitions from.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The URL of the Amazon Simple Storage Service (Amazon S3) bucket that
    #   the endpoint definitions were imported from to create the segment.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The number of endpoint definitions that were imported successfully
    #   to create the segment.
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

    # Specifies geographical dimension settings for a segment.
    #
    # @note When making an API call, you may pass SegmentLocation
    #   data as a hash:
    #
    #       {
    #         country: {
    #           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #           values: ["__string"], # required
    #         },
    #         gps_point: {
    #           coordinates: { # required
    #             latitude: 1.0, # required
    #             longitude: 1.0, # required
    #           },
    #           range_in_kilometers: 1.0,
    #         },
    #       }
    #
    # @!attribute [rw] country
    #   The country or region code, in ISO 3166-1 alpha-2 format, for the
    #   segment.
    #   @return [Types::SetDimension]
    #
    # @!attribute [rw] gps_point
    #   The GPS location and range for the segment.
    #   @return [Types::GPSPointDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentLocation AWS API Documentation
    #
    class SegmentLocation < Struct.new(
      :country,
      :gps_point)
      include Aws::Structure
    end

    # Specifies the segment identifier and version of a segment.
    #
    # @note When making an API call, you may pass SegmentReference
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #         version: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier for the segment.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the segment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentReference AWS API Documentation
    #
    class SegmentReference < Struct.new(
      :id,
      :version)
      include Aws::Structure
    end

    # Provides information about the configuration, dimension, and other
    # settings for a segment.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the segment is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the segment.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the segment was created.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimension settings for the segment.
    #   @return [Types::SegmentDimensions]
    #
    # @!attribute [rw] id
    #   The unique identifier for the segment.
    #   @return [String]
    #
    # @!attribute [rw] import_definition
    #   The settings for the import job that's associated with the segment.
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
    #   A list of one or more segment groups that apply to the segment. Each
    #   segment group consists of zero or more base segments and the
    #   dimensions that are applied to those base segments.
    #   @return [Types::SegmentGroupList]
    #
    # @!attribute [rw] segment_type
    #   The segment type. Valid values are:
    #
    #   * DIMENSIONAL - A dynamic segment, which is a segment that uses
    #     selection criteria that you specify and is based on endpoint data
    #     that's reported by your app. Dynamic segments can change over
    #     time.
    #
    #   * IMPORT - A static segment, which is a segment that uses selection
    #     criteria that you specify and is based on endpoint definitions
    #     that you import from a file. Imported segments are static; they
    #     don't change over time.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that identifies the tags
    #   that are associated with the segment. Each tag consists of a
    #   required tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version
    #   The version number of the segment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SegmentResponse AWS API Documentation
    #
    class SegmentResponse < Struct.new(
      :application_id,
      :arn,
      :creation_date,
      :dimensions,
      :id,
      :import_definition,
      :last_modified_date,
      :name,
      :segment_groups,
      :segment_type,
      :tags,
      :version)
      include Aws::Structure
    end

    # Provides information about all the segments that are associated with
    # an application.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each segment that's associated with
    #   the application (Segments resource) or each version of a segment
    #   that's associated with the application (Segment Versions resource).
    #   @return [Array<Types::SegmentResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
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
    #               channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #           message_configuration: { # required
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
    #               apns_push_type: "__string",
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
    #             email_message: {
    #               body: "__string",
    #               feedback_forwarding_address: "__string",
    #               from_address: "__string",
    #               raw_email: {
    #                 data: "data",
    #               },
    #               reply_to_addresses: ["__string"],
    #               simple_email: {
    #                 html_part: {
    #                   charset: "__string",
    #                   data: "__string",
    #                 },
    #                 subject: {
    #                   charset: "__string",
    #                   data: "__string",
    #                 },
    #                 text_part: {
    #                   charset: "__string",
    #                   data: "__string",
    #                 },
    #               },
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
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
    #               media_url: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #             },
    #             voice_message: {
    #               body: "__string",
    #               language_code: "__string",
    #               origination_number: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               voice_id: "__string",
    #             },
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string",
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
    #   Specifies the configuration and other settings for a message.
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
    #   Provides information about the results of a request to send a
    #   message to an endpoint address.
    #   @return [Types::MessageResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendMessagesResponse AWS API Documentation
    #
    class SendMessagesResponse < Struct.new(
      :message_response)
      include Aws::Structure
    end

    # Specifies the configuration and other settings for a message to send
    # to all the endpoints that are associated with a list of users.
    #
    # @note When making an API call, you may pass SendUsersMessageRequest
    #   data as a hash:
    #
    #       {
    #         context: {
    #           "__string" => "__string",
    #         },
    #         message_configuration: { # required
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
    #             apns_push_type: "__string",
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
    #           email_message: {
    #             body: "__string",
    #             feedback_forwarding_address: "__string",
    #             from_address: "__string",
    #             raw_email: {
    #               data: "data",
    #             },
    #             reply_to_addresses: ["__string"],
    #             simple_email: {
    #               html_part: {
    #                 charset: "__string",
    #                 data: "__string",
    #               },
    #               subject: {
    #                 charset: "__string",
    #                 data: "__string",
    #               },
    #               text_part: {
    #                 charset: "__string",
    #                 data: "__string",
    #               },
    #             },
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
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
    #             media_url: "__string",
    #             message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #             origination_number: "__string",
    #             sender_id: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #           },
    #           voice_message: {
    #             body: "__string",
    #             language_code: "__string",
    #             origination_number: "__string",
    #             substitutions: {
    #               "__string" => ["__string"],
    #             },
    #             voice_id: "__string",
    #           },
    #         },
    #         template_configuration: {
    #           email_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           push_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           sms_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           voice_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #         },
    #         trace_id: "__string",
    #         users: { # required
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
    #   A map of custom attribute-value pairs. For a push notification,
    #   Amazon Pinpoint adds these attributes to the data.pinpoint object in
    #   the body of the notification payload. Amazon Pinpoint also provides
    #   these attributes in the events that it generates for users-messages
    #   deliveries.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message_configuration
    #   The settings and content for the default message and any default
    #   messages that you defined for specific channels.
    #   @return [Types::DirectMessageConfiguration]
    #
    # @!attribute [rw] template_configuration
    #   The message template to use for the message.
    #   @return [Types::TemplateConfiguration]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier for tracing the message. This identifier is
    #   visible to message recipients.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   A map that associates user IDs with EndpointSendConfiguration
    #   objects. You can use an EndpointSendConfiguration object to tailor
    #   the message for a user by specifying settings such as content
    #   overrides and message variables.
    #   @return [Hash<String,Types::EndpointSendConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendUsersMessageRequest AWS API Documentation
    #
    class SendUsersMessageRequest < Struct.new(
      :context,
      :message_configuration,
      :template_configuration,
      :trace_id,
      :users)
      include Aws::Structure
    end

    # Provides information about which users and endpoints a message was
    # sent to.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that was used to send the
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier that was assigned to the message request.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   An object that indicates which endpoints the message was sent to,
    #   for each user. The object lists user IDs and, for each user ID,
    #   provides the endpoint IDs that the message was sent to. For each
    #   endpoint ID, it provides an EndpointMessageResult object.
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
    #           message_configuration: { # required
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
    #               apns_push_type: "__string",
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
    #             email_message: {
    #               body: "__string",
    #               feedback_forwarding_address: "__string",
    #               from_address: "__string",
    #               raw_email: {
    #                 data: "data",
    #               },
    #               reply_to_addresses: ["__string"],
    #               simple_email: {
    #                 html_part: {
    #                   charset: "__string",
    #                   data: "__string",
    #                 },
    #                 subject: {
    #                   charset: "__string",
    #                   data: "__string",
    #                 },
    #                 text_part: {
    #                   charset: "__string",
    #                   data: "__string",
    #                 },
    #               },
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
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
    #               media_url: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               origination_number: "__string",
    #               sender_id: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #             },
    #             voice_message: {
    #               body: "__string",
    #               language_code: "__string",
    #               origination_number: "__string",
    #               substitutions: {
    #                 "__string" => ["__string"],
    #               },
    #               voice_id: "__string",
    #             },
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #           },
    #           trace_id: "__string",
    #           users: { # required
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
    #   Specifies the configuration and other settings for a message to send
    #   to all the endpoints that are associated with a list of users.
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
    #   Provides information about which users and endpoints a message was
    #   sent to.
    #   @return [Types::SendUsersMessageResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendUsersMessagesResponse AWS API Documentation
    #
    class SendUsersMessagesResponse < Struct.new(
      :send_users_message_response)
      include Aws::Structure
    end

    # Provides information about a session.
    #
    # @note When making an API call, you may pass Session
    #   data as a hash:
    #
    #       {
    #         duration: 1,
    #         id: "__string", # required
    #         start_timestamp: "__string", # required
    #         stop_timestamp: "__string",
    #       }
    #
    # @!attribute [rw] duration
    #   The duration of the session, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   The unique identifier for the session.
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

    # Specifies the dimension type and values for a segment dimension.
    #
    # @note When making an API call, you may pass SetDimension
    #   data as a hash:
    #
    #       {
    #         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #         values: ["__string"], # required
    #       }
    #
    # @!attribute [rw] dimension_type
    #   The type of segment dimension to use. Valid values are: INCLUSIVE,
    #   endpoints that match the criteria are included in the segment; and,
    #   EXCLUSIVE, endpoints that match the criteria are excluded from the
    #   segment.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The criteria values to use for the segment dimension. Depending on
    #   the value of the DimensionType property, endpoints are included or
    #   excluded from the segment if their values match the criteria values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SetDimension AWS API Documentation
    #
    class SetDimension < Struct.new(
      :dimension_type,
      :values)
      include Aws::Structure
    end

    # Specifies a condition to evaluate for an activity in a journey.
    #
    # @note When making an API call, you may pass SimpleCondition
    #   data as a hash:
    #
    #       {
    #         event_condition: {
    #           dimensions: { # required
    #             attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             event_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #           },
    #           message_activity: "__string",
    #         },
    #         segment_condition: {
    #           segment_id: "__string", # required
    #         },
    #         segment_dimensions: {
    #           attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #           },
    #           behavior: {
    #             recency: {
    #               duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #               recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #             },
    #           },
    #           demographic: {
    #             app_version: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             channel: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             device_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             make: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             model: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             platform: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #           },
    #           location: {
    #             country: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             gps_point: {
    #               coordinates: { # required
    #                 latitude: 1.0, # required
    #                 longitude: 1.0, # required
    #               },
    #               range_in_kilometers: 1.0,
    #             },
    #           },
    #           metrics: {
    #             "__string" => {
    #               comparison_operator: "__string", # required
    #               value: 1.0, # required
    #             },
    #           },
    #           user_attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] event_condition
    #   The dimension settings for the event that's associated with the
    #   activity.
    #   @return [Types::EventCondition]
    #
    # @!attribute [rw] segment_condition
    #   The segment that's associated with the activity.
    #   @return [Types::SegmentCondition]
    #
    # @!attribute [rw] segment_dimensions
    #   The dimension settings for the segment that's associated with the
    #   activity.
    #   @return [Types::SegmentDimensions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SimpleCondition AWS API Documentation
    #
    class SimpleCondition < Struct.new(
      :event_condition,
      :segment_condition,
      :segment_dimensions)
      include Aws::Structure
    end

    # Specifies the contents of an email message, composed of a subject, a
    # text part, and an HTML part.
    #
    # @note When making an API call, you may pass SimpleEmail
    #   data as a hash:
    #
    #       {
    #         html_part: {
    #           charset: "__string",
    #           data: "__string",
    #         },
    #         subject: {
    #           charset: "__string",
    #           data: "__string",
    #         },
    #         text_part: {
    #           charset: "__string",
    #           data: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] html_part
    #   The body of the email message, in HTML format. We recommend using
    #   HTML format for email clients that render HTML content. You can
    #   include links, formatted text, and more in an HTML message.
    #   @return [Types::SimpleEmailPart]
    #
    # @!attribute [rw] subject
    #   The subject line, or title, of the email.
    #   @return [Types::SimpleEmailPart]
    #
    # @!attribute [rw] text_part
    #   The body of the email message, in plain text format. We recommend
    #   using plain text format for email clients that don't render HTML
    #   content and clients that are connected to high-latency networks,
    #   such as mobile devices.
    #   @return [Types::SimpleEmailPart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SimpleEmail AWS API Documentation
    #
    class SimpleEmail < Struct.new(
      :html_part,
      :subject,
      :text_part)
      include Aws::Structure
    end

    # Specifies the subject or body of an email message, represented as
    # textual email data and the applicable character set.
    #
    # @note When making an API call, you may pass SimpleEmailPart
    #   data as a hash:
    #
    #       {
    #         charset: "__string",
    #         data: "__string",
    #       }
    #
    # @!attribute [rw] charset
    #   The applicable character set for the message content.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The textual data of the message content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SimpleEmailPart AWS API Documentation
    #
    class SimpleEmailPart < Struct.new(
      :charset,
      :data)
      include Aws::Structure
    end

    # Specifies the conditions for the first activity in a journey. This
    # activity and its conditions determine which users are participants in
    # a journey.
    #
    # @note When making an API call, you may pass StartCondition
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         segment_start_condition: {
    #           segment_id: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   The custom description of the condition.
    #   @return [String]
    #
    # @!attribute [rw] segment_start_condition
    #   The segment that's associated with the first activity in the
    #   journey. This segment determines which users are participants in the
    #   journey.
    #   @return [Types::SegmentCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/StartCondition AWS API Documentation
    #
    class StartCondition < Struct.new(
      :description,
      :segment_start_condition)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags_model: { # required
    #           tags: { # required
    #             "__string" => "__string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags_model
    #   Specifies the tags (keys and values) for an application, campaign,
    #   message template, or segment.
    #   @return [Types::TagsModel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags_model)
      include Aws::Structure
    end

    # Specifies the tags (keys and values) for an application, campaign,
    # message template, or segment.
    #
    # @note When making an API call, you may pass TagsModel
    #   data as a hash:
    #
    #       {
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags for
    #   an application, campaign, message template, or segment. Each of
    #   these resources can have a maximum of 50 tags.
    #
    #   Each tag consists of a required tag key and an associated tag value.
    #   The maximum length of a tag key is 128 characters. The maximum
    #   length of a tag value is 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TagsModel AWS API Documentation
    #
    class TagsModel < Struct.new(
      :tags)
      include Aws::Structure
    end

    # Specifies the name and version of the message template to use for the
    # message.
    #
    # @note When making an API call, you may pass Template
    #   data as a hash:
    #
    #       {
    #         name: "__string",
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the message template to use for the message. If
    #   specified, this value must match the name of an existing message
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The unique identifier for the version of the message template to use
    #   for the message. If specified, this value must match the identifier
    #   for an existing template version. To retrieve a list of versions and
    #   version identifiers for a template, use the <link
    #   linkend="templates-template-name-template-type-versions" />
    #
    #   Template Versions</link> resource.
    #
    #   If you don't specify a value for this property, Amazon Pinpoint
    #   uses the *active version* of the template. The *active version* is
    #   typically the version of a template that's been most recently
    #   reviewed and approved for use, depending on your workflow. It isn't
    #   necessarily the latest version of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/Template AWS API Documentation
    #
    class Template < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # Specifies which version of a message template to use as the active
    # version of the template.
    #
    # @note When making an API call, you may pass TemplateActiveVersionRequest
    #   data as a hash:
    #
    #       {
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] version
    #   The version of the message template to use as the active version of
    #   the template. Valid values are: latest, for the most recent version
    #   of the template; or, the unique identifier for any existing version
    #   of the template. If you specify an identifier, the value must match
    #   the identifier for an existing template version. To retrieve a list
    #   of versions and version identifiers for a template, use the <link
    #   linkend="templates-template-name-template-type-versions" />
    #
    #   Template Versions</link> resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TemplateActiveVersionRequest AWS API Documentation
    #
    class TemplateActiveVersionRequest < Struct.new(
      :version)
      include Aws::Structure
    end

    # Specifies the message template to use for the message, for each type
    # of channel.
    #
    # @note When making an API call, you may pass TemplateConfiguration
    #   data as a hash:
    #
    #       {
    #         email_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         push_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         sms_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #         voice_template: {
    #           name: "__string",
    #           version: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] email_template
    #   The email template to use for the message.
    #   @return [Types::Template]
    #
    # @!attribute [rw] push_template
    #   The push notification template to use for the message.
    #   @return [Types::Template]
    #
    # @!attribute [rw] sms_template
    #   The SMS template to use for the message.
    #   @return [Types::Template]
    #
    # @!attribute [rw] voice_template
    #   The voice template to use for the message. This object isn't
    #   supported for campaigns.
    #   @return [Types::Template]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TemplateConfiguration AWS API Documentation
    #
    class TemplateConfiguration < Struct.new(
      :email_template,
      :push_template,
      :sms_template,
      :voice_template)
      include Aws::Structure
    end

    # Provides information about a message template that's associated with
    # your Amazon Pinpoint account.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the message template. This value
    #   isn't included in a TemplateResponse object. To retrieve the ARN of
    #   a template, use the GetEmailTemplate, GetPushTemplate,
    #   GetSmsTemplate, or GetVoiceTemplate operation, depending on the type
    #   of template that you want to retrieve the ARN for.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the message template was created.
    #   @return [String]
    #
    # @!attribute [rw] default_substitutions
    #   The JSON object that specifies the default values that are used for
    #   message variables in the message template. This object isn't
    #   included in a TemplateResponse object. To retrieve this object for a
    #   template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate,
    #   or GetVoiceTemplate operation, depending on the type of template
    #   that you want to retrieve the object for.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the message template was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs that identifies the tags that are
    #   associated with the message template. This object isn't included in
    #   a TemplateResponse object. To retrieve this object for a template,
    #   use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or
    #   GetVoiceTemplate operation, depending on the type of template that
    #   you want to retrieve the object for.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   The custom description of the message template. This value isn't
    #   included in a TemplateResponse object. To retrieve the description
    #   of a template, use the GetEmailTemplate, GetPushTemplate,
    #   GetSmsTemplate, or GetVoiceTemplate operation, depending on the type
    #   of template that you want to retrieve the description for.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of channel that the message template is designed for.
    #   Possible values are: EMAIL, PUSH, SMS, and VOICE.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The unique identifier, as an integer, for the active version of the
    #   message template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TemplateResponse AWS API Documentation
    #
    class TemplateResponse < Struct.new(
      :arn,
      :creation_date,
      :default_substitutions,
      :last_modified_date,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version)
      include Aws::Structure
    end

    # Provides information about a specific version of a message template.
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the version of the message
    #   template was created.
    #   @return [String]
    #
    # @!attribute [rw] default_substitutions
    #   A JSON object that specifies the default values that are used for
    #   message variables in the version of the message template. This
    #   object is a set of key-value pairs. Each key defines a message
    #   variable in the template. The corresponding value defines the
    #   default value for that variable.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the version of the message
    #   template was last modified.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   The custom description of the version of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of channel that the message template is designed for.
    #   Possible values are: EMAIL, PUSH, SMS, and VOICE.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The unique identifier for the version of the message template. This
    #   value is an integer that Amazon Pinpoint automatically increments
    #   and assigns to each new version of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TemplateVersionResponse AWS API Documentation
    #
    class TemplateVersionResponse < Struct.new(
      :creation_date,
      :default_substitutions,
      :last_modified_date,
      :template_description,
      :template_name,
      :template_type,
      :version)
      include Aws::Structure
    end

    # Provides information about all the versions of a specific message
    # template.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each version of the message template.
    #   @return [Array<Types::TemplateVersionResponse>]
    #
    # @!attribute [rw] message
    #   The message that's returned from the API for the request to
    #   retrieve information about all the versions of the message template.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier for the request to retrieve information about
    #   all the versions of the message template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TemplateVersionsResponse AWS API Documentation
    #
    class TemplateVersionsResponse < Struct.new(
      :item,
      :message,
      :next_token,
      :request_id)
      include Aws::Structure
    end

    # Provides information about all the message templates that are
    # associated with your Amazon Pinpoint account.
    #
    # @!attribute [rw] item
    #   An array of responses, one for each message template that's
    #   associated with your Amazon Pinpoint account and meets any filter
    #   criteria that you specified in the request.
    #   @return [Array<Types::TemplateResponse>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TemplatesResponse AWS API Documentation
    #
    class TemplatesResponse < Struct.new(
      :item,
      :next_token)
      include Aws::Structure
    end

    # Provides information about an API request or response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Specifies the settings for a campaign treatment. A *treatment* is a
    # variation of a campaign that's used for A/B testing of a campaign.
    #
    # @!attribute [rw] custom_delivery_configuration
    #   The delivery configuration settings for sending the treatment
    #   through a custom channel. This object is required if the
    #   MessageConfiguration object for the treatment specifies a
    #   CustomMessage object.
    #   @return [Types::CustomDeliveryConfiguration]
    #
    # @!attribute [rw] id
    #   The unique identifier for the treatment.
    #   @return [String]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings for the treatment.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule settings for the treatment.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] size_percent
    #   The allocated percentage of users (segment members) that the
    #   treatment is sent to.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current status of the treatment.
    #   @return [Types::CampaignState]
    #
    # @!attribute [rw] template_configuration
    #   The message template to use for the treatment.
    #   @return [Types::TemplateConfiguration]
    #
    # @!attribute [rw] treatment_description
    #   The custom description of the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   The custom name of the treatment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/TreatmentResource AWS API Documentation
    #
    class TreatmentResource < Struct.new(
      :custom_delivery_configuration,
      :id,
      :message_configuration,
      :schedule,
      :size_percent,
      :state,
      :template_configuration,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAdmChannelRequest
    #   data as a hash:
    #
    #       {
    #         adm_channel_request: { # required
    #           client_id: "__string", # required
    #           client_secret: "__string", # required
    #           enabled: false,
    #         },
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] adm_channel_request
    #   Specifies the status and settings of the ADM (Amazon Device
    #   Messaging) channel for an application.
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
    #   Provides information about the status and settings of the ADM
    #   (Amazon Device Messaging) channel for an application.
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
    #   Specifies the status and settings of the APNs (Apple Push
    #   Notification service) channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) channel for an application.
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
    #   Specifies the status and settings of the APNs (Apple Push
    #   Notification service) sandbox channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) sandbox channel for an
    #   application.
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
    #   Specifies the status and settings of the APNs (Apple Push
    #   Notification service) VoIP channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) VoIP channel for an application.
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
    #   Specifies the status and settings of the APNs (Apple Push
    #   Notification service) VoIP sandbox channel for an application.
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
    #   Provides information about the status and settings of the APNs
    #   (Apple Push Notification service) VoIP sandbox channel for an
    #   application.
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
    #   Specifies the default settings for an application.
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
    #   Provides information about an application, including the default
    #   settings for an application.
    #   @return [Types::ApplicationSettingsResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApplicationSettingsResponse AWS API Documentation
    #
    class UpdateApplicationSettingsResponse < Struct.new(
      :application_settings_resource)
      include Aws::Structure
    end

    # Specifies one or more attributes to remove from all the endpoints that
    # are associated with an application.
    #
    # @note When making an API call, you may pass UpdateAttributesRequest
    #   data as a hash:
    #
    #       {
    #         blacklist: ["__string"],
    #       }
    #
    # @!attribute [rw] blacklist
    #   An array of the attributes to remove from all the endpoints that are
    #   associated with the application. The array can specify the complete,
    #   exact name of each attribute to remove or it can specify a glob
    #   pattern that an attribute name must match in order for the attribute
    #   to be removed.
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
    #           api_key: "__string", # required
    #           enabled: false,
    #           secret_key: "__string", # required
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] baidu_channel_request
    #   Specifies the status and settings of the Baidu (Baidu Cloud Push)
    #   channel for an application.
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
    #   Provides information about the status and settings of the Baidu
    #   (Baidu Cloud Push) channel for an application.
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
    #               custom_delivery_configuration: {
    #                 delivery_uri: "__string", # required
    #                 endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #               },
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
    #                 custom_message: {
    #                   data: "__string",
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
    #                 event_filter: {
    #                   dimensions: { # required
    #                     attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     event_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                   },
    #                   filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #                 },
    #                 frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #                 is_local_time: false,
    #                 quiet_time: {
    #                   end: "__string",
    #                   start: "__string",
    #                 },
    #                 start_time: "__string", # required
    #                 timezone: "__string",
    #               },
    #               size_percent: 1, # required
    #               template_configuration: {
    #                 email_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #                 push_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #                 sms_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #                 voice_template: {
    #                   name: "__string",
    #                   version: "__string",
    #                 },
    #               },
    #               treatment_description: "__string",
    #               treatment_name: "__string",
    #             },
    #           ],
    #           custom_delivery_configuration: {
    #             delivery_uri: "__string", # required
    #             endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #           },
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
    #             custom_message: {
    #               data: "__string",
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
    #             event_filter: {
    #               dimensions: { # required
    #                 attributes: {
    #                   "__string" => {
    #                     attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                 },
    #                 event_type: {
    #                   dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #                 metrics: {
    #                   "__string" => {
    #                     comparison_operator: "__string", # required
    #                     value: 1.0, # required
    #                   },
    #                 },
    #               },
    #               filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #             },
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string", # required
    #             timezone: "__string",
    #           },
    #           segment_id: "__string",
    #           segment_version: 1,
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_configuration: {
    #             email_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             push_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             sms_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #             voice_template: {
    #               name: "__string",
    #               version: "__string",
    #             },
    #           },
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
    #   Specifies the configuration and other settings for a campaign.
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
    #   Provides information about the status, configuration, and other
    #   settings for a campaign.
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
    #           configuration_set: "__string",
    #           enabled: false,
    #           from_address: "__string", # required
    #           identity: "__string", # required
    #           role_arn: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] email_channel_request
    #   Specifies the status and settings of the email channel for an
    #   application.
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
    #   Provides information about the status and settings of the email
    #   channel for an application.
    #   @return [Types::EmailChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailChannelResponse AWS API Documentation
    #
    class UpdateEmailChannelResponse < Struct.new(
      :email_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         create_new_version: false,
    #         email_template_request: { # required
    #           default_substitutions: "__string",
    #           html_part: "__string",
    #           recommender_id: "__string",
    #           subject: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #           text_part: "__string",
    #         },
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] create_new_version
    #   @return [Boolean]
    #
    # @!attribute [rw] email_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in messages that are sent through the email channel.
    #   @return [Types::EmailTemplateRequest]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailTemplateRequest AWS API Documentation
    #
    class UpdateEmailTemplateRequest < Struct.new(
      :create_new_version,
      :email_template_request,
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailTemplateResponse AWS API Documentation
    #
    class UpdateEmailTemplateResponse < Struct.new(
      :message_body)
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
    #           channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #   Specifies the channel type and other settings for an endpoint.
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
    #   Provides information about an API request or response.
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
    #           item: [ # required
    #             {
    #               address: "__string",
    #               attributes: {
    #                 "__string" => ["__string"],
    #               },
    #               channel_type: "PUSH", # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #   Specifies a batch of endpoints to create or update and the settings
    #   and attributes to set or change for each endpoint.
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
    #   Provides information about an API request or response.
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
    #           api_key: "__string", # required
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] gcm_channel_request
    #   Specifies the status and settings of the GCM channel for an
    #   application. This channel enables Amazon Pinpoint to send push
    #   notifications through the Firebase Cloud Messaging (FCM), formerly
    #   Google Cloud Messaging (GCM), service.
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
    #   Provides information about the status and settings of the GCM
    #   channel for an application. The GCM channel enables Amazon Pinpoint
    #   to send push notifications through the Firebase Cloud Messaging
    #   (FCM), formerly Google Cloud Messaging (GCM), service.
    #   @return [Types::GCMChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateGcmChannelResponse AWS API Documentation
    #
    class UpdateGcmChannelResponse < Struct.new(
      :gcm_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJourneyRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         journey_id: "__string", # required
    #         write_journey_request: { # required
    #           activities: {
    #             "__string" => {
    #               custom: {
    #                 delivery_uri: "__string",
    #                 endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #                 message_config: {
    #                   data: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               conditional_split: {
    #                 condition: {
    #                   conditions: [
    #                     {
    #                       event_condition: {
    #                         dimensions: { # required
    #                           attributes: {
    #                             "__string" => {
    #                               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                               values: ["__string"], # required
    #                             },
    #                           },
    #                           event_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           metrics: {
    #                             "__string" => {
    #                               comparison_operator: "__string", # required
    #                               value: 1.0, # required
    #                             },
    #                           },
    #                         },
    #                         message_activity: "__string",
    #                       },
    #                       segment_condition: {
    #                         segment_id: "__string", # required
    #                       },
    #                       segment_dimensions: {
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         behavior: {
    #                           recency: {
    #                             duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                             recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                           },
    #                         },
    #                         demographic: {
    #                           app_version: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           channel: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           device_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           make: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           model: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           platform: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         location: {
    #                           country: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           gps_point: {
    #                             coordinates: { # required
    #                               latitude: 1.0, # required
    #                               longitude: 1.0, # required
    #                             },
    #                             range_in_kilometers: 1.0,
    #                           },
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           },
    #                         },
    #                         user_attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                       },
    #                     },
    #                   ],
    #                   operator: "ALL", # accepts ALL, ANY
    #                 },
    #                 evaluation_wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string",
    #                 },
    #                 false_activity: "__string",
    #                 true_activity: "__string",
    #               },
    #               description: "__string",
    #               email: {
    #                 message_config: {
    #                   from_address: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               holdout: {
    #                 next_activity: "__string",
    #                 percentage: 1, # required
    #               },
    #               multi_condition: {
    #                 branches: [
    #                   {
    #                     condition: {
    #                       event_condition: {
    #                         dimensions: { # required
    #                           attributes: {
    #                             "__string" => {
    #                               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                               values: ["__string"], # required
    #                             },
    #                           },
    #                           event_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           metrics: {
    #                             "__string" => {
    #                               comparison_operator: "__string", # required
    #                               value: 1.0, # required
    #                             },
    #                           },
    #                         },
    #                         message_activity: "__string",
    #                       },
    #                       segment_condition: {
    #                         segment_id: "__string", # required
    #                       },
    #                       segment_dimensions: {
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         behavior: {
    #                           recency: {
    #                             duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                             recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                           },
    #                         },
    #                         demographic: {
    #                           app_version: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           channel: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           device_type: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           make: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           model: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           platform: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         location: {
    #                           country: {
    #                             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                           gps_point: {
    #                             coordinates: { # required
    #                               latitude: 1.0, # required
    #                               longitude: 1.0, # required
    #                             },
    #                             range_in_kilometers: 1.0,
    #                           },
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           },
    #                         },
    #                         user_attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                       },
    #                     },
    #                     next_activity: "__string",
    #                   },
    #                 ],
    #                 default_activity: "__string",
    #                 evaluation_wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string",
    #                 },
    #               },
    #               push: {
    #                 message_config: {
    #                   time_to_live: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               random_split: {
    #                 branches: [
    #                   {
    #                     next_activity: "__string",
    #                     percentage: 1,
    #                   },
    #                 ],
    #               },
    #               sms: {
    #                 message_config: {
    #                   message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #                   sender_id: "__string",
    #                 },
    #                 next_activity: "__string",
    #                 template_name: "__string",
    #                 template_version: "__string",
    #               },
    #               wait: {
    #                 next_activity: "__string",
    #                 wait_time: {
    #                   wait_for: "__string",
    #                   wait_until: "__string",
    #                 },
    #               },
    #             },
    #           },
    #           creation_date: "__string",
    #           last_modified_date: "__string",
    #           limits: {
    #             daily_cap: 1,
    #             endpoint_reentry_cap: 1,
    #             messages_per_second: 1,
    #           },
    #           local_time: false,
    #           name: "__string", # required
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           refresh_frequency: "__string",
    #           schedule: {
    #             end_time: Time.now,
    #             start_time: Time.now,
    #             timezone: "__string",
    #           },
    #           start_activity: "__string",
    #           start_condition: {
    #             description: "__string",
    #             segment_start_condition: {
    #               segment_id: "__string", # required
    #             },
    #           },
    #           state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   @return [String]
    #
    # @!attribute [rw] write_journey_request
    #   Specifies the configuration and other settings for a journey.
    #   @return [Types::WriteJourneyRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateJourneyRequest AWS API Documentation
    #
    class UpdateJourneyRequest < Struct.new(
      :application_id,
      :journey_id,
      :write_journey_request)
      include Aws::Structure
    end

    # @!attribute [rw] journey_response
    #   Provides information about the status, configuration, and other
    #   settings for a journey.
    #   @return [Types::JourneyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateJourneyResponse AWS API Documentation
    #
    class UpdateJourneyResponse < Struct.new(
      :journey_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJourneyStateRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         journey_id: "__string", # required
    #         journey_state_request: { # required
    #           state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] journey_id
    #   @return [String]
    #
    # @!attribute [rw] journey_state_request
    #   Changes the status of a journey.
    #   @return [Types::JourneyStateRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateJourneyStateRequest AWS API Documentation
    #
    class UpdateJourneyStateRequest < Struct.new(
      :application_id,
      :journey_id,
      :journey_state_request)
      include Aws::Structure
    end

    # @!attribute [rw] journey_response
    #   Provides information about the status, configuration, and other
    #   settings for a journey.
    #   @return [Types::JourneyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateJourneyStateResponse AWS API Documentation
    #
    class UpdateJourneyStateResponse < Struct.new(
      :journey_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePushTemplateRequest
    #   data as a hash:
    #
    #       {
    #         create_new_version: false,
    #         push_notification_template_request: { # required
    #           adm: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           apns: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             media_url: "__string",
    #             raw_content: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           baidu: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           default_substitutions: "__string",
    #           gcm: {
    #             action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #             body: "__string",
    #             image_icon_url: "__string",
    #             image_url: "__string",
    #             raw_content: "__string",
    #             small_image_icon_url: "__string",
    #             sound: "__string",
    #             title: "__string",
    #             url: "__string",
    #           },
    #           recommender_id: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #         },
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] create_new_version
    #   @return [Boolean]
    #
    # @!attribute [rw] push_notification_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in messages that are sent through a push notification
    #   channel.
    #   @return [Types::PushNotificationTemplateRequest]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdatePushTemplateRequest AWS API Documentation
    #
    class UpdatePushTemplateRequest < Struct.new(
      :create_new_version,
      :push_notification_template_request,
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdatePushTemplateResponse AWS API Documentation
    #
    class UpdatePushTemplateResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # Specifies Amazon Pinpoint configuration settings for retrieving and
    # processing recommendation data from a recommender model.
    #
    # @note When making an API call, you may pass UpdateRecommenderConfiguration
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           "__string" => "__string",
    #         },
    #         description: "__string",
    #         name: "__string",
    #         recommendation_provider_id_type: "__string",
    #         recommendation_provider_role_arn: "__string", # required
    #         recommendation_provider_uri: "__string", # required
    #         recommendation_transformer_uri: "__string",
    #         recommendations_display_name: "__string",
    #         recommendations_per_message: 1,
    #       }
    #
    # @!attribute [rw] attributes
    #   A map of key-value pairs that defines 1-10 custom endpoint or user
    #   attributes, depending on the value for the
    #   RecommendationProviderIdType property. Each of these attributes
    #   temporarily stores a recommended item that's retrieved from the
    #   recommender model and sent to an AWS Lambda function for additional
    #   processing. Each attribute can be used as a message variable in a
    #   message template.
    #
    #   In the map, the key is the name of a custom attribute and the value
    #   is a custom display name for that attribute. The display name
    #   appears in the **Attribute finder** of the template editor on the
    #   Amazon Pinpoint console. The following restrictions apply to these
    #   names:
    #
    #   * An attribute name must start with a letter or number and it can
    #     contain up to 50 characters. The characters can be letters,
    #     numbers, underscores (\_), or hyphens (-). Attribute names are
    #     case sensitive and must be unique.
    #
    #   * An attribute display name must start with a letter or number and
    #     it can contain up to 25 characters. The characters can be letters,
    #     numbers, spaces, underscores (\_), or hyphens (-).
    #
    #   This object is required if the configuration invokes an AWS Lambda
    #   function (RecommendationTransformerUri) to process recommendation
    #   data. Otherwise, don't include this object in your request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   A custom description of the configuration for the recommender model.
    #   The description can contain up to 128 characters. The characters can
    #   be letters, numbers, spaces, or the following symbols: \_ ; () , ‐.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A custom name of the configuration for the recommender model. The
    #   name must start with a letter or number and it can contain up to 128
    #   characters. The characters can be letters, numbers, spaces,
    #   underscores (\_), or hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_id_type
    #   The type of Amazon Pinpoint ID to associate with unique user IDs in
    #   the recommender model. This value enables the model to use attribute
    #   and event data that’s specific to a particular endpoint or user in
    #   an Amazon Pinpoint application. Valid values are:
    #
    #   * PINPOINT\_ENDPOINT\_ID - Associate each user in the model with a
    #     particular endpoint in Amazon Pinpoint. The data is correlated
    #     based on endpoint IDs in Amazon Pinpoint. This is the default
    #     value.
    #
    #   * PINPOINT\_USER\_ID - Associate each user in the model with a
    #     particular user and endpoint in Amazon Pinpoint. The data is
    #     correlated based on user IDs in Amazon Pinpoint. If you specify
    #     this value, an endpoint definition in Amazon Pinpoint has to
    #     specify both a user ID (UserId) and an endpoint ID. Otherwise,
    #     messages won’t be sent to the user's endpoint.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon Pinpoint to retrieve
    #   recommendation data from the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_provider_uri
    #   The Amazon Resource Name (ARN) of the recommender model to retrieve
    #   recommendation data from. This value must match the ARN of an Amazon
    #   Personalize campaign.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_transformer_uri
    #   The name or Amazon Resource Name (ARN) of the AWS Lambda function to
    #   invoke for additional processing of recommendation data that's
    #   retrieved from the recommender model.
    #   @return [String]
    #
    # @!attribute [rw] recommendations_display_name
    #   A custom display name for the standard endpoint or user attribute
    #   (RecommendationItems) that temporarily stores recommended items for
    #   each endpoint or user, depending on the value for the
    #   RecommendationProviderIdType property. This value is required if the
    #   configuration doesn't invoke an AWS Lambda function
    #   (RecommendationTransformerUri) to perform additional processing of
    #   recommendation data.
    #
    #   This name appears in the **Attribute finder** of the template editor
    #   on the Amazon Pinpoint console. The name can contain up to 25
    #   characters. The characters can be letters, numbers, spaces,
    #   underscores (\_), or hyphens (-). These restrictions don't apply to
    #   attribute values.
    #   @return [String]
    #
    # @!attribute [rw] recommendations_per_message
    #   The number of recommended items to retrieve from the model for each
    #   endpoint or user, depending on the value for the
    #   RecommendationProviderIdType property. This number determines how
    #   many recommended items are available for use in message variables.
    #   The minimum value is 1. The maximum value is 5. The default value is
    #   5.
    #
    #   To use multiple recommended items and custom attributes with message
    #   variables, you have to use an AWS Lambda function
    #   (RecommendationTransformerUri) to perform additional processing of
    #   recommendation data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateRecommenderConfiguration AWS API Documentation
    #
    class UpdateRecommenderConfiguration < Struct.new(
      :attributes,
      :description,
      :name,
      :recommendation_provider_id_type,
      :recommendation_provider_role_arn,
      :recommendation_provider_uri,
      :recommendation_transformer_uri,
      :recommendations_display_name,
      :recommendations_per_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRecommenderConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         recommender_id: "__string", # required
    #         update_recommender_configuration: { # required
    #           attributes: {
    #             "__string" => "__string",
    #           },
    #           description: "__string",
    #           name: "__string",
    #           recommendation_provider_id_type: "__string",
    #           recommendation_provider_role_arn: "__string", # required
    #           recommendation_provider_uri: "__string", # required
    #           recommendation_transformer_uri: "__string",
    #           recommendations_display_name: "__string",
    #           recommendations_per_message: 1,
    #         },
    #       }
    #
    # @!attribute [rw] recommender_id
    #   @return [String]
    #
    # @!attribute [rw] update_recommender_configuration
    #   Specifies Amazon Pinpoint configuration settings for retrieving and
    #   processing recommendation data from a recommender model.
    #   @return [Types::UpdateRecommenderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateRecommenderConfigurationRequest AWS API Documentation
    #
    class UpdateRecommenderConfigurationRequest < Struct.new(
      :recommender_id,
      :update_recommender_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] recommender_configuration_response
    #   Provides information about Amazon Pinpoint configuration settings
    #   for retrieving and processing data from a recommender model.
    #   @return [Types::RecommenderConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateRecommenderConfigurationResponse AWS API Documentation
    #
    class UpdateRecommenderConfigurationResponse < Struct.new(
      :recommender_configuration_response)
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
    #                 values: ["__string"], # required
    #               },
    #             },
    #             behavior: {
    #               recency: {
    #                 duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                 recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #               },
    #             },
    #             demographic: {
    #               app_version: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               channel: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               device_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               make: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               model: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               platform: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #             },
    #             location: {
    #               country: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               gps_point: {
    #                 coordinates: { # required
    #                   latitude: 1.0, # required
    #                   longitude: 1.0, # required
    #                 },
    #                 range_in_kilometers: 1.0,
    #               },
    #             },
    #             metrics: {
    #               "__string" => {
    #                 comparison_operator: "__string", # required
    #                 value: 1.0, # required
    #               },
    #             },
    #             user_attributes: {
    #               "__string" => {
    #                 attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
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
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     behavior: {
    #                       recency: {
    #                         duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                         recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                       },
    #                     },
    #                     demographic: {
    #                       app_version: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       channel: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       device_type: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       make: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       model: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       platform: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                     location: {
    #                       country: {
    #                         dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                       gps_point: {
    #                         coordinates: { # required
    #                           latitude: 1.0, # required
    #                           longitude: 1.0, # required
    #                         },
    #                         range_in_kilometers: 1.0,
    #                       },
    #                     },
    #                     metrics: {
    #                       "__string" => {
    #                         comparison_operator: "__string", # required
    #                         value: 1.0, # required
    #                       },
    #                     },
    #                     user_attributes: {
    #                       "__string" => {
    #                         attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                         values: ["__string"], # required
    #                       },
    #                     },
    #                   },
    #                 ],
    #                 source_segments: [
    #                   {
    #                     id: "__string", # required
    #                     version: 1,
    #                   },
    #                 ],
    #                 source_type: "ALL", # accepts ALL, ANY, NONE
    #                 type: "ALL", # accepts ALL, ANY, NONE
    #               },
    #             ],
    #             include: "ALL", # accepts ALL, ANY, NONE
    #           },
    #           tags: {
    #             "__string" => "__string",
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
    #   Specifies the configuration, dimension, and other settings for a
    #   segment. A WriteSegmentRequest object can include a Dimensions
    #   object or a SegmentGroups object, but not both.
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
    #   Provides information about the configuration, dimension, and other
    #   settings for a segment.
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
    #   Specifies the status and settings of the SMS channel for an
    #   application.
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
    #   Provides information about the status and settings of the SMS
    #   channel for an application.
    #   @return [Types::SMSChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsChannelResponse AWS API Documentation
    #
    class UpdateSmsChannelResponse < Struct.new(
      :sms_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSmsTemplateRequest
    #   data as a hash:
    #
    #       {
    #         create_new_version: false,
    #         sms_template_request: { # required
    #           body: "__string",
    #           default_substitutions: "__string",
    #           recommender_id: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #         },
    #         template_name: "__string", # required
    #         version: "__string",
    #       }
    #
    # @!attribute [rw] create_new_version
    #   @return [Boolean]
    #
    # @!attribute [rw] sms_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in text messages that are sent through the SMS channel.
    #   @return [Types::SMSTemplateRequest]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsTemplateRequest AWS API Documentation
    #
    class UpdateSmsTemplateRequest < Struct.new(
      :create_new_version,
      :sms_template_request,
      :template_name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsTemplateResponse AWS API Documentation
    #
    class UpdateSmsTemplateResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTemplateActiveVersionRequest
    #   data as a hash:
    #
    #       {
    #         template_active_version_request: { # required
    #           version: "__string",
    #         },
    #         template_name: "__string", # required
    #         template_type: "__string", # required
    #       }
    #
    # @!attribute [rw] template_active_version_request
    #   Specifies which version of a message template to use as the active
    #   version of the template.
    #   @return [Types::TemplateActiveVersionRequest]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateTemplateActiveVersionRequest AWS API Documentation
    #
    class UpdateTemplateActiveVersionRequest < Struct.new(
      :template_active_version_request,
      :template_name,
      :template_type)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateTemplateActiveVersionResponse AWS API Documentation
    #
    class UpdateTemplateActiveVersionResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVoiceChannelRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         voice_channel_request: { # required
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] voice_channel_request
    #   Specifies the status and settings of the voice channel for an
    #   application.
    #   @return [Types::VoiceChannelRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateVoiceChannelRequest AWS API Documentation
    #
    class UpdateVoiceChannelRequest < Struct.new(
      :application_id,
      :voice_channel_request)
      include Aws::Structure
    end

    # @!attribute [rw] voice_channel_response
    #   Provides information about the status and settings of the voice
    #   channel for an application.
    #   @return [Types::VoiceChannelResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateVoiceChannelResponse AWS API Documentation
    #
    class UpdateVoiceChannelResponse < Struct.new(
      :voice_channel_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVoiceTemplateRequest
    #   data as a hash:
    #
    #       {
    #         create_new_version: false,
    #         template_name: "__string", # required
    #         version: "__string",
    #         voice_template_request: { # required
    #           body: "__string",
    #           default_substitutions: "__string",
    #           language_code: "__string",
    #           tags: {
    #             "__string" => "__string",
    #           },
    #           template_description: "__string",
    #           voice_id: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] create_new_version
    #   @return [Boolean]
    #
    # @!attribute [rw] template_name
    #   @return [String]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @!attribute [rw] voice_template_request
    #   Specifies the content and settings for a message template that can
    #   be used in messages that are sent through the voice channel.
    #   @return [Types::VoiceTemplateRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateVoiceTemplateRequest AWS API Documentation
    #
    class UpdateVoiceTemplateRequest < Struct.new(
      :create_new_version,
      :template_name,
      :version,
      :voice_template_request)
      include Aws::Structure
    end

    # @!attribute [rw] message_body
    #   Provides information about an API request or response.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateVoiceTemplateResponse AWS API Documentation
    #
    class UpdateVoiceTemplateResponse < Struct.new(
      :message_body)
      include Aws::Structure
    end

    # Specifies the status and settings of the voice channel for an
    # application.
    #
    # @note When making an API call, you may pass VoiceChannelRequest
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the voice channel for the application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/VoiceChannelRequest AWS API Documentation
    #
    class VoiceChannelRequest < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # Provides information about the status and settings of the voice
    # channel for an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the application that the voice channel
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time, in ISO 8601 format, when the voice channel was
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the voice channel is enabled for the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_credential
    #   (Not used) This property is retained only for backward
    #   compatibility.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   (Deprecated) An identifier for the voice channel. This property is
    #   retained only for backward compatibility.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Specifies whether the voice channel is archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_by
    #   The user who last modified the voice channel.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time, in ISO 8601 format, when the voice channel was
    #   last modified.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The type of messaging or notification platform for the channel. For
    #   the voice channel, this value is VOICE.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the voice channel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/VoiceChannelResponse AWS API Documentation
    #
    class VoiceChannelResponse < Struct.new(
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

    # Specifies the settings for a one-time voice message that's sent
    # directly to an endpoint through the voice channel.
    #
    # @note When making an API call, you may pass VoiceMessage
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         language_code: "__string",
    #         origination_number: "__string",
    #         substitutions: {
    #           "__string" => ["__string"],
    #         },
    #         voice_id: "__string",
    #       }
    #
    # @!attribute [rw] body
    #   The text of the script to use for the voice message.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The code for the language to use when synthesizing the text of the
    #   message script. For a list of supported languages and the code for
    #   each one, see the [Amazon Polly Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @!attribute [rw] origination_number
    #   The long code to send the voice message from. This value should be
    #   one of the dedicated long codes that's assigned to your AWS
    #   account. Although it isn't required, we recommend that you specify
    #   the long code in E.164 format, for example +12065550100, to ensure
    #   prompt and accurate delivery of the message.
    #   @return [String]
    #
    # @!attribute [rw] substitutions
    #   The default message variables to use in the voice message. You can
    #   override the default variables with individual address variables.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] voice_id
    #   The name of the voice to use when delivering the message. For a list
    #   of supported voices, see the [Amazon Polly Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/VoiceMessage AWS API Documentation
    #
    class VoiceMessage < Struct.new(
      :body,
      :language_code,
      :origination_number,
      :substitutions,
      :voice_id)
      include Aws::Structure
    end

    # Specifies the content and settings for a message template that can be
    # used in messages that are sent through the voice channel.
    #
    # @note When making an API call, you may pass VoiceTemplateRequest
    #   data as a hash:
    #
    #       {
    #         body: "__string",
    #         default_substitutions: "__string",
    #         language_code: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         template_description: "__string",
    #         voice_id: "__string",
    #       }
    #
    # @!attribute [rw] body
    #   The text of the script to use in messages that are based on the
    #   message template, in plain text format.
    #   @return [String]
    #
    # @!attribute [rw] default_substitutions
    #   A JSON object that specifies the default values to use for message
    #   variables in the message template. This object is a set of key-value
    #   pairs. Each key defines a message variable in the template. The
    #   corresponding value defines the default value for that variable.
    #   When you create a message that's based on the template, you can
    #   override these defaults with message-specific and address-specific
    #   variables and values.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The code for the language to use when synthesizing the text of the
    #   script in messages that are based on the message template. For a
    #   list of supported languages and the code for each one, see the
    #   [Amazon Polly Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags to
    #   associate with the message template. Each tag consists of a required
    #   tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   A custom description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The name of the voice to use when delivering messages that are based
    #   on the message template. For a list of supported voices, see the
    #   [Amazon Polly Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/VoiceTemplateRequest AWS API Documentation
    #
    class VoiceTemplateRequest < Struct.new(
      :body,
      :default_substitutions,
      :language_code,
      :tags,
      :template_description,
      :voice_id)
      include Aws::Structure
    end

    # Provides information about the content and settings for a message
    # template that can be used in messages that are sent through the voice
    # channel.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The text of the script that's used in messages that are based on
    #   the message template, in plain text format.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the message template was created.
    #   @return [String]
    #
    # @!attribute [rw] default_substitutions
    #   The JSON object that specifies the default values that are used for
    #   message variables in the message template. This object is a set of
    #   key-value pairs. Each key defines a message variable in the
    #   template. The corresponding value defines the default value for that
    #   variable.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The code for the language that's used when synthesizing the text of
    #   the script in messages that are based on the message template. For a
    #   list of supported languages and the code for each one, see the
    #   [Amazon Polly Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the message template was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that identifies the tags
    #   that are associated with the message template. Each tag consists of
    #   a required tag key and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_description
    #   The custom description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of channel that the message template is designed for. For a
    #   voice template, this value is VOICE.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The unique identifier, as an integer, for the active version of the
    #   message template, or the version of the template that you specified
    #   by using the version parameter in your request.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The name of the voice that's used when delivering messages that are
    #   based on the message template. For a list of supported voices, see
    #   the [Amazon Polly Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/VoiceTemplateResponse AWS API Documentation
    #
    class VoiceTemplateResponse < Struct.new(
      :arn,
      :body,
      :creation_date,
      :default_substitutions,
      :language_code,
      :last_modified_date,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version,
      :voice_id)
      include Aws::Structure
    end

    # Specifies the settings for a wait activity in a journey. This type of
    # activity waits for a certain amount of time or until a specific date
    # and time before moving participants to the next activity in a journey.
    #
    # @note When making an API call, you may pass WaitActivity
    #   data as a hash:
    #
    #       {
    #         next_activity: "__string",
    #         wait_time: {
    #           wait_for: "__string",
    #           wait_until: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] next_activity
    #   The unique identifier for the next activity to perform, after
    #   performing the wait activity.
    #   @return [String]
    #
    # @!attribute [rw] wait_time
    #   The amount of time to wait or the date and time when the activity
    #   moves participants to the next activity in the journey.
    #   @return [Types::WaitTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WaitActivity AWS API Documentation
    #
    class WaitActivity < Struct.new(
      :next_activity,
      :wait_time)
      include Aws::Structure
    end

    # Specifies a duration or a date and time that indicates when Amazon
    # Pinpoint determines whether an activity's conditions have been met or
    # an activity moves participants to the next activity in a journey.
    #
    # @note When making an API call, you may pass WaitTime
    #   data as a hash:
    #
    #       {
    #         wait_for: "__string",
    #         wait_until: "__string",
    #       }
    #
    # @!attribute [rw] wait_for
    #   The amount of time to wait, as a duration in ISO 8601 format, before
    #   determining whether the activity's conditions have been met or
    #   moving participants to the next activity in the journey.
    #   @return [String]
    #
    # @!attribute [rw] wait_until
    #   The date and time, in ISO 8601 format, when Amazon Pinpoint
    #   determines whether the activity's conditions have been met or the
    #   activity moves participants to the next activity in the journey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WaitTime AWS API Documentation
    #
    class WaitTime < Struct.new(
      :wait_for,
      :wait_until)
      include Aws::Structure
    end

    # Specifies the default settings for an application.
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
    #   The settings for the AWS Lambda function to invoke by default as a
    #   code hook for campaigns in the application. You can use this hook to
    #   customize segments that are used by campaigns in the application.
    #
    #   To override these settings and define custom settings for a specific
    #   campaign, use the CampaignHook object of the <link
    #   linkend="apps-application-id-campaigns-campaign-id" />
    #
    #   Campaign</link> resource.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   Specifies whether to enable application-related alarms in Amazon
    #   CloudWatch.
    #   @return [Boolean]
    #
    # @!attribute [rw] limits
    #   The default sending limits for campaigns and journeys in the
    #   application. To override these limits and define custom limits for a
    #   specific campaign or journey, use the <link
    #   linkend="apps-application-id-campaigns-campaign-id" />
    #
    #   Campaign</link> resource or the <link
    #   linkend="apps-application-id-journeys-journey-id" />
    #
    #   Journey</link> resource, respectively.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] quiet_time
    #   The default quiet time for campaigns and journeys in the
    #   application. Quiet time is a specific time range when messages
    #   aren't sent to endpoints, if all the following conditions are met:
    #
    #   * The EndpointDemographic.Timezone property of the endpoint is set
    #     to a valid value.
    #
    #   * The current time in the endpoint's time zone is later than or
    #     equal to the time specified by the QuietTime.Start property for
    #     the application (or a campaign or journey that has custom quiet
    #     time settings).
    #
    #   * The current time in the endpoint's time zone is earlier than or
    #     equal to the time specified by the QuietTime.End property for the
    #     application (or a campaign or journey that has custom quiet time
    #     settings).
    #
    #   If any of the preceding conditions isn't met, the endpoint will
    #   receive messages from a campaign or journey, even if quiet time is
    #   enabled.
    #
    #   To override the default quiet time settings for a specific campaign
    #   or journey, use the <link
    #   linkend="apps-application-id-campaigns-campaign-id" />
    #
    #   Campaign</link> resource or the <link
    #   linkend="apps-application-id-journeys-journey-id" />
    #
    #   Journey</link> resource to define a custom quiet time for the
    #   campaign or journey.
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

    # Specifies the configuration and other settings for a campaign.
    #
    # @note When making an API call, you may pass WriteCampaignRequest
    #   data as a hash:
    #
    #       {
    #         additional_treatments: [
    #           {
    #             custom_delivery_configuration: {
    #               delivery_uri: "__string", # required
    #               endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #             },
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
    #               custom_message: {
    #                 data: "__string",
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
    #               event_filter: {
    #                 dimensions: { # required
    #                   attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   event_type: {
    #                     dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                     values: ["__string"], # required
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string", # required
    #                       value: 1.0, # required
    #                     },
    #                   },
    #                 },
    #                 filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #               },
    #               frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #               is_local_time: false,
    #               quiet_time: {
    #                 end: "__string",
    #                 start: "__string",
    #               },
    #               start_time: "__string", # required
    #               timezone: "__string",
    #             },
    #             size_percent: 1, # required
    #             template_configuration: {
    #               email_template: {
    #                 name: "__string",
    #                 version: "__string",
    #               },
    #               push_template: {
    #                 name: "__string",
    #                 version: "__string",
    #               },
    #               sms_template: {
    #                 name: "__string",
    #                 version: "__string",
    #               },
    #               voice_template: {
    #                 name: "__string",
    #                 version: "__string",
    #               },
    #             },
    #             treatment_description: "__string",
    #             treatment_name: "__string",
    #           },
    #         ],
    #         custom_delivery_configuration: {
    #           delivery_uri: "__string", # required
    #           endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #         },
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
    #           custom_message: {
    #             data: "__string",
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
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 },
    #               },
    #             },
    #             filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #           },
    #           frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #           is_local_time: false,
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           start_time: "__string", # required
    #           timezone: "__string",
    #         },
    #         segment_id: "__string",
    #         segment_version: 1,
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         template_configuration: {
    #           email_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           push_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           sms_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           voice_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #         },
    #         treatment_description: "__string",
    #         treatment_name: "__string",
    #       }
    #
    # @!attribute [rw] additional_treatments
    #   An array of requests that defines additional treatments for the
    #   campaign, in addition to the default treatment for the campaign.
    #   @return [Array<Types::WriteTreatmentResource>]
    #
    # @!attribute [rw] custom_delivery_configuration
    #   The delivery configuration settings for sending the campaign through
    #   a custom channel. This object is required if the
    #   MessageConfiguration object for the campaign specifies a
    #   CustomMessage object.
    #   @return [Types::CustomDeliveryConfiguration]
    #
    # @!attribute [rw] description
    #   A custom description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] holdout_percent
    #   The allocated percentage of users (segment members) who shouldn't
    #   receive messages from the campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] hook
    #   The settings for the AWS Lambda function to invoke as a code hook
    #   for the campaign. You can use this hook to customize the segment
    #   that's used by the campaign.
    #   @return [Types::CampaignHook]
    #
    # @!attribute [rw] is_paused
    #   Specifies whether to pause the campaign. A paused campaign doesn't
    #   run unless you resume it by changing this value to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] limits
    #   The messaging limits for the campaign.
    #   @return [Types::CampaignLimits]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings for the campaign.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] name
    #   A custom name for the campaign.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule settings for the campaign.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] segment_id
    #   The unique identifier for the segment to associate with the
    #   campaign.
    #   @return [String]
    #
    # @!attribute [rw] segment_version
    #   The version of the segment to associate with the campaign.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags to
    #   associate with the campaign. Each tag consists of a required tag key
    #   and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_configuration
    #   The message template to use for the campaign.
    #   @return [Types::TemplateConfiguration]
    #
    # @!attribute [rw] treatment_description
    #   A custom description of the default treatment for the campaign.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   A custom name of the default treatment for the campaign, if the
    #   campaign has multiple treatments. A *treatment* is a variation of a
    #   campaign that's used for A/B testing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteCampaignRequest AWS API Documentation
    #
    class WriteCampaignRequest < Struct.new(
      :additional_treatments,
      :custom_delivery_configuration,
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
      :tags,
      :template_configuration,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

    # Specifies the Amazon Resource Name (ARN) of an event stream to publish
    # events to and the AWS Identity and Access Management (IAM) role to use
    # when publishing those events.
    #
    # @note When making an API call, you may pass WriteEventStream
    #   data as a hash:
    #
    #       {
    #         destination_stream_arn: "__string", # required
    #         role_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] destination_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or
    #   Amazon Kinesis Data Firehose delivery stream that you want to
    #   publish event data to.
    #
    #   For a Kinesis data stream, the ARN format is:
    #   arn:aws:kinesis:*region*\:*account-id*\:stream/*stream\_name*
    #
    #   For a Kinesis Data Firehose delivery stream, the ARN format is:
    #   arn:aws:firehose:*region*\:*account-id*\:deliverystream/*stream\_name*
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The AWS Identity and Access Management (IAM) role that authorizes
    #   Amazon Pinpoint to publish event data to the stream in your AWS
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteEventStream AWS API Documentation
    #
    class WriteEventStream < Struct.new(
      :destination_stream_arn,
      :role_arn)
      include Aws::Structure
    end

    # Specifies the configuration and other settings for a journey.
    #
    # @note When making an API call, you may pass WriteJourneyRequest
    #   data as a hash:
    #
    #       {
    #         activities: {
    #           "__string" => {
    #             custom: {
    #               delivery_uri: "__string",
    #               endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
    #               message_config: {
    #                 data: "__string",
    #               },
    #               next_activity: "__string",
    #               template_name: "__string",
    #               template_version: "__string",
    #             },
    #             conditional_split: {
    #               condition: {
    #                 conditions: [
    #                   {
    #                     event_condition: {
    #                       dimensions: { # required
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         event_type: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           },
    #                         },
    #                       },
    #                       message_activity: "__string",
    #                     },
    #                     segment_condition: {
    #                       segment_id: "__string", # required
    #                     },
    #                     segment_dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       behavior: {
    #                         recency: {
    #                           duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                           recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                         },
    #                       },
    #                       demographic: {
    #                         app_version: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         channel: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         device_type: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         make: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         model: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         platform: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       location: {
    #                         country: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         gps_point: {
    #                           coordinates: { # required
    #                             latitude: 1.0, # required
    #                             longitude: 1.0, # required
    #                           },
    #                           range_in_kilometers: 1.0,
    #                         },
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         },
    #                       },
    #                       user_attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                     },
    #                   },
    #                 ],
    #                 operator: "ALL", # accepts ALL, ANY
    #               },
    #               evaluation_wait_time: {
    #                 wait_for: "__string",
    #                 wait_until: "__string",
    #               },
    #               false_activity: "__string",
    #               true_activity: "__string",
    #             },
    #             description: "__string",
    #             email: {
    #               message_config: {
    #                 from_address: "__string",
    #               },
    #               next_activity: "__string",
    #               template_name: "__string",
    #               template_version: "__string",
    #             },
    #             holdout: {
    #               next_activity: "__string",
    #               percentage: 1, # required
    #             },
    #             multi_condition: {
    #               branches: [
    #                 {
    #                   condition: {
    #                     event_condition: {
    #                       dimensions: { # required
    #                         attributes: {
    #                           "__string" => {
    #                             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                             values: ["__string"], # required
    #                           },
    #                         },
    #                         event_type: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         metrics: {
    #                           "__string" => {
    #                             comparison_operator: "__string", # required
    #                             value: 1.0, # required
    #                           },
    #                         },
    #                       },
    #                       message_activity: "__string",
    #                     },
    #                     segment_condition: {
    #                       segment_id: "__string", # required
    #                     },
    #                     segment_dimensions: {
    #                       attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       behavior: {
    #                         recency: {
    #                           duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                           recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                         },
    #                       },
    #                       demographic: {
    #                         app_version: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         channel: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         device_type: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         make: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         model: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         platform: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                       location: {
    #                         country: {
    #                           dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                         gps_point: {
    #                           coordinates: { # required
    #                             latitude: 1.0, # required
    #                             longitude: 1.0, # required
    #                           },
    #                           range_in_kilometers: 1.0,
    #                         },
    #                       },
    #                       metrics: {
    #                         "__string" => {
    #                           comparison_operator: "__string", # required
    #                           value: 1.0, # required
    #                         },
    #                       },
    #                       user_attributes: {
    #                         "__string" => {
    #                           attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                           values: ["__string"], # required
    #                         },
    #                       },
    #                     },
    #                   },
    #                   next_activity: "__string",
    #                 },
    #               ],
    #               default_activity: "__string",
    #               evaluation_wait_time: {
    #                 wait_for: "__string",
    #                 wait_until: "__string",
    #               },
    #             },
    #             push: {
    #               message_config: {
    #                 time_to_live: "__string",
    #               },
    #               next_activity: "__string",
    #               template_name: "__string",
    #               template_version: "__string",
    #             },
    #             random_split: {
    #               branches: [
    #                 {
    #                   next_activity: "__string",
    #                   percentage: 1,
    #                 },
    #               ],
    #             },
    #             sms: {
    #               message_config: {
    #                 message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #                 sender_id: "__string",
    #               },
    #               next_activity: "__string",
    #               template_name: "__string",
    #               template_version: "__string",
    #             },
    #             wait: {
    #               next_activity: "__string",
    #               wait_time: {
    #                 wait_for: "__string",
    #                 wait_until: "__string",
    #               },
    #             },
    #           },
    #         },
    #         creation_date: "__string",
    #         last_modified_date: "__string",
    #         limits: {
    #           daily_cap: 1,
    #           endpoint_reentry_cap: 1,
    #           messages_per_second: 1,
    #         },
    #         local_time: false,
    #         name: "__string", # required
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         refresh_frequency: "__string",
    #         schedule: {
    #           end_time: Time.now,
    #           start_time: Time.now,
    #           timezone: "__string",
    #         },
    #         start_activity: "__string",
    #         start_condition: {
    #           description: "__string",
    #           segment_start_condition: {
    #             segment_id: "__string", # required
    #           },
    #         },
    #         state: "DRAFT", # accepts DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED
    #       }
    #
    # @!attribute [rw] activities
    #   A map that contains a set of Activity objects, one object for each
    #   activity in the journey. For each Activity object, the key is the
    #   unique identifier (string) for an activity and the value is the
    #   settings for the activity. An activity identifier can contain a
    #   maximum of 100 characters. The characters must be alphanumeric
    #   characters.
    #   @return [Hash<String,Types::Activity>]
    #
    # @!attribute [rw] creation_date
    #   The date, in ISO 8601 format, when the journey was created.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date, in ISO 8601 format, when the journey was last modified.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The messaging and entry limits for the journey.
    #   @return [Types::JourneyLimits]
    #
    # @!attribute [rw] local_time
    #   Specifies whether the journey's scheduled start and end times use
    #   each participant's local time. To base the schedule on each
    #   participant's local time, set this value to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the journey. A journey name can contain a maximum of 150
    #   characters. The characters can be alphanumeric characters or
    #   symbols, such as underscores (\_) or hyphens (-). A journey name
    #   can't contain any spaces.
    #   @return [String]
    #
    # @!attribute [rw] quiet_time
    #   The quiet time settings for the journey. Quiet time is a specific
    #   time range when a journey doesn't send messages to participants, if
    #   all the following conditions are met:
    #
    #   * The EndpointDemographic.Timezone property of the endpoint for the
    #     participant is set to a valid value.
    #
    #   * The current time in the participant's time zone is later than or
    #     equal to the time specified by the QuietTime.Start property for
    #     the journey.
    #
    #   * The current time in the participant's time zone is earlier than
    #     or equal to the time specified by the QuietTime.End property for
    #     the journey.
    #
    #   If any of the preceding conditions isn't met, the participant will
    #   receive messages from the journey, even if quiet time is enabled.
    #   @return [Types::QuietTime]
    #
    # @!attribute [rw] refresh_frequency
    #   The frequency with which Amazon Pinpoint evaluates segment and event
    #   data for the journey, as a duration in ISO 8601 format.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule settings for the journey.
    #   @return [Types::JourneySchedule]
    #
    # @!attribute [rw] start_activity
    #   The unique identifier for the first activity in the journey. The
    #   identifier for this activity can contain a maximum of 128
    #   characters. The characters must be alphanumeric characters.
    #   @return [String]
    #
    # @!attribute [rw] start_condition
    #   The segment that defines which users are participants in the
    #   journey.
    #   @return [Types::StartCondition]
    #
    # @!attribute [rw] state
    #   The status of the journey. Valid values are:
    #
    #   * DRAFT - Saves the journey and doesn't publish it.
    #
    #   * ACTIVE - Saves and publishes the journey. Depending on the
    #     journey's schedule, the journey starts running immediately or at
    #     the scheduled start time. If a journey's status is ACTIVE, you
    #     can't add, change, or remove activities from it.
    #
    #   The CANCELLED, COMPLETED, and CLOSED values are not supported in
    #   requests to create or update a journey. To cancel a journey, use the
    #   <link linkend="apps-application-id-journeys-journey-id-state" />
    #
    #   Journey State</link> resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteJourneyRequest AWS API Documentation
    #
    class WriteJourneyRequest < Struct.new(
      :activities,
      :creation_date,
      :last_modified_date,
      :limits,
      :local_time,
      :name,
      :quiet_time,
      :refresh_frequency,
      :schedule,
      :start_activity,
      :start_condition,
      :state)
      include Aws::Structure
    end

    # Specifies the configuration, dimension, and other settings for a
    # segment. A WriteSegmentRequest object can include a Dimensions object
    # or a SegmentGroups object, but not both.
    #
    # @note When making an API call, you may pass WriteSegmentRequest
    #   data as a hash:
    #
    #       {
    #         dimensions: {
    #           attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #           },
    #           behavior: {
    #             recency: {
    #               duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #               recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #             },
    #           },
    #           demographic: {
    #             app_version: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             channel: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             device_type: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             make: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             model: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             platform: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #           },
    #           location: {
    #             country: {
    #               dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
    #             },
    #             gps_point: {
    #               coordinates: { # required
    #                 latitude: 1.0, # required
    #                 longitude: 1.0, # required
    #               },
    #               range_in_kilometers: 1.0,
    #             },
    #           },
    #           metrics: {
    #             "__string" => {
    #               comparison_operator: "__string", # required
    #               value: 1.0, # required
    #             },
    #           },
    #           user_attributes: {
    #             "__string" => {
    #               attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #               values: ["__string"], # required
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
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   behavior: {
    #                     recency: {
    #                       duration: "HR_24", # required, accepts HR_24, DAY_7, DAY_14, DAY_30
    #                       recency_type: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #                     },
    #                   },
    #                   demographic: {
    #                     app_version: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     channel: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     device_type: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     make: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     model: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     platform: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                   location: {
    #                     country: {
    #                       dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                     gps_point: {
    #                       coordinates: { # required
    #                         latitude: 1.0, # required
    #                         longitude: 1.0, # required
    #                       },
    #                       range_in_kilometers: 1.0,
    #                     },
    #                   },
    #                   metrics: {
    #                     "__string" => {
    #                       comparison_operator: "__string", # required
    #                       value: 1.0, # required
    #                     },
    #                   },
    #                   user_attributes: {
    #                     "__string" => {
    #                       attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                       values: ["__string"], # required
    #                     },
    #                   },
    #                 },
    #               ],
    #               source_segments: [
    #                 {
    #                   id: "__string", # required
    #                   version: 1,
    #                 },
    #               ],
    #               source_type: "ALL", # accepts ALL, ANY, NONE
    #               type: "ALL", # accepts ALL, ANY, NONE
    #             },
    #           ],
    #           include: "ALL", # accepts ALL, ANY, NONE
    #         },
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] dimensions
    #   The criteria that define the dimensions for the segment.
    #   @return [Types::SegmentDimensions]
    #
    # @!attribute [rw] name
    #   The name of the segment.
    #   @return [String]
    #
    # @!attribute [rw] segment_groups
    #   The segment group to use and the dimensions to apply to the group's
    #   base segments in order to build the segment. A segment group can
    #   consist of zero or more base segments. Your request can include only
    #   one segment group.
    #   @return [Types::SegmentGroupList]
    #
    # @!attribute [rw] tags
    #   A string-to-string map of key-value pairs that defines the tags to
    #   associate with the segment. Each tag consists of a required tag key
    #   and an associated tag value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteSegmentRequest AWS API Documentation
    #
    class WriteSegmentRequest < Struct.new(
      :dimensions,
      :name,
      :segment_groups,
      :tags)
      include Aws::Structure
    end

    # Specifies the settings for a campaign treatment. A *treatment* is a
    # variation of a campaign that's used for A/B testing of a campaign.
    #
    # @note When making an API call, you may pass WriteTreatmentResource
    #   data as a hash:
    #
    #       {
    #         custom_delivery_configuration: {
    #           delivery_uri: "__string", # required
    #           endpoint_types: ["PUSH"], # accepts PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
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
    #           custom_message: {
    #             data: "__string",
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
    #           event_filter: {
    #             dimensions: { # required
    #               attributes: {
    #                 "__string" => {
    #                   attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["__string"], # required
    #                 },
    #               },
    #               event_type: {
    #                 dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #                 values: ["__string"], # required
    #               },
    #               metrics: {
    #                 "__string" => {
    #                   comparison_operator: "__string", # required
    #                   value: 1.0, # required
    #                 },
    #               },
    #             },
    #             filter_type: "SYSTEM", # required, accepts SYSTEM, ENDPOINT
    #           },
    #           frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT
    #           is_local_time: false,
    #           quiet_time: {
    #             end: "__string",
    #             start: "__string",
    #           },
    #           start_time: "__string", # required
    #           timezone: "__string",
    #         },
    #         size_percent: 1, # required
    #         template_configuration: {
    #           email_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           push_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           sms_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #           voice_template: {
    #             name: "__string",
    #             version: "__string",
    #           },
    #         },
    #         treatment_description: "__string",
    #         treatment_name: "__string",
    #       }
    #
    # @!attribute [rw] custom_delivery_configuration
    #   The delivery configuration settings for sending the treatment
    #   through a custom channel. This object is required if the
    #   MessageConfiguration object for the treatment specifies a
    #   CustomMessage object.
    #   @return [Types::CustomDeliveryConfiguration]
    #
    # @!attribute [rw] message_configuration
    #   The message configuration settings for the treatment.
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule settings for the treatment.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] size_percent
    #   The allocated percentage of users (segment members) to send the
    #   treatment to.
    #   @return [Integer]
    #
    # @!attribute [rw] template_configuration
    #   The message template to use for the treatment.
    #   @return [Types::TemplateConfiguration]
    #
    # @!attribute [rw] treatment_description
    #   A custom description of the treatment.
    #   @return [String]
    #
    # @!attribute [rw] treatment_name
    #   A custom name for the treatment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/WriteTreatmentResource AWS API Documentation
    #
    class WriteTreatmentResource < Struct.new(
      :custom_delivery_configuration,
      :message_configuration,
      :schedule,
      :size_percent,
      :template_configuration,
      :treatment_description,
      :treatment_name)
      include Aws::Structure
    end

  end
end
