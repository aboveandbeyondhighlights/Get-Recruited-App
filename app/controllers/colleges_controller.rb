class CollegesController < ApplicationController
  def index
    @colleges = College.order(:name).page(params[:page])
  end
end
