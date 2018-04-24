# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Base class for inputs to a Job.
    #
    class JobInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.JobInputClip"] = "JobInputClip"
      @@discriminatorMap["#Microsoft.Media.JobInputs"] = "JobInputs"
      @@discriminatorMap["#Microsoft.Media.JobInputAsset"] = "JobInputAsset"
      @@discriminatorMap["#Microsoft.Media.JobInputHttp"] = "JobInputHttp"

      def initialize
        @odatatype = "JobInput"
      end

      attr_accessor :odatatype

      # @return [String] A label that is assigned to a JobInput, that is used
      # to satisfy a reference used in the Transform. For example, a Transform
      # can be authored so as to take an image file with the label 'xyz' and
      # apply it as an overlay onto the input video before it is encoded. When
      # submitting a Job, exactly one of the JobInputs should be the image
      # file, and it should have the label 'xyz'.
      attr_accessor :label


      #
      # Mapper for JobInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'JobInput',
            class_name: 'JobInput',
            model_properties: {
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
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
