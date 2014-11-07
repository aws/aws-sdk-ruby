module Aws
  module EC2
    class Instance
      # instance_id Provide an instance ID
      # @option options [Client] :client Optionally provide an existing EC2 client
      def initialize(instance_id = nil, options = {})
        @instance_id = instance_id
        fail "Instance ID is required" if @instance_id.nil?
        @client = options[:client] || Aws::EC2::Client.new
      end

      def decrypted_windows_password(key_pair_path)
        password_data = client.get_password_data instance_id: instance_id
        decoded = Base64.decode64 password_data.strip
        pem_bytes = Pathname.new(key_pair_path).read
        private_key = OpenSSL::PKey::RSA.new pem_bytes
        private_key.private_decrypt decoded
      end
    end
  end
end
