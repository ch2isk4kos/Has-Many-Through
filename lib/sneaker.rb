require 'pry'
#class for Model1 goes here
#Feel free to change the name of the class
class Sneaker

    @@all = []

    attr_accessor :brand, :store, :customer, :price, :color_way

    def initialize(brand, store, customer, price, color_way)
        @store = store
        @customer = customer
        @brand = brand
        @price = price
        @color_way = color_way

        # here...self refers to each instance of Sneaker class
        @@all << self
    end

    def self.all_sneakers
        @@all
    end
end

# THIS IS THE JOIN MODEL
