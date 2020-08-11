class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
end


# - `Viewer#initialize(username)`
#   - `Viewer` is initialized with a username (string)
#   - username **can be** changed after the Viewer is initialized

# - `Viewer#username`
#   - returns the Viewer's username

# - `Viewer.all`
#   - returns an array of all the Viewer instances that have been initialized