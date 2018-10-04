module Admin
  class TagsController < ::ApplicationController
    before_action :authenticate_user!
    expose :tags, -> { Tag.all }

    def index
      render json: tags
    end
  end
end
