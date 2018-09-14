# frozen_string_literal: true

def generate_files(num)
  Array.new(num) do |i|
    path = "/tmp/file_#{i}.txt"
    content = "file number #{i}"
    File.open(path, 'w+') do |f|
      f.write(content)
    end
    path
  end
end
