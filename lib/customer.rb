require 'pry'
#class for Model3 goes here
#Feel free to change the name of the class
class Customer

    @@all = []

    attr_accessor :cust_name, :shoe_size

    def initialize(cust_name, shoe_size)
        @cust_name = cust_name
        @shoe_size = shoe_size

        @@all << self
    end

    def self.all_customers
        @@all
    end

    # create customer
    def buy_sneaker(brand, store)
        sneaker = Sneaker.new(brand, store, self)
    end

    def find_customer
        # looping through the join and letting Sneaker class know its "us" == Customer
        Sneaker.all_sneakers.select do |cust|
            cust.customer == self
        end
    end

    def customer_sneakers
        find_customer.map do |cust|
            cust.brand
        end
    end

end
