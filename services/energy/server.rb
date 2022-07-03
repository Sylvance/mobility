#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "grpc"
require "mobility"

class EnergyService < Mobility::Services::EnergyServices::Service
  def get_energy(req, _unused_call)
    puts "Response: #{req}"

    energy = Mobility::Services::Energy.new(
      issue_name: nil,
      energy_id: nil,
      type: nil,
      created_at: nil,
      modified_at: nil,
      deleted_at: nil,
      charge_percentage: nil,
      below_threshold: nil,
      at_station: nil,
      in_flight: nil,
      flight_id: nil
    )

    Mobility::Services::GetEnergyResponse.new(
      successful: true,
      energy: energy
    )
  end
end

class MobilityServer
  class << self
    def start
      start_grpc_server
    end

    private

    def start_grpc_server
      # create server
      @server = GRPC::RpcServer.new
      @server.add_http2_port("0.0.0.0:50052", :this_port_is_insecure)
      # assign server to a grpc handler
      @server.handle(EnergyService)
      @server.run_till_terminated
    end
  end
end

MobilityServer.start
