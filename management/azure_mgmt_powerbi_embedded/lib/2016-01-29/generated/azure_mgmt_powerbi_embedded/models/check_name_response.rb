# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PowerBiEmbedded::Mgmt::V2016_01_29
  module Models
    #
    # Model object.
    #
    #
    class CheckNameResponse

      include MsRestAzure

      # @return [Boolean] Specifies a Boolean value that indicates whether the
      # specified Power BI Workspace Collection name is available to use.
      attr_accessor :name_available

      # @return [CheckNameReason] Reason why the workspace collection name
      # cannot be used. Possible values include: 'Unavailable', 'Invalid'
      attr_accessor :reason

      # @return [String] Message indicating an unavailable name due to a
      # conflict, or a description of the naming rules that are violated.
      attr_accessor :message


      #
      # Mapper for CheckNameResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameResponse',
          type: {
            name: 'Composite',
            class_name: 'CheckNameResponse',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
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
