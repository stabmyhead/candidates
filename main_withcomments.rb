# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here
# pp @candidates[0].has_value?(5)

# pp @candidates[0][:languages].include?("Ruby" || "Python")

# pp experienced?(@candidates[1])

# pp find(112981291)

# pp experienced?(@candidates.first)
# pp github_points(@candidates.first)
# pp languages_required(@candidates.first)
# pp age(@candidates.first)
# pp applied_within_15_days(@candidates.first)

pp qualified_candidates
# printer-pretty for Ruby
#pp qualified_candidates
# pp qualified_candidates(@candidates)

# pp github_points(@candidates[1])

pp sort_candidates