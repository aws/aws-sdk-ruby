module Aws
  module Signers
    class Handler

      def initialize(signer)
        @signer = signer
      end

      attr_accessor :handler

      def call(context)
        @signer.sign(context)
        @handler.call(context)
      end

    end
  end
end
