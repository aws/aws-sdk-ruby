module Aws
  module Waiters
    class NullProvider < Provider

      def initialize
        super('waiters' => {})
      end

    end
  end
end
