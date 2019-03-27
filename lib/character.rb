class Character
  attr_reader :name, :actor, :salary

  def initialize(character_hash)
    @character_hash = character_hash
    @name = @character_hash[:name]
    @actor = @character_hash[:actor]
    @salary = @character_hash[:salary].to_s.delete("_").to_i
  end

end
