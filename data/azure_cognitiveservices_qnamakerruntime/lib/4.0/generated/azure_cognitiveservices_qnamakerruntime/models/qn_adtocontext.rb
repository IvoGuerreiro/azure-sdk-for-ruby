# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::QnamakerRuntime::V4_0
  module Models
    #
    # Context of a QnA
    #
    class QnADTOContext < ContextDTO

      include MsRestAzure


      #
      # Mapper for QnADTOContext class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QnADTO_context',
          type: {
            name: 'Composite',
            class_name: 'QnADTOContext',
            model_properties: {
              is_context_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isContextOnly',
                type: {
                  name: 'Boolean'
                }
              },
              prompts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'prompts',
                constraints: {
                  MaxItems: 20
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PromptDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PromptDTO'
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
