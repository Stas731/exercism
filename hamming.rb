=begin
Рассчитайте расстояние Хэмминга между двумя цепями ДНК.

Ваше тело состоит из клеток, содержащих ДНК. Эти клетки регулярно изнашиваются и нуждаются в замене, чего они достигают путем деления на дочерние клетки. Фактически, в среднем человеческом организме за жизнь происходит около 10 квадриллионов делений клеток!

Когда клетки делятся, их ДНК тоже реплицируется. Иногда во время этого процесса случаются ошибки, и отдельные участки ДНК кодируются неверной информацией. Если мы сравним две цепи ДНК и посчитаем различия между ними, мы увидим, сколько ошибок произошло. Это известно как «расстояние Хэмминга».

Мы читаем ДНК, используя буквы C, A, G и T. Две цепи могут выглядеть так:

GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^
У них 7 отличий, следовательно, расстояние Хэмминга равно 7.

Расстояние Хэмминга полезно во многих областях науки, не только в биологии, так что с этой фразой приятно ознакомиться :)

Замечания по реализации
Расстояние Хэмминга определяется только для последовательностей одинаковой длины, поэтому попытка вычислить его между последовательностями разной длины не должна сработать.
=end

class Hamming
    def self.compute(str, str1)
      raise ArgumentError, "Strings must have equal length" unless str.size == str1.size
      a = 0
      differences = 0
      if str.size == str1.size
        while a < str.size do 
          if str[a] != str1[a]
            differences += 1
          end
        a += 1
        end
      end
    return differences
    end
  end