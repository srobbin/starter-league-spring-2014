module Api
  class DealsController < ApplicationController
    def index
      @deals = Deal.all
    end

    def show
      @deal = Deal.find(params[:id])
    end
  end
end