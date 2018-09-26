# frozen_string_literal: true

module InterventionSteps
  step 'I create an intervention' do
    create_intervention(1)
  end

  step 'I create an intervention with :num file(s)' do |num_files|
    create_intervention(num_files.to_i)
  end

  step 'the correct fields should be saved' do
    @fields.each do |k, v|
      expect(@intervention.send(k)).to eq(v)
    end

    @outcome_fields.each_with_index do |f, i|
      f.each do |k, v|
        expect(@intervention.outcomes[i].send(k)).to eq(v)
      end
    end

    @subject_fields.each do |subject, value|
      value.each_with_index do |f, i|
        f.each do |k, v|
          expect(@intervention.send("#{subject}_subjects")[i].send(k)).to eq(v)
        end
      end
    end

    @implementation_fields.each do |k, v|
      expect(@intervention.implementation.send(k)).to eq(v)
    end

    @link_fields.each_with_index do |link, i|
      link.each do |k, v|
        expect(@intervention.links[i].send(k)).to eq(v)
      end
    end

    @contact_fields.each_with_index do |contact, i|
      contact.each do |k, v|
        expect(@intervention.contacts[i].send(k)).to eq(v)
      end
    end
  end

  step 'the intervention should have :num file(s) attached' do |num_files|
    @intervention.reload
    expect(@intervention.files.count).to eq(num_files.to_i)
  end

  def create_intervention(num_files = 0)
    complete_field 'title', FFaker::BaconIpsum.phrase
    complete_field 'intro', FFaker::BaconIpsum.sentence
    complete_field 'how', FFaker::BaconIpsum.sentence
    complete_outcomes(2)
    complete_field 'studies', FFaker::BaconIpsum.sentence
    complete_subjects(3, 'effective')
    complete_subjects(2, 'ineffective')
    complete_subjects(1, 'negative')
    complete_array_field 'more_effective', 2
    complete_array_field 'works_best', 3
    complete_field 'in_practice', FFaker::BaconIpsum.sentence
    complete_field 'costs_benefits', FFaker::BaconIpsum.sentence
    complete_implementation
    complete_array_field 'key_points', 2
    attach_file('intervention_files', generate_files(num_files)) if num_files > 0
    complete_links(2)
    complete_contacts(3)
    first('input[name="commit"]').click
    @intervention = Intervention.last
  end

  def complete_field(field_name, content)
    @fields ||= {}
    fill_in "intervention_#{field_name}", with: content
    @fields[field_name] = content
  end

  def complete_array_field(field_name, num = 1)
    @fields ||= {}
    @fields[field_name] = []
    num.times do |i|
      item = FFaker::BaconIpsum.phrase
      all(:css, "input[name='intervention[#{field_name}][]']").last.set(item)
      find(:css, "a#add_#{field_name}").click unless (i + 1) == num
      @fields[field_name] << item
    end
  end

  def complete_outcome_field(field_name, content, index = 0)
    @outcome_fields ||= []
    @outcome_fields[index] ||= {}
    fill_in I18n.t("helpers.label.intervention[outcomes_attributes][new_outcomes].#{field_name}"), with: content
    @outcome_fields[index][field_name] = content
  end

  def complete_link_field(field_name, content, index = 0)
    @link_fields ||= []
    @link_fields[index] ||= {}
    fill_in I18n.t("helpers.label.intervention[links_attributes][new_links].#{field_name}"), with: content
    @link_fields[index][field_name] = content
  end

  def complete_contact_field(field_name, content, index = 0)
    @contact_fields ||= []
    @contact_fields[index] ||= {}
    fill_in I18n.t("helpers.label.intervention[contacts_attributes][new_contacts].#{field_name}"), with: content
    @contact_fields[index][field_name] = content
  end

  def complete_implementation_field(field_name, content)
    @implementation_fields ||= {}
    fill_in "intervention_implementation_attributes_#{field_name}", with: content
    @implementation_fields[field_name] = content
  end

  def complete_subject_field(field_name, content, index, type)
    @subject_fields ||= {}
    @subject_fields[type] ||= []
    @subject_fields[type][index] ||= {}
    fill_in I18n.t("helpers.label.intervention[#{type}_subjects_attributes][new_#{type}_subjects].#{field_name}"), with: content
    @subject_fields[type][index][field_name] = content
  end

  def complete_outcomes(num = 1)
    num.times do |i|
      within 'fieldset.outcomes' do
        click_on I18n.t('administrate.fields.nested_has_many.add', resource: 'Outcome')
        within :xpath, '(//div[@class="nested-fields"])[last()]' do
          complete_outcome_field('title', FFaker::BaconIpsum.phrase, i)
          complete_outcome_field('description', FFaker::BaconIpsum.sentence, i)
          complete_outcome_field('effect', rand(0..2), i)
          complete_outcome_field('evidence', rand(0..2), i)
        end
      end
    end
  end

  def complete_subjects(num = 1, type = 'effective')
    num.times do |i|
      within "fieldset.#{type}_subjects" do
        click_on I18n.t('administrate.fields.nested_has_many.add', resource: "#{type.titleize} Subject")
        within :xpath, '(//div[@class="nested-fields"])[last()]' do
          complete_subject_field('title', FFaker::BaconIpsum.phrase, i, type)
        end
      end
    end
  end

  def complete_links(num = 1)
    num.times do |i|
      within '.field-unit--nested.links' do
        click_on I18n.t('administrate.fields.nested_has_many.add', resource: 'Link')
        within :xpath, '(//div[@class="nested-fields"])[last()]' do
          complete_link_field('title', FFaker::BaconIpsum.phrase, i)
          complete_link_field('url', FFaker::Internet.http_url, i)
        end
      end
    end
  end

  def complete_contacts(num = 1)
    num.times do |i|
      within '.field-unit--nested.contacts' do
        click_on I18n.t('administrate.fields.nested_has_many.add', resource: 'Contact')
        within :xpath, '(//div[@class="nested-fields"])[last()]' do
          complete_contact_field('title', FFaker::BaconIpsum.phrase, i)
          complete_contact_field('url', FFaker::Internet.http_url, i)
        end
      end
    end
  end

  def complete_implementation
    complete_implementation_field('intro', FFaker::BaconIpsum.sentence)
    complete_implementation_field('deliverer', FFaker::BaconIpsum.phrase)
    complete_implementation_field('training_requirements', FFaker::BaconIpsum.phrase)
    complete_implementation_field('supervision', FFaker::BaconIpsum.phrase)
    complete_implementation_field('fidelity', FFaker::BaconIpsum.phrase)
    complete_implementation_field('support', FFaker::BaconIpsum.phrase)
  end
end

RSpec.configure { |c| c.include InterventionSteps }
