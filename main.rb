# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'
require 'active_support'
require 'active_support/core_ext'
require './filters'

## Your test code can go here

pp @candidates

candidate_id = 5
found_candidate = find(candidate_id)

puts "Candidate with ID #{candidate_id}"
pp found_candidate

experienced_candidates = @candidates.select { |candidate| experienced?(candidate) }

qualified_candidates_list = qualified_candidates(@candidates)

puts "\nQualified Candidates:"
pp qualified_candidates_list

# Order candidates by qualifications
ordered_candidates = ordered_by_qualifications(@candidates)

puts "\nCandidates Ordered by Qualifications:"
pp ordered_candidates