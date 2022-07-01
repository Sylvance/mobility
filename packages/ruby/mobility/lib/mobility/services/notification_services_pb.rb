# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: notification.proto for package 'mobility.services'

require 'grpc'
require 'notification_pb'

module Mobility
  module Services
    module NotificationServices
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'mobility.services.NotificationServices'

        rpc :ListNotifications, ::Mobility::Services::ListNotificationsRequest, ::Mobility::Services::ListNotificationsResponse
        rpc :GetNotification, ::Mobility::Services::GetNotificationRequest, ::Mobility::Services::GetNotificationResponse
        rpc :CreateNotification, ::Mobility::Services::CreateNotificationRequest, ::Mobility::Services::CreateNotificationResponse
        rpc :UpdateNotification, ::Mobility::Services::UpdateNotificationRequest, ::Mobility::Services::UpdateNotificationResponse
        rpc :DeleteNotification, ::Mobility::Services::DeleteNotificationRequest, ::Mobility::Services::DeleteNotificationResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
