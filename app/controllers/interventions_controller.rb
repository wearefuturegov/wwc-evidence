class InterventionsController < ApplicationController
  expose :banner_message, -> { BannerMessage.instance.decorate }
  expose :intervention, -> { Intervention.find(params[:id]).decorate }
  expose :interventions, -> { Intervention.all.order(:title).decorate }

  def index; end

  def show; end
end
