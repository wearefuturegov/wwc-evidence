module TagSteps
  step 'there is an intervention with the tags :string' do |tags|
    @tags = tags.split(',')
    @intervention = Fabricate(:intervention, tags: @tags.map { |t| Fabricate(:tag, name: t) })
  end

  step 'I create an intervention with the tags :string' do |tags|
    @tags = tags.split(',')
    create_intervention(0, @tags)
  end

  step 'there should be a total of :num tags' do |i|
    expect(Tag.all.count).to eq(i)
  end

  step 'I remove the tag :string' do |tag|
    visit edit_admin_intervention_path(@intervention.id)
    within "tags.tagify tag[value='#{tag}']" do
      find('x').click
    end
    @tags.delete(tag)
    first('input[name="commit"]').click
  end

  def complete_tags(tags)
    tags.each do |tag|
      first('.tagify__input').send_keys(tag, ',')
    end
  end
end

RSpec.configure { |c| c.include TagSteps }
