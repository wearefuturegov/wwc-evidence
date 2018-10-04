module Admin
  class TagsController < ::ApplicationController
    before_action :authenticate_user!
    expose :tag
    expose :tags, -> { Tag.all }

    def index
      render json: tags
    end

    def create
      render(:show) if tag.save
    end

    def show; end

    private

    def tag_params
      params.require(:tag).permit(:name)
    end
  end
end
