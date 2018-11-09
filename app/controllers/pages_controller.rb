class PagesController < ApplicationController
  expose :page, -> { Page.friendly.find(params[:id]).decorate }

  def show; end
end
