module TagSteps
  step 'there is an intervention with the tags :string' do |tags|
    @tags = tags.split(',')
    @intervention = create_intervention_with_tags
  end

  step 'I create an intervention with the tags :string' do |tags|
    @tags = tags.split(',')
    @intervention = create_intervention_with_tags
    create_intervention
  end

  step 'I remove the tag :string' do |tag|
    visit edit_admin_intervention_path(@intervention.id)
    within "tags.tagify tag[value='#{tag}']" do
      find('x').click
    end
    @tags.delete(tag)
    first('input[name="commit"]').click
  end

  def create_intervention_with_tags
    Fabricate(:intervention, tags: @tags.map { |t| Fabricate(:tag, name: t) })
  end

  def complete_tags
    @intervention.tags.each do |tag|
      first('.tagify__input').send_keys(tag.name, ',')
    end
  end
end

RSpec.configure { |c| c.include TagSteps }
