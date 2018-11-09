# frozen_string_literal: true

module Admin
  class BannerMessagesController < Admin::ApplicationController
    def update
      banner_message = BannerMessage.instance
      banner_message.update(resource_params)
      redirect_to edit_admin_banner_message_path(banner_message), notice: translate_with_resource('update.success')
    end
  end
end
