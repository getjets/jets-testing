# frozen_string_literal: true

module Jets::Testing
  module JSONResponse
    def json_response
      @json_response ||= begin
        request
        JSON.parse(response.body)
      end
    end
  end
end