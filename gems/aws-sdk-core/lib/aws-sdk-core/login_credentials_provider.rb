# frozen_string_literal: true

module Aws
  module Core
    # An auto-refreshing credential provider that retrieves credentials from
    # a cached login token. This class does NOT implement the AWS Sign-In
    # login flow - tokens must be generated separately by running `aws login`
    # from the AWS CLI with the correct profile. The {LoginCredentialsProvider}
    # will auto-refresh the AWS credentials from Sign-In.
    #
    #     # You must first run aws login --profile your-login-profile
    #     credentials = Aws::Core::LoginCredentialsProvider.new(login_session: 'my_login_session')
    #     ec2 = Aws::EC2::Client.new(credentials_provider: credentials)
    #
    # If you omit the `:client` option, a new {Aws::Signin::Client} object will be constructed.
    class LoginCredentialsProvider
      include Smithy::Client::IdentityProvider
      include Smithy::Client::RefreshingIdentityProvider

      # Raised when Login Token is invalid
      class InvalidLoginToken < RuntimeError; end

      # @option options [required, String] :login_session The login session.
      #   This value can be found in the AWS config file which is set by the
      #   AWS CLI automatically.
      #
      # @option options [Signin::Client] :client Optional `Signin::Client`.
      #   If not provided, a client will be constructed.
      def initialize(options = {})
        unless defined?(Aws::Signin)
          raise 'The aws-sdk-signin gem must be required in order to use LoginCredentialsProvider.'
        end

        raise ArgumentError, 'Missing login_session' unless options[:login_session]

        @login_session = options.delete(:login_session)
        @client = options[:client] || Signin::Client.new(options.merge(credentials_provider: nil))
        @features = ['CREDENTIALS_SIGN_IN']
        @async_refresh = true
        super
      end

      # @return [Signin::Client]
      attr_reader :client

      # Feature IDs for the User-Agent
      # @api private
      attr_accessor :features

      private

      def refresh
        # First reload the token from disk to ensure it hasn't been refreshed externally
        token_json = read_cached_token
        update_creds_from_token(token_json)
        return if @identity && @expiration && !near_expiration?(sync_expiration_length)

        # Attempt to refresh the token
        attempt_refresh(token_json)

        # Raise if token is hard expired
        return unless !@expiration || @expiration < Time.now

        raise InvalidLoginToken, 'Login token is invalid and failed to refresh. Please reauthenticate with `aws login`.'
      end

      def read_cached_token
        cached_token = JSON.load_file(login_cache_file)
        validate_cached_token(cached_token)
        cached_token
      rescue Errno::ENOENT, JSON::ParserError
        raise InvalidLoginToken, 'Failed to load a Login token for profile. Please reauthenticate with `aws login`.'
      end

      def login_cache_file
        directory = ENV['AWS_LOGIN_CACHE_DIRECTORY'] || File.join(Dir.home, '.aws', 'login', 'cache')
        login_session_sha = OpenSSL::Digest::SHA256.hexdigest(@login_session.strip.encode('utf-8'))
        File.join(directory, "#{login_session_sha}.json")
      end

      def validate_cached_token(cached_token)
        access_token = cached_token['accessToken']
        unless access_token
          raise ArgumentError, 'Missing required field: accessToken. Please reauthenticate with `aws login`.'
        end

        required_access_token_fields = %w[accessKeyId secretAccessKey sessionToken accountId expiresAt]
        required_cached_token_fields = %w[clientId refreshToken dpopKey]
        missing_fields = required_access_token_fields.reject { |field| access_token[field] } +
                         required_cached_token_fields.reject { |field| cached_token[field] }

        return if missing_fields.empty?

        raise ArgumentError, "Missing required field(s): #{missing_fields}. Please reauthenticate with `aws login`."
      end

      def update_creds_from_token(token_json)
        access_token = token_json['accessToken']
        @expiration = Time.parse(access_token['expiresAt'])
        @identity = Credentials.new(
          access_key_id: access_token['accessKeyId'],
          secret_access_key: access_token['secretAccessKey'],
          session_token: access_token['sessionToken'],
          account_id: access_token['accountId']
        )
      end

      def attempt_refresh(token_json)
        endpoint = determine_endpoint
        options = {
          dpop_proof: dpop_proof(token_json['dpopKey'], endpoint),
          token_input: {
            client_id: token_json['clientId'],
            grant_type: 'refresh_token',
            refresh_token: token_json['refreshToken']
          }
        }
        resp = @client.create_o_auth2_token(options)
        parse_resp(resp.token_output, token_json)
        update_creds_from_token(token_json)
        update_token_cache(token_json)
      rescue StandardError
        warn('Failed to refresh Login token for LoginCredentialsProvider.')
      end

      def determine_endpoint
        params = {
          dpop_proof: 'dummy_dpop_proof',
          token_input: {
            client_id: 'dummy_client_id',
            grant_type: 'dummy_grant_type',
            refresh_token: 'dummy_refresh_token'
          }
        }
        context = @client.build_request(:create_o_auth2_token, params).context
        endpoint_params = Aws::Signin::EndpointParameters.create(context)
        endpoint = context.config.endpoint_provider.resolve(endpoint_params)
        uri = Signin::Client.service.operation(:create_o_auth2_token).traits['smithy.api#http']['uri']
        URI.join(endpoint.url, uri).to_s
      end

      def dpop_proof(dpop_key, endpoint)
        # Load private key from cached token file
        private_key = OpenSSL::PKey.read(dpop_key)
        x = private_key.public_key.to_octet_string(:uncompressed)[1, 32]
        y = private_key.public_key.to_octet_string(:uncompressed)[33, 32]

        # Construct header and payload
        header = build_header(x, y)
        payload = build_payload(endpoint)

        # Base64URL encode header and payload, sign message using private key, and create header
        message = build_message(header, payload)
        signature = private_key.sign(OpenSSL::Digest.new('SHA256'), message)
        jws_signature = der_to_jws(signature)
        "#{message}.#{Base64.urlsafe_encode64(jws_signature, padding: false)}"
      end

      def build_header(x_bytes, y_bytes)
        {
          'alg' => 'ES256', # signing algorithm
          'jwk' => {
            'crv' => 'P-256', # curve name
            'kty' => 'EC', # key type
            'x' => Base64.urlsafe_encode64(x_bytes, padding: false), # public x coordinate
            'y' => Base64.urlsafe_encode64(y_bytes, padding: false) # public y coordinate
          },
          'typ' => 'dpop+jwt' # hardcoded
        }
      end

      def build_payload(htu)
        {
          'jti' => SecureRandom.uuid, # unique identifier (cryptographically random UUID4)
          'htm' => 'POST', # hardcoded
          'htu' => htu, # same endpoint as Sign-In Operation
          'iat' => Time.now.utc.to_i # UTC timestamp, specified number of seconds from 1970-01-01T00:00:00Z UTC
        }
      end

      def build_message(header, payload)
        encoded_header = Base64.urlsafe_encode64(JSON.dump(header), padding: false)
        encoded_payload = Base64.urlsafe_encode64(JSON.dump(payload), padding: false)
        "#{encoded_header}.#{encoded_payload}"
      end

      # Converts DER-encoded ASN.1 signature to JWS
      def der_to_jws(der_signature)
        asn1 = OpenSSL::ASN1.decode(der_signature)
        r = asn1.value[0].value
        s = asn1.value[1].value

        r_hex = r.to_s(16).rjust(64, '0')
        s_hex = s.to_s(16).rjust(64, '0')

        [r_hex + s_hex].pack('H*')
      end

      def parse_resp(resp, token_json)
        access_token = token_json['accessToken']
        access_token.merge!(
          'accessKeyId' => resp.access_token.access_key_id,
          'secretAccessKey' => resp.access_token.secret_access_key,
          'sessionToken' => resp.access_token.session_token,
          'expiresAt' => (Time.now.utc + resp.expires_in).to_datetime.rfc3339
        )
        token_json['refreshToken'] = resp.refresh_token
      end

      def update_token_cache(token_json)
        cached_token = token_json.dup
        File.write(login_cache_file, JSON.dump(cached_token))
      end
    end
  end
end
