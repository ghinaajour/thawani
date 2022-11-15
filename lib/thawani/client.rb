require 'httparty'

module Thawani
  class Client
    include HTTParty

    base_uri 'https://checkout.thawani.om'
    headers 'Content-Type' => 'application/json'

    def initialize(api_key)
      self.class.headers 'thawani-api-key' => "#{api_key}"
    end

    def create_session(session_data)
      self.class.post '/api/v1/checkout/session', body: session_data.to_json
    end

    def retrieve_session(session_id)
      self.class.get "/api/v1/checkout/session/#{session_id}"
    end
  end
end
