# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  module Models
    #
    # Peering Service
    #
    class PeeringService < Resource

      include MsRestAzure

      # @return [String] The PeeringServiceLocation of the Customer.
      attr_accessor :peering_service_location

      # @return [String] The MAPS Provider Name.
      attr_accessor :peering_service_provider

      # @return [ProvisioningState] The provisioning state of the resource.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] The resource tags.
      attr_accessor :tags


      #
      # Mapper for PeeringService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeeringService',
          type: {
            name: 'Composite',
            class_name: 'PeeringService',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              peering_service_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringServiceLocation',
                type: {
                  name: 'String'
                }
              },
              peering_service_provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringServiceProvider',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
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
