# frozen_string_literal: true

require_relative 'mobility/services/battery_pb'
require_relative 'mobility/services/battery_services_pb'
require_relative 'mobility/services/distance_pb'
require_relative 'mobility/services/distance_services_pb'
require_relative 'mobility/services/driver_pb'
require_relative 'mobility/services/driver_services_pb'
require_relative 'mobility/services/energy_pb'
require_relative 'mobility/services/energy_services_pb'
require_relative 'mobility/services/flight_pb'
require_relative 'mobility/services/flight_services_pb'
require_relative 'mobility/services/location_pb'
require_relative 'mobility/services/location_services_pb'
require_relative 'mobility/services/motorcycle_pb'
require_relative 'mobility/services/motorcycle_services_pb'
require_relative 'mobility/services/notification_pb'
require_relative 'mobility/services/notification_services_pb'
require_relative 'mobility/services/operator_pb'
require_relative 'mobility/services/operator_services_pb'
require_relative 'mobility/services/payment_pb'
require_relative 'mobility/services/payment_services_pb'
require_relative 'mobility/services/prediction_pb'
require_relative 'mobility/services/prediction_services_pb'
require_relative 'mobility/services/station_pb'
require_relative 'mobility/services/station_services_pb'
require_relative 'mobility/services/swap_pb'
require_relative 'mobility/services/swap_services_pb'
require_relative "mobility/version"

module Mobility
  class Error < StandardError; end
end
