# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# Define a method find that:

def find(id)
  # FIXME: doesn't return nil - nil method error
  @candidates.each do | hash | 
    if hash[:id] == id
      return hash
    else
      return nil
    end
  end
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def github_points(candidate)
  candidate[:github_points] >= 100 ? true : false
end

def languages_required(candidate)
  candidate[:languages].include?("Ruby" || "Python")
end

def age(candidate)
  candidate[:age] > 17
end

def applied_within_15_days(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end

def qualified_candidates  
  # filters/select returns an array only if the conditions are met
  @candidates.select do | candidate |
    experienced?(candidate) && 
    github_points(candidate) && 
    languages_required(candidate) && 
    applied_within_15_days(candidate) &&
    age(candidate)
  end
end

def sort_candidates
  @candidates.sort do | a, b | 
    [b[:years_of_experience], b[:github_points]] <=> [a[:years_of_experience], a[:github_points]] 
  end
end

def sort_qualified
  qualified_candidates.sort do | a, b | 
    [b[:years_of_experience], b[:github_points]] <=> [a[:years_of_experience], a[:github_points]] 
  end
end