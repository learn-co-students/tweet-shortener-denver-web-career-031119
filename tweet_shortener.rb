# Write your code here.

def dictionary(word)
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4",
    "four" => "4"
  }
  
  if substitutes.has_key?(word.downcase)
    return substitutes[word.downcase]
  end
  
  word
end

def word_substituter(tweet)
  tweet_array = tweet.to_s.split(" ")
  shortened_tweets = []
  tweet_array.each do |ele|
    shortened_tweets << dictionary(ele)
  end
  shortened_tweets.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)[0..139]
end
