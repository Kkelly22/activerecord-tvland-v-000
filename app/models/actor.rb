class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    [self.first_name, self.last_name].join(" ")
  end

  def list_roles
    self.characters.map {|c|  [c.name, c.show.name].join(" - ") }
  end

end
