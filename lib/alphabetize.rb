def alphabetize(arr)
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort do |x, y|
    i = 0
    a = esperanto.index(x.chars[i])
    b = esperanto.index(y.chars[i])
    looping = true
    while looping
      if a < b || b > a 
        looping = false
        a <=> b
      else
        i += 1
      end
    end
  end
end
arr.sort_by { |a| a.split("").map{ |char| ESPERANTO_ALPHABET.index(char) } }