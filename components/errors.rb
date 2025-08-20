# frozen_string_literal: true

module Gemini
  module Errors
    class GeminiError < StandardError
      def initialize(message = nil)
        super
      end
    end

    class MissingProjectIdError < GeminiError; end
    class UnsupportedServiceError < GeminiError; end
    class ConflictingCredentialsError < GeminiError; end
    class BlockWithoutServerSentEventsError < GeminiError; end

    class RequestError < GeminiError
      attr_reader :request, :payload

      def initialize(message = nil, request: nil, payload: nil)
        @request = request
        @payload = payload

        super(message)
      end
    end
  end
end
