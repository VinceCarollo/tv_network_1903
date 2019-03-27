class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    all_characters = @shows.map do |show|
      show.characters.map do |character|
        character.character_hash
      end
    end
    highest_paid_character = all_characters.flatten.max_by{|character| character[:salary]}
    highest_paid_character[:actor]
  end
end
