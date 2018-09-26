class InterventionsController < ApplicationController
  expose :intervention
  expose :interventions, -> { Intervention.all }

  def index; end

  def show; end
end
