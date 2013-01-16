require 'httparty'

# Exposes information about a running EC2 instance by performing queries on the metadata service.
# These queries are intended to only work when initiated from the EC2 instance that is the subject
# of the query.
module AWS
    class EC2
        include HTTParty
        base_uri 'http://169.254.169.254/latest/meta-data'
    
        # See /opt/aws/bin/ec2-metadata on an ec2 instance
        @@supported_metadata = [
            'ami-id', 'ami-launch-index', 'ami-manifest-path', 'ancestor-ami-ids',
            'block-device-mapping', 'instance-id', 'instance-type', 'local-hostname', 'local-ipv4',
            'kernel-id', 'placement', 'product-codes', 'public-hostname', 'public-ipv4', 'public-keys',
            'ramdisk-id', 'reservation-id', 'security-groups'
        ]
    
        # Examples:
        # 'public-hostname'
        # 'block-device-mapping'
        # 'block-device-mapping/root'
        # 'public-keys'
        # 'public-keys/0'
        # 'public-keys/0/openssh-key'
        # Likely throws a Timeout::Error if executed from outside of EC2
        def self.metadata property
            property_string = property.to_s
            property_components = property_string.split '/'
            raise "Unsupported property #{property_string}" unless @@supported_metadata.include? property_components.first
            httparty_response = get "/#{property_string}/", :timeout => 1
            raise "Error retrieving #{property_string} metadata: HTTP Status #{httparty_response.response.code}" unless httparty_response.response.code == "200"
            return httparty_response.body
        end
    end
end
