# Write your code here.
def dictionary
  words_to_be_substituted = {
    "hello" => 'hi',
    'to' => '2',
    'too' => '2',
    'two' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweet)
  split_tweet = tweet.split()
  counter = 0

  split_tweet.each do |tweet_word|
    dictionary.keys.each do |dictionary_key|
      if tweet_word == dictionary_key
        split_tweet[counter] = dictionary[dictionary_key]
      end
    end
    counter += 1
  end
  return split_tweet.join(" ")
end

# word_substituter("I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real.")

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  else
    return tweet
  end
end
