# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # An server Active Directory Administrator.
    #
    class ServerAzureADAdministrator < ProxyResource

      include MsRestAzure

      # @return [String] The type of administrator. Default value:
      # 'ActiveDirectory' .
      attr_accessor :administrator_type

      # @return [String] The server administrator login value.
      attr_accessor :login

      # @return The server administrator Sid (Secure ID).
      attr_accessor :sid

      # @return The server Active Directory Administrator tenant id.
      attr_accessor :tenant_id


      #
      # Mapper for ServerAzureADAdministrator class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerAzureADAdministrator',
          type: {
            name: 'Composite',
            class_name: 'ServerAzureADAdministrator',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              administrator_type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'properties.administratorType',
                default_value: 'ActiveDirectory',
                type: {
                  name: 'String'
                }
              },
              login: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.login',
                type: {
                  name: 'String'
                }
              },
              sid: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sid',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
