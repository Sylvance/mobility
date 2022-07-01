# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: flight.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("flight.proto", :syntax => :proto3) do
    add_message "mobility.services.Flight" do
      optional :flight_id, :string, 1
      optional :battery_id, :string, 2
      optional :initiating_station_id, :string, 3
      optional :finishing_station_id, :string, 4
      optional :initiating_operator_id, :string, 5
      optional :finishing_operator_id, :string, 6
      optional :motorcycle_id, :string, 7
      optional :driver_id, :string, 8
      optional :started_at, :string, 9
      optional :ended_at, :string, 10
      optional :status, :string, 11
      optional :current_location_id, :string, 12
      optional :current_energy_id, :string, 13
      optional :current_distance_id, :string, 14
      optional :current_flight_amount_id, :string, 15
      optional :final_location_id, :string, 16
      optional :final_energy_id, :string, 17
      optional :final_distance_id, :string, 18
      optional :final_flight_amount_id, :string, 19
    end
    add_message "mobility.services.FlightsList" do
      repeated :flights, :message, 1, "mobility.services.Flight"
    end
    add_message "mobility.services.Success" do
      optional :content, :string, 1
      optional :type, :string, 2
    end
    add_message "mobility.services.Error" do
      repeated :content, :string, 1
      optional :type, :string, 2
    end
    add_message "mobility.services.ListFlightsRequest" do
      optional :page_size, :int32, 1
    end
    add_message "mobility.services.ListFlightsResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :flights_list, :message, 3, "mobility.services.FlightsList"
      end
    end
    add_message "mobility.services.GetFlightRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.GetFlightResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :flight, :message, 3, "mobility.services.Flight"
      end
    end
    add_message "mobility.services.CreateFlightRequest" do
      optional :flight, :message, 1, "mobility.services.Flight"
    end
    add_message "mobility.services.CreateFlightResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :flight, :message, 3, "mobility.services.Flight"
      end
    end
    add_message "mobility.services.UpdateFlightRequest" do
      optional :flight, :message, 1, "mobility.services.Flight"
    end
    add_message "mobility.services.UpdateFlightResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :flight, :message, 3, "mobility.services.Flight"
      end
    end
    add_message "mobility.services.DeleteFlightRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.DeleteFlightResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :success, :message, 3, "mobility.services.Success"
      end
    end
    add_message "mobility.services.FinishFlightRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.FinishFlightResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :success, :message, 3, "mobility.services.Success"
      end
    end
    add_message "mobility.services.RetrieveCurrentFlightLocationRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveCurrentFlightLocationResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :current_location_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveCurrentFlightEnergyUsageRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveCurrentFlightEnergyUsageResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :current_energy_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveCurrentFlightDistanceCoveredRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveCurrentFlightDistanceCoveredResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :current_distance_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveCurrentFlightCashAmountRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveCurrentFlightCashAmountResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :current_flight_amount_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveFinalFlightLocationRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveFinalFlightLocationResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :final_location_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveFinalFlightEnergyUsageRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveFinalFlightEnergyUsageResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :final_energy_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveFinalFlightDistanceCoveredRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveFinalFlightDistanceCoveredResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :final_distance_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveFinalFlightCashAmountRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveFinalFlightCashAmountResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :final_flight_amount_id, :string, 3
      end
    end
    add_message "mobility.services.RetrieveNearestStationToFlightRequest" do
      optional :flight_id, :string, 1
    end
    add_message "mobility.services.RetrieveNearestStationToFlightResponse" do
      optional :successful, :bool, 1
      oneof :result do
        optional :error, :message, 2, "mobility.services.Error"
        optional :station_id, :string, 3
      end
    end
  end
end

module Mobility
  module Services
    Flight = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.Flight").msgclass
    FlightsList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.FlightsList").msgclass
    Success = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.Success").msgclass
    Error = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.Error").msgclass
    ListFlightsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.ListFlightsRequest").msgclass
    ListFlightsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.ListFlightsResponse").msgclass
    GetFlightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.GetFlightRequest").msgclass
    GetFlightResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.GetFlightResponse").msgclass
    CreateFlightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.CreateFlightRequest").msgclass
    CreateFlightResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.CreateFlightResponse").msgclass
    UpdateFlightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.UpdateFlightRequest").msgclass
    UpdateFlightResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.UpdateFlightResponse").msgclass
    DeleteFlightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.DeleteFlightRequest").msgclass
    DeleteFlightResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.DeleteFlightResponse").msgclass
    FinishFlightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.FinishFlightRequest").msgclass
    FinishFlightResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.FinishFlightResponse").msgclass
    RetrieveCurrentFlightLocationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightLocationRequest").msgclass
    RetrieveCurrentFlightLocationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightLocationResponse").msgclass
    RetrieveCurrentFlightEnergyUsageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightEnergyUsageRequest").msgclass
    RetrieveCurrentFlightEnergyUsageResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightEnergyUsageResponse").msgclass
    RetrieveCurrentFlightDistanceCoveredRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightDistanceCoveredRequest").msgclass
    RetrieveCurrentFlightDistanceCoveredResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightDistanceCoveredResponse").msgclass
    RetrieveCurrentFlightCashAmountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightCashAmountRequest").msgclass
    RetrieveCurrentFlightCashAmountResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveCurrentFlightCashAmountResponse").msgclass
    RetrieveFinalFlightLocationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightLocationRequest").msgclass
    RetrieveFinalFlightLocationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightLocationResponse").msgclass
    RetrieveFinalFlightEnergyUsageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightEnergyUsageRequest").msgclass
    RetrieveFinalFlightEnergyUsageResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightEnergyUsageResponse").msgclass
    RetrieveFinalFlightDistanceCoveredRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightDistanceCoveredRequest").msgclass
    RetrieveFinalFlightDistanceCoveredResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightDistanceCoveredResponse").msgclass
    RetrieveFinalFlightCashAmountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightCashAmountRequest").msgclass
    RetrieveFinalFlightCashAmountResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveFinalFlightCashAmountResponse").msgclass
    RetrieveNearestStationToFlightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveNearestStationToFlightRequest").msgclass
    RetrieveNearestStationToFlightResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("mobility.services.RetrieveNearestStationToFlightResponse").msgclass
  end
end
