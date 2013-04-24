class FeaturesController < ApplicationController
  def index
    @features = Feature.order("user_id DESC").all

    respond_to do |format|
      format.html 
    end
  end

  def show
    @feature = Feature.find(params[:id])

    respond_to do |format|
      format.html 
    end
  end

  # Only for choose this one
  def update
    @feature = Feature.find(params[:id])

    unless current_user.has_feature?
      @feature.user = current_user
      @feature.save
    end

    redirect_to @feature
  end
end
