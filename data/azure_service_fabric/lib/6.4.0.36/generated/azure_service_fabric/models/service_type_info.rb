# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Information about a service type that is defined in a service manifest of
    # a provisioned application type.
    #
    class ServiceTypeInfo

      include MsRestAzure

      # @return [ServiceTypeDescription] Describes a service type defined in
      # the service manifest of a provisioned application type. The properties
      # the ones defined in the service manifest.
      attr_accessor :service_type_description

      # @return [String] The name of the service manifest in which this service
      # type is defined.
      attr_accessor :service_manifest_name

      # @return [String] The version of the service manifest in which this
      # service type is defined.
      attr_accessor :service_manifest_version

      # @return [Boolean] Indicates whether the service is a service group. If
      # it is, the property value is true otherwise false.
      attr_accessor :is_service_group


      #
      # Mapper for ServiceTypeInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTypeInfo',
          type: {
            name: 'Composite',
            class_name: 'ServiceTypeInfo',
            model_properties: {
              service_type_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceTypeDescription',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'Kind',
                  uber_parent: 'ServiceTypeDescription',
                  class_name: 'ServiceTypeDescription'
                }
              },
              service_manifest_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceManifestName',
                type: {
                  name: 'String'
                }
              },
              service_manifest_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceManifestVersion',
                type: {
                  name: 'String'
                }
              },
              is_service_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsServiceGroup',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
