class Api::V1::BrosController < ApplicationController
  def index
    @bros = Bro.all
  end
end