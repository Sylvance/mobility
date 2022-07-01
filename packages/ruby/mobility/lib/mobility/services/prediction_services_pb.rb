# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: prediction.proto for package 'mobility.services'

require 'grpc'
require 'prediction_pb'

module Mobility
  module Services
    module PredictionServices
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'mobility.services.PredictionServices'

        rpc :ListPredictions, ::Mobility::Services::ListPredictionsRequest, ::Mobility::Services::ListPredictionsResponse
        rpc :GetPrediction, ::Mobility::Services::GetPredictionRequest, ::Mobility::Services::GetPredictionResponse
        rpc :CreatePrediction, ::Mobility::Services::CreatePredictionRequest, ::Mobility::Services::CreatePredictionResponse
        rpc :UpdatePrediction, ::Mobility::Services::UpdatePredictionRequest, ::Mobility::Services::UpdatePredictionResponse
        rpc :DeletePrediction, ::Mobility::Services::DeletePredictionRequest, ::Mobility::Services::DeletePredictionResponse
        rpc :GenerateBatteryNumberPredictionForStation, ::Mobility::Services::GenerateBatteryNumberPredictionForStationRequest, ::Mobility::Services::GenerateBatteryNumberPredictionForStationResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
