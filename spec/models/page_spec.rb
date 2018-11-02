require 'rails_helper'

RSpec.describe Page, type: :model do
  let!(:page) { Fabricate(:page, title: 'My Page') }

  it 'generates a slug' do
    expect(page.slug).to eq('my-page')
  end

  it 'fetches by slug' do
    expect(Page.friendly.find('my-page')).to eq(page)
  end
end
