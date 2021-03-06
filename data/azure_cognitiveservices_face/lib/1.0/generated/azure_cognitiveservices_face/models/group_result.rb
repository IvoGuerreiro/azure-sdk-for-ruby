# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # An array of face groups based on face similarity.
    #
    class GroupResult

      include MsRestAzure

      # @return A partition of the original faces based on face similarity.
      # Groups are ranked by number of faces
      attr_accessor :groups

      # @return Face ids array of faces that cannot find any similar faces from
      # original faces.
      attr_accessor :messy_group


      #
      # Mapper for GroupResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GroupResult',
          type: {
            name: 'Composite',
            class_name: 'GroupResult',
            model_properties: {
              groups: {
                client_side_validation: true,
                required: true,
                serialized_name: 'groups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'UuidElementType',
                            type: {
                              name: 'String'
                            }
                        }
                      }
                  }
                }
              },
              messy_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'messyGroup',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UuidElementType',
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
