# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: energy.proto for package 'mobility.services'

require 'grpc'
require_relative 'energy_pb'

module Mobility
  module Services
    module EnergyServices
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'mobility.services.EnergyServices'

        rpc :ListEnergys, ::Mobility::Services::ListEnergysRequest, ::Mobility::Services::ListEnergysResponse
        rpc :GetEnergy, ::Mobility::Services::GetEnergyRequest, ::Mobility::Services::GetEnergyResponse
        rpc :CreateEnergy, ::Mobility::Services::CreateEnergyRequest, ::Mobility::Services::CreateEnergyResponse
        rpc :UpdateEnergy, ::Mobility::Services::UpdateEnergyRequest, ::Mobility::Services::UpdateEnergyResponse
        rpc :DeleteEnergy, ::Mobility::Services::DeleteEnergyRequest, ::Mobility::Services::DeleteEnergyResponse
        rpc :StartEnergyDataStreamForFlightID, ::Mobility::Services::StartEnergyDataStreamForFlightIDRequest, ::Mobility::Services::StartEnergyDataStreamForFlightIDResponse
        rpc :StopEnergyDataStreamForFlightID, ::Mobility::Services::StopEnergyDataStreamForFlightIDRequest, ::Mobility::Services::StopEnergyDataStreamForFlightIDResponse
        rpc :AggregateEnergyDataStreamForFlightID, ::Mobility::Services::AggregateEnergyDataStreamForFlightIDRequest, ::Mobility::Services::AggregateEnergyDataStreamForFlightIDResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
