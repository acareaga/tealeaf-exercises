def generate_UID
  characters = [ ]
  (0...9).each { |digit| characters << digit.to_s }
  ('a'...'f').each { |digit| characters << digit }

  uid = " "
  sections = [8, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uid += characters.simple }
    uid += '-' unless index >= sections.size - 1
  end

  uid
end
