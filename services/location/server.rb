#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "grpc"
require "mobility"

class LocationService < Mobility::Services::LocationServices::Service
  def get_location(req, _unused_call)
    puts "Response: #{req}"

    location = Mobility::Services::Location.new(
      issue_name: nil,
      type: nil,
      created_at: nil,
      modified_at: nil,
      deleted_at: nil,
      charge_percentage: nil,
      below_threshold: nil,
      at_station: nil,
      in_location: nil,
      location_id: nil
    )

    Mobility::Services::GetLocationResponse.new(
      successful: true,
      location: location
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
      @server.handle(LocationService)
      @server.run_till_terminated
    end
  end
end

MobilityServer.start
