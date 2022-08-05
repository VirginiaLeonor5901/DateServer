# frozen_string_literal: true

require './api/models/product'

module DAO
  class ProductDAO
    include Singleton

    def add(params)
      model.insert(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        user_id: params[:user_id]
      )
    end

    def search(id)
      model.where(id: id).first
    end

    def update(params)
      model.where(id: params[:id]).update(params)
    end

    def all
      model.all
    end

    private

    def model
      Models::Product
    end
  end
end
