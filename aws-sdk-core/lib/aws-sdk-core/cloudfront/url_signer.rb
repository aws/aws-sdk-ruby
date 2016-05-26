require 'base64'
require 'uri'
require 'time'
require 'json'
require 'openssl'

module Aws
  module CloudFront
        # Allows you to create signed URLs for Amazon CloudFront resources
        #
        # Example Use:
        # signer = Aws::CloudFront::UrlSigner.new
        # url = signer.signed_url(
        #	"CF_KEYPAIR_ID",
        #	"/path/to/private/key/cf_private_key.pem"
        # )
        #
        class UrlSigner
        	# @key_pair_id [String] :ID of the key pair
            # @private_key_path [String] :Path to the private key used for signing
            def initialize(key_pair_id, private_key_path)
                @key_pair_id = key_pair_id
                @private_key = File.open(private_key_path, 'rb') { |f| f.read }
            end

            # create a signed Amazon CloudFront URL
            # @param [String] URL to sign
            # @option param [String | Integer] UTC Unix timestamp
            # @option param [String] JSON Policy
            def signed_url(url, expires = nil, policy = nil)
                url_sections = url.split('://')
                if url_sections.length < 2
                    raise ArgumentError, "Invaild URL:#{url}"
                end

                scheme = url_sections[0].gsub('*', '')
                uri = "#{scheme}://#{url_sections[1]}"
                signature = signature(resource(scheme, uri), expires, policy)
                start_flag = (uri.include? '?') ? '&' : '?'

                uri = "#{uri}#{start_flag}#{signature}"
                if scheme == 'rtmp'
                    rtmp_url(URI(uri))
        		else
        			uri
                end
            end

            # create a relative signed URL for RTMP distribution
            def rtmp_url(uri)
                result = uri.path.gsub(' ', '/')
        		result[0] = ''
                if uri.query.nil?
                    result
        		else
        			"#{result}?#{uri.query}"
                end
            end

            # prepare resource for signing
            def resource(scheme, url)
                case scheme
                when 'http', 'http*', 'https' then url
                when 'rtmp'
                    url_info = URI.parse(url)
                    path = url_info.path
        			path[0] = ''
                    resource_content = "#{File.dirname(path)}"\
                        "/#{File.basename(path)}".gsub(' ', '/')
                    if url_info.query.nil?
                    	resource_content
        			else
        				"#{resource_content}?#{uri.query}"
                    end
        		else
        			raise ArgumentError, "Invaild URI scheme:#{scheme}."\
                    	"Scheme must be one of: http, https, or rtmp."
                end
        	end

            # create signed values that used to construct signed URLs
            # @option param [String] CloudFront resource to which
            #    this signature will grant access. Not used when a custom
            #    policy is provided.
            # @option param [String] UTC Unix timestamp used when
            #    signing with a canned policy. Not required when passing
            #    a custom policy.
            # @option param [String] JSON policy. Use this option when
            #    creating a signature for a custom policy.
            def signature(resource = nil, expires = nil, policy = nil)
                signature_content = []
                if !policy.nil?
                    policy = policy.gsub('/\s/s', '')
                    signature_content << "Policy=#{encode(policy)}"
                elsif !resource.nil? && !expires.nil?
                    policy = canned_policy(resource, expires)
                    signature_content << "Expires=#{expires}"
                else
                    raise ArgumentError, "Either a policy or a resource"\
                        " and an expiration time must be provided."
                end
                signature_content << "Signature=#{encode(sign_policy(policy))}"
                signature_content << "Key-Pair-Id=#{@key_pair_id}"
                signature_content.join('&').gsub("\n", '')
            end

            # create the signature string with policy signed
            def sign_policy(policy)
        		key = OpenSSL::PKey::RSA.new(@private_key)
                key.sign(OpenSSL::Digest::SHA1.new, policy)
            end

            # create canned policy that used for signing
            def canned_policy(resource, expires)
                json_hash = {
                    'Statement' => [
                        'Resource' => resource,
                        'Condition' => {
                            'DateLessThan' => {'AWS:EpochTime' => expires}
                        }
                    ]
                }
                json_hash.to_json
            end

            def encode(policy)
                Base64.encode64(policy).gsub(
        			/[+=\/]/,
        			'+' => '-',
        			'=' => '_',
        			'/' => '~'
        		)
            end
        end
    end
end
