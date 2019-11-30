require 'csv'

notes = CSV.parse(File.read("notes.csv"), headers: true)
markdown_text = ""
for note in notes do
  text = note[0]
  course = note[1]
  module_name = note[2]
  submodule = note[3]
  time = note[4]
  url = note[5]

  markdown_text << "#{text} - #{submodule} - #{time}\n"
end

puts markdown_text

File.write("markdown_notes.md", markdown_text)