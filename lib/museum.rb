



class Museum

  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons - []

  end

  def add_exhibit(exhibit)
    @exhibits << exhibit

  end


end
