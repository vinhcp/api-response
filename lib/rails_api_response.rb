require "rails_api_response/version"

module RailsApiResponse
  module ControllerHelpers
    autoload :ResponseTemplate, 'rails_api_response/controller_helpers/response_template'
    autoload :Responses, 'rails_api_response/controller_helpers/responses'
  end
end
