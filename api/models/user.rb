# frozen_string_literal: true

require 'sequel'
require './config/services'

module Models
  class User < Sequel::Model(Services[:database][:users])
    one_to_many :products
  end
end
