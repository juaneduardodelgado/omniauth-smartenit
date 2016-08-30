require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Smartenit < OmniAuth::Strategies::OAuth2
      option :name, "smartenit"
      option :client_options, { site: "https://api.smartenit.io/v2/oauth/" }
      option :token_params, { parse: :json }
      option :auth_token_params, { mode: :query, param_name: :token }

      uid { raw_info['id'] }

      info do
        {
          name: raw_info["name"],
          email: raw_info["email"],
          image: raw_info["image_url"],
          phone: raw_info["phone_number"],
          sms: raw_info["sms"],
        }
      end

      extra do
        {
          raw_info: raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('https://api.smartenit.io/v2/users/me').parsed["response"]
      end
    end
  end
end
