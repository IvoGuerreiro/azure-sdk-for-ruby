# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_1
  module Models
    #
    # A collection of content tags, along with a list of captions sorted by
    # confidence level, and image metadata.
    #
    class ImageDescription

      include MsRestAzure

      # @return [Array<String>] A collection of image tags.
      attr_accessor :tags

      # @return [Array<ImageCaption>] A list of captions, sorted by confidence
      # level.
      attr_accessor :captions

      # @return [String] Id of the REST API request.
      attr_accessor :request_id

      # @return [ImageMetadata]
      attr_accessor :metadata


      #
      # Mapper for ImageDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageDescription',
          type: {
            name: 'Composite',
            class_name: 'ImageDescription',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description.tags',
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
              },
              captions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description.captions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageCaptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageCaption'
                      }
                  }
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Composite',
                  class_name: 'ImageMetadata'
                }
              }
            }
          }
        }
      end
    end
  end
end
