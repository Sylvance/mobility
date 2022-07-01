# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: operator.proto for package 'mobility.services'

require 'grpc'
require 'operator_pb'

module Mobility
  module Services
    module OperatorServices
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'mobility.services.OperatorServices'

        rpc :ListOperators, ::Mobility::Services::ListOperatorsRequest, ::Mobility::Services::ListOperatorsResponse
        rpc :GetOperator, ::Mobility::Services::GetOperatorRequest, ::Mobility::Services::GetOperatorResponse
        rpc :CreateOperator, ::Mobility::Services::CreateOperatorRequest, ::Mobility::Services::CreateOperatorResponse
        rpc :UpdateOperator, ::Mobility::Services::UpdateOperatorRequest, ::Mobility::Services::UpdateOperatorResponse
        rpc :DeleteOperator, ::Mobility::Services::DeleteOperatorRequest, ::Mobility::Services::DeleteOperatorResponse
        rpc :SignInToStation, ::Mobility::Services::SignInToStationRequest, ::Mobility::Services::SignInToStationResponse
        rpc :InitiateFlight, ::Mobility::Services::InitiateFlightRequest, ::Mobility::Services::InitiateFlightResponse
        rpc :TerminateFlight, ::Mobility::Services::TerminateFlightRequest, ::Mobility::Services::TerminateFlightResponse
        rpc :InitiateSwap, ::Mobility::Services::InitiateSwapRequest, ::Mobility::Services::InitiateSwapResponse
        rpc :InitiatePaymentForFlight, ::Mobility::Services::InitiatePaymentForFlightRequest, ::Mobility::Services::InitiatePaymentForFlightResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
