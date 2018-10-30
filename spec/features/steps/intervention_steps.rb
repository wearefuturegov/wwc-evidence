# frozen_string_literal: true

module InterventionSteps
  step 'I create an intervention' do
    @intervention = Fabricate(:intervention)
    create_intervention
  end

  step 'I create an intervention with :num file(s)' do |num_files|
    @intervention = Fabricate(:intervention)
    create_intervention(num_files.to_i)
    @intervention = Intervention.last
  end

  step 'the correct fields should be saved' do
    intervention = Intervention.last

    expect(intervention.title).to eq(@intervention.title)
    expect(intervention.intro).to eq(@intervention.intro)
    expect(intervention.how).to eq(@intervention.how)
    expect(intervention.studies).to eq(@intervention.studies)
    expect(intervention.costs_benefits).to eq(@intervention.costs_benefits)

    intervention.outcomes.each_with_index do |outcome, i|
      expect(outcome.title).to eq(@intervention.outcomes[i].title)
      expect(outcome.description).to eq(@intervention.outcomes[i].description)
      expect(outcome.effect).to eq(@intervention.outcomes[i].effect)
      expect(outcome.evidence).to eq(@intervention.outcomes[i].evidence)
    end

    expect(intervention.implementation.intro).to eq(@intervention.implementation.intro)
    expect(intervention.implementation.deliverer).to eq(@intervention.implementation.deliverer)
    expect(intervention.implementation.training_requirements).to eq(@intervention.implementation.training_requirements)
    expect(intervention.implementation.fidelity).to eq(@intervention.implementation.fidelity)
    expect(intervention.implementation.support).to eq(@intervention.implementation.support)

    intervention.links.each_with_index do |link, i|
      expect(link.title).to eq(@intervention.links[i].title)
      expect(link.url).to eq(@intervention.links[i].url)
    end

    intervention.contacts.each_with_index do |contact, i|
      expect(contact.title).to eq(@intervention.contacts[i].title)
      expect(contact.url).to eq(@intervention.contacts[i].url)
    end
  end

  step 'the intervention should have the correct tags' do
    expect(@intervention.tags.count).to eq(@tags.count)

    @tags.each do |t|
      expect(@intervention.tags.find_by(name: t)).to_not be_nil
    end
  end

  step 'the intervention should have :num file(s) attached' do |num_files|
    intervention = Intervention.last
    expect(intervention.files.count).to eq(num_files.to_i)
  end

  def create_intervention(num_files = 0)
    complete_field :title
    complete_field :summary
    complete_markdown_field :intro
    complete_markdown_field :what_is_it
    complete_markdown_field :how
    complete_outcomes
    complete_markdown_field :outcome_notes
    complete_markdown_field :who_does_it_work_for
    complete_markdown_field :when_where_how
    complete_markdown_field :costs_benefits

    complete_markdown_field :studies
    complete_markdown_field :costs_benefits
    complete_implementation
    attach_file('intervention_files', generate_files(num_files)) if num_files > 0
    complete_contacts
    complete_links
    complete_tags
    first('input[name="commit"]').click
  end

  def complete_markdown_field(field_name)
    within ".markdown-field-wrapper__intervention__#{field_name}" do
      value = @intervention.send(field_name)
      element = find('.CodeMirror', visible: false)
      execute_script("arguments[0].CodeMirror.getDoc().setValue('#{value}')", element)
    end
  end

  def complete_field(field_name)
    fill_in "intervention_#{field_name}", with: @intervention.send(field_name)
  end

  def complete_outcome_field(field_name, outcome)
    fill_in I18n.t("helpers.label.intervention[outcomes_attributes][new_outcomes].#{field_name}"), with: outcome.send(field_name)
  end

  def complete_outcome_select_field(field_name, outcome)
    select outcome.send(field_name).titleize, from: I18n.t("helpers.label.intervention[outcomes_attributes][new_outcomes].#{field_name}")
  end

  def complete_link_field(field_name, link)
    fill_in I18n.t("helpers.label.intervention[links_attributes][new_links].#{field_name}"), with: link.send(field_name)
  end

  def complete_contact_field(field_name, contact)
    fill_in I18n.t("helpers.label.intervention[contacts_attributes][new_contacts].#{field_name}"), with: contact.send(field_name)
  end

  def complete_implementation_field(field_name)
    within ".markdown-field-wrapper__implementation__#{field_name}" do
      value = @intervention.implementation.send(field_name)
      element = find('.CodeMirror', visible: false)
      execute_script("arguments[0].CodeMirror.getDoc().setValue('#{value}')", element)
    end
  end

  def complete_implementation_markdown_field(field_name)
    within ".markdown-field-wrapper__implementation__#{field_name}" do
      value = @intervention.implementation.send(field_name)
      element = find('.CodeMirror', visible: false)
      execute_script("arguments[0].CodeMirror.getDoc().setValue('#{value}')", element)
    end
  end

  def complete_subject_field(field_name, subject, type)
    fill_in I18n.t("helpers.label.intervention[#{type}_subjects_attributes][new_#{type}_subjects].#{field_name}"), with: subject.send(field_name)
  end

  def complete_outcomes
    @intervention.outcomes.each do |outcome|
      within 'fieldset.outcomes' do
        click_on I18n.t('administrate.fields.nested_has_many.add', resource: 'Outcome')
        within :xpath, '(//div[@class="nested-fields"])[last()]' do
          complete_outcome_field :title, outcome
          complete_outcome_field :description, outcome
          complete_outcome_select_field :effect, outcome
          complete_outcome_select_field :evidence, outcome
        end
      end
    end
  end

  def complete_links
    @intervention.links.each do |link|
      within '.field-unit--nested.links' do
        click_on I18n.t('administrate.fields.nested_has_many.add', resource: 'Link')
        within :xpath, '(//div[@class="nested-fields"])[last()]' do
          complete_link_field :title, link
          complete_link_field :url, link
        end
      end
    end
  end

  def complete_contacts
    @intervention.contacts.each do |contact|
      within '.field-unit--nested.contacts' do
        click_on I18n.t('administrate.fields.nested_has_many.add', resource: 'Contact')
        within :xpath, '(//div[@class="nested-fields"])[last()]' do
          complete_contact_field :title, contact
          complete_contact_field :url, contact
        end
      end
    end
  end

  def complete_implementation
    complete_implementation_markdown_field :intro
    complete_implementation_field :deliverer
    complete_implementation_field :training_requirements
    complete_implementation_field :fidelity
    complete_implementation_field :support
  end
end

RSpec.configure { |c| c.include InterventionSteps }
