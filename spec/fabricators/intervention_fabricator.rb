# frozen_string_literal: true

Fabricator(:intervention) do
  implementation { Fabricate(:implementation) }
end
