# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here 
# pp qualified_candidates
# pp sort_qualified_candidates

# pp sort_candidates
def candidates_program
  program_open = true

  while program_open do 
    puts "What would you like to do:\n
    type 'find'     : Find Candidate by ID\r
    type 'all'      : View all Candidates available\r
    type 'qualified : Show only the qualified studients\r
    type 'quit'     : To exit the program"

  choice = gets.chomp.lowercase

  case choice
  when 'find' then puts "What's the ID of the candidates"
    # id = gets.chomp.to_i
    # puts find(id)
  when 'all' then puts "all"
  when 'qualified' then puts "qualified"
  when 'quit' then program_open = false
  else puts "wrong input."
  end
end

candidates_program