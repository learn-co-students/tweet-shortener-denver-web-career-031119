# Write your code here.

def dictionary
dictionary =
{

"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => "4",
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end
def word_substituter(tweet)

    words = tweet.split(" ")
    output = []

    words.each do |word|
      dictionary.keys.include?(word.downcase) ? output << dictionary[word.downcase] : output << word
    end

    output.join(" ")


end

def bulk_tweet_shortener(tweets)

  tweets.each {|tweet| puts word_substituter(tweet)}

end

def selective_tweet_shortener(tweet)

    characters = tweet.split("")

    if characters.size > 140
        return word_substituter(tweet)
    else
      return tweet
    end

end



def shortened_tweet_truncator(tweet)
  shortented_tweet_characters = word_substituter(tweet).length

  if shortented_tweet_characters > 140
    return "#{word_substituter(tweet)[0..136]}..."
  else
    return tweet
  end


end
