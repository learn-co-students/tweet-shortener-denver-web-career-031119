require 'pry'

def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  words = tweet.split
  keys_to_find = dictionary.keys
  new_words = []

  words.map do |word|
    key = keys_to_find.find do |k|
      word.downcase == k
    end
      if key != nil
        word = dictionary[key]
        new_words.push(word)
      else
        word
        new_words.push(word)
      end
  end
  new_words.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    string_size = tweet.length
    if string_size > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  string_size = tweet.length
  if string_size > 140
    tweet = "#{tweet[0..136]}..."
  else
    tweet
  end
end
