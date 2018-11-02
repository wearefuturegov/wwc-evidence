# frozen_string_literal: true

module Admin
  class PagesController < Admin::ApplicationController
    def find_resource(slug)
      Page.friendly.find(slug)
    end
  end
end
