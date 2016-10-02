require "rails_api_response/version"

module RailsApiResponse
  module Core
    module ControllerHelpers
      autoload :ResponseTemplate, 'core/controller_helpers/response_template'
      autoload :Responses, 'core/controller_helpers/responses'
    end
  end
end
