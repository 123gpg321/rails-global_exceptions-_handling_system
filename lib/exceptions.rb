module Exceptions
    class Handler < StandardError
        attr_reader :http_error_code
        def initialize(message, http_error_code)
            super(message)
            @http_error_code = http_error_code
        end
    end
end