class PagesController < ApplicationController
  expose :page, -> { Page.friendly.find(params[:id]) }

  def show; end
end
