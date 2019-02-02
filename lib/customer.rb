require 'pry'
#class for Model3 goes here
#Feel free to change the name of the class
class Customer

    @@all = []

    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size

        @@all << self
    end

    def self.all_customers
        @@all
    end

    # create customer instance
    def buy_sneaker(brand, store)
        sneaker = Sneaker.new(brand, store, self)
        sneaker.save
    end

    def find_customer
        # looping through the join and letting Sneaker class know its "us" == Customer
        Sneaker.all_sneakers.select do |sneaker|
            sneaker.customer == self
        end
    end

    def customer_sneakers
        find_customer.map do |sneaker|
            sneaker.brand
        end
    end

    def customer_color_way
        find_customer.select do |sneaker|
            sneaker.color_way
        end
    end

    def customer_size
        self.size.to_s
    end

end
