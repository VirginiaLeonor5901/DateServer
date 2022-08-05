# frozen_string_literal: true

require 'sequel'
require './config/services'

module Models
  class Product < Sequel::Model(Services[:database][:products])
    many_to_one :user
  end
end
