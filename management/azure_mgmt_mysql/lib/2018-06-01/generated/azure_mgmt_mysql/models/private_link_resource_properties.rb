# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2018_06_01
  module Models
    #
    # Properties of a private link resource.
    #
    class PrivateLinkResourceProperties

      include MsRestAzure

      # @return [String] The private link resource group id.
      attr_accessor :group_id

      # @return [Array<String>] The private link resource required member
      # names.
      attr_accessor :required_members


      #
      # Mapper for PrivateLinkResourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkResourceProperties',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkResourceProperties',
            model_properties: {
              group_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'groupId',
                type: {
                  name: 'String'
                }
              },
              required_members: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'requiredMembers',
                type: {
                  name: 'Sequence',
                  element: {
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
