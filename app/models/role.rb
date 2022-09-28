class Role < ActiveRecord::Base
    has_many :auditions


  # - `Role#actors` returns an array of names from the actors associated with this role
  def actors
    auditions.map {|a| a.actor}
  end
  # - `Role#locations` returns an array of locations from the auditions associated with this role
  def locations
    auditions.map {|a| a.locations}
  end
  
  # - `Role#lead` returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
 def lead
    auditions.find_by(hired: true) || 'no actor has been hired for this role'
 end

 # - `Role#understudy` returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
def understudy
    auditions.where(hired: true).second || 'no actor has been hired for this role'
end

end