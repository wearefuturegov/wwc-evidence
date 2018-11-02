# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protected

  expose :pages, -> { Page.all }

  def after_sign_in_path_for(_resource)
    request.env['omniauth.origin'] || admin_root_path
  end
end
