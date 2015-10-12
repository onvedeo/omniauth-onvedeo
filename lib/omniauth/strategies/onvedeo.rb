require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Onvedeo < OmniAuth::Strategies::OAuth2
      option :name, 'onvedeo'

      option :client_options, {
        site: 'https://www.onvedeo.com',
        authorize_url: '/oauth/authorize'
      }

      uid { raw_info['id'] }

      info do
        {
          email: raw_info['email'],
          name: raw_info['name'],
          first_name: raw_info['first_name'],
          last_name: raw_info['last_name'],
          role: raw_info['role'],
          phone: raw_info['phone'],
          image: raw_info['image'],
          company_logo: raw_info['company_logo'],
          company_name: raw_info['company_name'],
          description: raw_info['description'],
          bre_number: raw_info['bre_number'],
          mls_agent_id: raw_info['mls_agent_id']
        }
      end

      extra do
        {
          raw_info: raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
