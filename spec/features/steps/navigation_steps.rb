# frozen_string_literal: true

module NavigationSteps
  step 'I access the ":page" page' do |page|
    visit send(page)
  end
end

placeholder :page do
  match Regexp.new('[a-z ]+', true) do |page|
    page = page.tr(' ', '_')
    "#{page}_path"
  end
end

RSpec.configure { |c| c.include NavigationSteps }
