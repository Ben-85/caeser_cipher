def get_sentence
    puts "What sentence would you like to run through the cipher?"
    sentence = gets.chomp
end

def get_shift
    puts "Input the number you would like the cipher to shift the message"
    gets.chomp.to_i
end

def caesar_cipher(sentence, shift)
    sentence_bytes = sentence.bytes
    shifted_bytes = sentence_bytes.map do |number|
        if number.to_i >= 97 && number <= 122
            number += shift
            number -= 26 if number > 122
            number += 26 if number < 97
            number
        elsif number >= 65 && number <= 90
            number += shift
            number -= 26 if number > 90
            number += 26 if number < 65
            number
        else
            number
        end
    end
    letter_array = shifted_bytes.map { |item| item.chr }
    puts "Your coded message: #{letter_array.join("")}"
end

def main
    caesar_cipher(get_sentence(), get_shift())
end

main()