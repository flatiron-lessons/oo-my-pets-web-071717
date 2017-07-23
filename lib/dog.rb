# require_relative '../lib/pet.rb'

class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  def initialize(name)
  	@name = name
  	@mood = "nervous"
  end
end