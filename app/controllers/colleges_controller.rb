class CollegesController < ApplicationController
  def index
    @colleges = College.order(:name).page(params[:page])
  end

  def show
    @college = College.find(params[:id])
  end
end
