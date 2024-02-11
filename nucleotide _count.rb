=begin
class NucleotideCount
     def initialize(str=[])
       @str = str
     end

    def nucleotide_count
        g = 0
        a = 0
        t = 0
        c = 0
        for i in @str do 
            if i == 'G'
                g += 1
            elsif i == 'A'
                a += 1
            elsif i == 'T'
                t += 1
            elsif i == 'C'
                c += 1
            end
        end
        puts "G: " + g.to_s
        puts "A: " + a.to_s
        puts "T: " + t.to_s
        puts "C: " + c.to_s
    end
end
=end



def nucleotide_count(str)
    @str = str.chars
    g = 0
    a = 0
    t = 0
    c = 0
    for i in @str do 
        if i == 'G'
            g += 1
        elsif i == 'A'
            a += 1
        elsif i == 'T'
            t += 1
        elsif i == 'C'
            c += 1
        elsif i != 'G' && i != 'A' && i != 'T' && i != 'C'
            error
        end
    end
    puts "G: " + g.to_s
    puts "A: " + a.to_s
    puts "T: " + t.to_s
    puts "C: " + c.to_s
end 


nucleotide_count("GATTACA")
