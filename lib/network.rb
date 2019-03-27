class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
    @all_characters = []
  end

  def add_show(show)
    @shows << show
  end

  def get_all_characters
    @all_characters = @shows.map do |show|
      show.characters.map do |character|
        character.character_hash
      end
    end
  end

  def highest_paid_actor
    get_all_characters
    highest_paid_character = @all_characters.flatten.max_by{|character| character[:salary]}
    highest_paid_character[:actor]
  end

  def payroll
    get_all_characters
    payroll_data = {}
    @all_characters.flatten.each do |character|
      payroll_data[character[:actor]] = character[:salary]
    end
    payroll_data
  end
end
