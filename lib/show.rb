class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @salaries = []
  end

  def all_salaries
    @salaries = @characters.map do |character|
      character.salary
    end
    @salaries
  end

  def total_salary
    all_salaries
    @salaries.sum
  end
end
