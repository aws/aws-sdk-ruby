require 'aws-sdk-machinelearning/plugins/predict_endpoint'

module Aws
  module MachineLearning
    class Client
      add_plugin(Plugins::PredictEndpoint)
    end
  end
end
