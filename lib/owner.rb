# require_relative '../lib/pet.rb'
require 'pry'

class Owner

	attr_accessor :owner, :pets, :name
	attr_reader :species
  
	@@owners = []
	

  	def initialize(species)
  		@species = species
  		@owner = owner
  		@@owners << self
  		@pets = {'fishes': [], 'cats': [], 'dogs': []}
 	end

 	# Class Methods #

 	def self.all
 		@@owners
 	end

 	def self.reset_all
 		@@owners.clear
 	end

 	def self.count
 		@@owners.length
 	end

 	def say_species
 		"I am a #{@species}."
 	end

 	# Instance Methods #

 	def buy_fish(fish)
 		new_fish = Fish.new(fish)
 		@pets[:fishes] << new_fish
 	end

 	def buy_cat(cat)
 		new_cat = Cat.new(cat)
 		@pets[:cats] << new_cat
 	end

 	def buy_dog(dog)
 		new_dog = Dog.new(dog)
 		@pets[:dogs] << new_dog
 	end

 	def walk_dogs 		
 		@pets[:dogs].map do |dog|
 			dog.mood = "happy"
 		end
 	end

 	def play_with_cats
 			@pets[:cats].map do |cat|
 			cat.mood = "happy"
 		end
 	end

 	def feed_fish
 			@pets[:fishes].map do |fish|
 			fish.mood = "happy"
 		end
 	end

 	def sell_pets
 
 		@pets.values.each do |type|
 			type.each do |animal|
 				animal.mood = "nervous"
 			end
 		end
 		
 		new_pets = @pets

 		@pets.values.map do |category|
 			category.clear	
 		end
 		new_pets
 	end

 	def list_pets
 		"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].length} cat(s)."
 	end

end