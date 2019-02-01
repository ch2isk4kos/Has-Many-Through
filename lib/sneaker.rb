require 'pry'
#class for Model1 goes here
#Feel free to change the name of the class
class Sneaker

    @@all = []

    attr_accessor :brand, :store, :customer

    def initialize(brand, store, customer)
        @store = store
        @customer = customer
        @brand = brand

        # here...self refers to each instance of Sneaker class
        @@all << self
    end

    def self.all_sneakers
        @@all
    end

end

# THIS IS THE JOIN MODEL
