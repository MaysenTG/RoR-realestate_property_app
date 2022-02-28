class PublicController < ApplicationController
  def index
    @properties = Property.all
  end

  def latest
    @properties = Property.order(created_at: :desc).limit(5)
  end

  def featured
  end

  def sale
  end
  
end
