# frozen_string_literal: true

module BannerMessageSteps
  step 'I edit the banner message' do
    @banner_message = Fabricate.build(:banner_message)

    click_on 'Banner Message'
    fill_in 'banner_message_title', with: @banner_message.title
    within '.markdown-field-wrapper__bannermessage__body' do
      value = @banner_message.body
      element = find('.CodeMirror', visible: false)
      execute_script("arguments[0].CodeMirror.getDoc().setValue('#{value}')", element)
    end
    first('input[name="commit"]').click
  end

  step 'my banner message should be viewable on the homepage' do
    visit '/'
    expect(page).to have_content(@banner_message.title)
    expect(page).to have_content(@banner_message.body)
  end
end

RSpec.configure { |c| c.include BannerMessageSteps }
