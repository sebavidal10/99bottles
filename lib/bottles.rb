class Bottles

    def bottle_to_s(bottle)
        "#{bottle} #{bottle > 1 ? "bottles" : "bottle"}"
    end

    def verse(bottle)
        first_line(bottle) + second_line(bottle)
    end

    def verses(bottle2, bottle1)
        (bottle1..bottle2).reverse_each.map { |bottle| verse(bottle) }.join("\n")
    end

    def song
        verses(99, 0)
    end

    def first_line(bottle)
        if bottle > 0
            "#{bottle_to_s(bottle)} of beer on the wall, #{bottle_to_s(bottle)} of beer.\n"
        else
            "No more bottles of beer on the wall, no more bottles of beer.\n"
        end
    end

    def second_line(bottle)
        next_bottles = bottle-1
        if bottle > 1
            "Take one down and pass it around, #{bottle_to_s(next_bottles)} of beer on the wall.\n"
        elsif bottle == 1
            "Take it down and pass it around, no more bottles of beer on the wall.\n"
        else
            "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        end
    end

end
