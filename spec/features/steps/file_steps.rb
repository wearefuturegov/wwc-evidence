# frozen_string_literal: true

module FileSteps
  step 'I remove the first :num files' do |num_files|
    num_files.to_i.times do
      first('.remove-file').click
    end
    first('input[name="commit"]').click
  end
end

RSpec.configure { |c| c.include FileSteps }
