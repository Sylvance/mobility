# frozen_string_literal: true

require_relative './services/battery_pb'
require_relative './services/battery_services/pb'
require_relative './services/distance_pb'
require_relative './services/distance_services/pb'
require_relative './services/driver_pb'
require_relative './services/driver_services/pb'
require_relative './services/energy_pb'
require_relative './services/energy_services/pb'
require_relative './services/flight_pb'
require_relative './services/flight_services/pb'
require_relative './services/location_pb'
require_relative './services/location_services/pb'
require_relative './services/motorcycle_pb'
require_relative './services/motorcycle_services/pb'
require_relative './services/notification_pb'
require_relative './services/notification_services/pb'
require_relative './services/operator_pb'
require_relative './services/operator_services/pb'
require_relative './services/payment_pb'
require_relative './services/payment_services/pb'
require_relative './services/prediction_pb'
require_relative './services/prediction_services/pb'
require_relative './services/station_pb'
require_relative './services/station_services/pb'
require_relative './services/swap_pb'
require_relative './services/swap_services/pb'
require_relative "mobility/version"

module Mobility
  class Error < StandardError; end
end
