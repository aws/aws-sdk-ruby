module AWS
  class EMR

    # @private
    class Request < Core::Http::Request
      include Core::Signature::Version2
    end

  end
end
