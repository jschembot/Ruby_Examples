=begin

This program is aimed to use a basic function to recreate
Julius Caesar's encoded messages.  The user can choose a
sting and shift each letter over the desired amount.
Ex. caesar_cipher("A",6) ==> "G"

=end

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

crypt = caesar_cipher("A hat cat",6)
puts crypt
