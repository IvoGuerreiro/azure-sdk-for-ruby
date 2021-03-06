# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01_preview
  module Models
    #
    # Parameters allowed to update for a server.
    #
    class ServerUpdateParameters

      include MsRestAzure

      # @return [Sku] The SKU (pricing tier) of the server.
      attr_accessor :sku

      # @return [StorageProfile] Storage profile of a server.
      attr_accessor :storage_profile

      # @return [String] The password of the administrator login.
      attr_accessor :administrator_login_password

      # @return [ServerVersion] The version of a server. Possible values
      # include: '9.5', '9.6', '10', '10.0', '10.2', '11'
      attr_accessor :version

      # @return [SslEnforcementEnum] Enable ssl enforcement or not when connect
      # to server. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :ssl_enforcement

      # @return [String] The replication role of the server.
      attr_accessor :replication_role

      # @return [Hash{String => String}] Application-specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for ServerUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ServerUpdateParameters',
            model_properties: {
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              storage_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'StorageProfile'
                }
              },
              administrator_login_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              ssl_enforcement: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sslEnforcement',
                type: {
                  name: 'Enum',
                  module: 'SslEnforcementEnum'
                }
              },
              replication_role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.replicationRole',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
