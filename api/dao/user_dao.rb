# frozen_string_literal: true

require './api/models/user'

module DAO
  class UserDAO
    include Singleton

    def add(params)
      model.insert(
        phone: params[:phone],
        password: params[:password]
      )
    end

    def search(payload)
      model.where(payload).first
    end

    def update(params)
      model.where(id: params[:id]).update(params)
    end

    def all
      model.all
    end

    private

    def model
      Models::User
    end
  end
end
