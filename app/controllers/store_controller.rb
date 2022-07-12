class StoreController < ApplicationController
  include Counter

  before_action :inc_counter, only: %i[ index ]
  before_action :set_counter, only: %i[ index ]

  def index
    @products = Product.order(:title)
  end
end
