class Car 
 def initialize(brand, model, year, speed)
    @brand = brand
    @model = model
    @year = year
    @speed = speed
 end

 def speed_up(speed)
    @speed += speed
 end


 def speed_down(speed)
    @speed -= speed
 end

protected
 def info
    puts "brand: #{@brand}"
    puts "model: #{@model}"
    puts "year: #{@year}"
    puts "speed: #{@speed}"
 end

end

class A < Car
    def initialize(spoiler, color)
        super(brand, model, year, speed)
        @spoiler = spoiler
        @color = color
    end
    def infob
    info
     end
end

class B < Car
    def initialize(massa, cuzov)
        super(brand, model, year, speed)
        @massa = massa
        @cuzov = cuzov
    end
    def infob
        info
    end

    def speed_up(speed)
        @speed += speed + 10
    end


end


car = Car.new('Audi', 'A6', 2019, 0)


a = A.new('Audi', 'A6', 2019, 0)
a.infob