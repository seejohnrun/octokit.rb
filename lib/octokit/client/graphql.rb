# frozen_string_literal: true

module Octokit
  class Client
    # Access to the GraphQL API
    module GraphQL
      # Make a POST request to /graphql.
      # payload - The String which represents the GraphQL
      #           query or mutation.
      #
      # @return a Sawyer::Resource
      def graphql(payload)
        raise Octokit::TokenAuthenticationRequired unless token_authenticated?
        post '/graphql', payload.to_s
      end
    end
  end
end
