# frozen_string_literal: true

require 'grape'
require 'sequel'
require_relative 'endpoints/users'
require_relative 'endpoints/products'

module Routes
  module V1
    class API < Grape::API
      prefix :api
      version :v1

      format :json

      get :fecha do
        p 'entro aqui'
        Time.now.to_i
      end

      mount Endpoints::Users
      mount Endpoints::Products
    end
  end
end
