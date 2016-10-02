module RailsApiResponse
  module Core
    module ControllerHelpers
      module Responses

        # Response methods
        def respond_success(message: '', data: {})
          render json: ResponseTemplate.success(message_metadata(message), data)
        end

        def respond_error(message: '', instance: nil, data: {})
          metadata = instance.present? ? error_instance_metadata(instance) : message_metadata(message)
          render json: ResponseTemplate.error(metadata, data)
        end

        def respond_create_success(message: "", data: {})
          render json: ResponseTemplate.create_success(message_metadata(message), data)
        end

        def respond_error_credential(message:, data: {})
          render json: ResponseTemplate.error_credential(message_metadata(message), data)
        end

        def respond_error_not_found(message:, data: {})
          render json: ResponseTemplate.error_not_found(message_metadata(message), data)
        end

        def respond_json(code: 200, message: '', data: {})
          render json: ResponseTemplate.template(code, message_metadata(message), data)
        end

        private

        # Convert instance to error metadata
        def error_instance_metadata(instance)
          errors = []
          instance.errors.to_hash.each do |k,v|
            errors << {
                field: k.to_s,
                description: v
            }
          end
          {
              message: instance.errors.full_messages,
              errors: errors
          }
        end

        # Convert message text to error metadata
        def message_metadata(message)
          { message: message }
        end
      end
    end
  end
end