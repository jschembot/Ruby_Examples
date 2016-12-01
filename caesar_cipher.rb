def caesar_cipher(string, shift)
    crypt_str = []

# Use for cases if shift is larger than alphabet length
    if shift >= 26
      shift %= 26
    end

    string.split("").each { |letter|
        if letter =~ /[A-Za-z]/
            new_c = letter.ord + shift
            if new_c > 122
                new_c -=26
                crypt_str.push(new_c.chr)
            elsif new_c > 90 && new_c < 97
                new_c -= 26
                crypt_str.push(new_c.chr)
            else
                crypt_str.push(new_c.chr)
            end
        else
            crypt_str.push(letter)
        end
    }
    return crypt_str
end

crypt = caesar_cipher("Is this promising",4)
puts crypt
