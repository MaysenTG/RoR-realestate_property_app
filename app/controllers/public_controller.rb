class PublicController < ApplicationController
  def index
    @properties = Property.all
  end

  def latest
    @latest_properties = Property.order(created_at: :desc).limit(5)
  end

  def featured
    @featured_properties = Property.order(price: :desc).limit(5)
  end

  def sale
  end
  
end
