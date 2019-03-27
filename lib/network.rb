class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def get_all_characters
    all_characters = @shows.map do |show|
      show.characters.map do |character|
        character.character_hash
      end
    end
    all_characters.flatten
  end

  def highest_paid_actor
    highest_paid_character = get_all_characters.max_by{|character| character[:salary]}
    highest_paid_character[:actor]
  end

  def payroll
    payroll_data = {}
    get_all_characters.each do |character|
      payroll_data[character[:actor]] = character[:salary]
    end
    payroll_data
  end
end
