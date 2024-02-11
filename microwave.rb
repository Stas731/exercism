class Microwave
    def initialize(a=0, b=0, c=0)
        @a = a
        @b = b
        @c = c
    end



    def timer
        if @c == 0 && @b != 0
            (@a.to_s + @b.to_s).to_i
        elsif @b == 0 && @c == 0
            @a * 60 if @a < 10
            @a  if @a >= 10
        else
         (@a.to_s + @b.to_s + @c.to_s).to_i
        end
    end

    def start
        "Заданное время: #{timer / 60} мин, #{timer % 60} сек."
    end
end

a = Microwave.new(59)
p a.start

