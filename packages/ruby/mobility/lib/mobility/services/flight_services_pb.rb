# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: flight.proto for package 'mobility.services'

require 'grpc'
require_relative 'flight_pb'

module Mobility
  module Services
    module FlightServices
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'mobility.services.FlightServices'

        rpc :ListFlights, ::Mobility::Services::ListFlightsRequest, ::Mobility::Services::ListFlightsResponse
        rpc :GetFlight, ::Mobility::Services::GetFlightRequest, ::Mobility::Services::GetFlightResponse
        rpc :CreateFlight, ::Mobility::Services::CreateFlightRequest, ::Mobility::Services::CreateFlightResponse
        rpc :UpdateFlight, ::Mobility::Services::UpdateFlightRequest, ::Mobility::Services::UpdateFlightResponse
        rpc :DeleteFlight, ::Mobility::Services::DeleteFlightRequest, ::Mobility::Services::DeleteFlightResponse
        rpc :FinishFlight, ::Mobility::Services::FinishFlightRequest, ::Mobility::Services::FinishFlightResponse
        rpc :RetrieveCurrentFlightLocation, ::Mobility::Services::RetrieveCurrentFlightLocationRequest, ::Mobility::Services::RetrieveCurrentFlightLocationResponse
        rpc :RetrieveCurrentFlightEnergyUsage, ::Mobility::Services::RetrieveCurrentFlightEnergyUsageRequest, ::Mobility::Services::RetrieveCurrentFlightEnergyUsageResponse
        rpc :RetrieveCurrentFlightDistanceCovered, ::Mobility::Services::RetrieveCurrentFlightDistanceCoveredRequest, ::Mobility::Services::RetrieveCurrentFlightDistanceCoveredResponse
        rpc :RetrieveCurrentFlightCashAmount, ::Mobility::Services::RetrieveCurrentFlightCashAmountRequest, ::Mobility::Services::RetrieveCurrentFlightCashAmountResponse
        rpc :RetrieveFinalFlightLocation, ::Mobility::Services::RetrieveFinalFlightLocationRequest, ::Mobility::Services::RetrieveFinalFlightLocationResponse
        rpc :RetrieveFinalFlightEnergyUsage, ::Mobility::Services::RetrieveFinalFlightEnergyUsageRequest, ::Mobility::Services::RetrieveFinalFlightEnergyUsageResponse
        rpc :RetrieveFinalFlightDistanceCovered, ::Mobility::Services::RetrieveFinalFlightDistanceCoveredRequest, ::Mobility::Services::RetrieveFinalFlightDistanceCoveredResponse
        rpc :RetrieveFinalFlightCashAmount, ::Mobility::Services::RetrieveFinalFlightCashAmountRequest, ::Mobility::Services::RetrieveFinalFlightCashAmountResponse
        rpc :RetrieveNearestStationToFlight, ::Mobility::Services::RetrieveNearestStationToFlightRequest, ::Mobility::Services::RetrieveNearestStationToFlightResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
