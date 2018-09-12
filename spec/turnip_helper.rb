# frozen_string_literal: true

Dir.glob('spec/features/steps/*_steps.rb') { |f| load f, true }
