# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class CurrentUser

    extend Aws::Deprecations

    # @overload def initialize(options = {})
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # The path to the user. For more information about paths, see [IAM
    # Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def path
      data.path
    end

    # The friendly name identifying the user.
    # @return [String]
    def user_name
      data.user_name
    end

    # The stable and unique string identifying the user. For more
    # information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    # guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def user_id
      data.user_id
    end

    # The Amazon Resource Name (ARN) that identifies the user. For more
    # information about ARNs and how to use ARNs in policies, see [IAM
    # Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def arn
      data.arn
    end

    # The date and time, in [ISO 8601 date-time format][1], when the user
    # was created.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # @return [Time]
    def create_date
      data.create_date
    end

    # The date and time, in [ISO 8601 date-time format][1], when the user's
    # password was last used to sign in to an AWS website. For a list of AWS
    # websites that capture a user's last sign-in time, see the [Credential
    # Reports][2] topic in the *Using IAM* guide. If a password is used more
    # than once in a five-minute span, only the first use is returned in
    # this field. This field is null (not present) when:
    #
    # * The user does not have a password
    #
    # * The password exists but has never been used (at least not since IAM
    #   started tracking this information on October 20th, 2014
    #
    # * there is no sign-in data associated with the user
    #
    # This value is returned only in the GetUser and ListUsers actions.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
    # @return [Time]
    def password_last_used
      data.password_last_used
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {CurrentUser}.
    # Returns `self` making it possible to chain methods.
    #
    #     current_user.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_user
      @data = resp.user
      self
    end
    alias :reload :load

    # @return [Types::User]
    #   Returns the data for this {CurrentUser}. Calls
    #   {Client#get_user} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   access_keys = current_user.access_keys({
    #     user_name: "existingUserNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :user_name
    #   The name of the user.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [AccessKey::Collection]
    def access_keys(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_access_keys(options)
        resp.each_page do |page|
          batch = []
          page.data.access_key_metadata.each do |a|
            batch << AccessKey.new(
              user_name: a.user_name,
              id: a.access_key_id,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      AccessKey::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   mfa_devices = current_user.mfa_devices({
    #     user_name: "existingUserNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :user_name
    #   The name of the user whose MFA devices you want to list.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [MfaDevice::Collection]
    def mfa_devices(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_mfa_devices(options)
        resp.each_page do |page|
          batch = []
          page.data.mfa_devices.each do |m|
            batch << MfaDevice.new(
              user_name: m.user_name,
              serial_number: m.serial_number,
              data: m,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      MfaDevice::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   signing_certificates = current_user.signing_certificates({
    #     user_name: "existingUserNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :user_name
    #   The name of the IAM user whose signing certificates you want to
    #   examine.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [SigningCertificate::Collection]
    def signing_certificates(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_signing_certificates(options)
        resp.each_page do |page|
          batch = []
          page.data.certificates.each do |c|
            batch << SigningCertificate.new(
              user_name: c.user_name,
              id: c.certificate_id,
              data: c,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      SigningCertificate::Collection.new(batches)
    end

    # @return [User, nil]
    def user
      if data.user_name
        User.new(
          name: data.user_name,
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      {}
    end
    deprecated(:identifiers)

    class Collection < Aws::Resources::Collection; end
  end
end
