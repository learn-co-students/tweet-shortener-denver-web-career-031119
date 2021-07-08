# Write your code here.

def dictionary
{ "hello" => "hi", "to" => "2", "two" => "2", "too" => "2",
  "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@",
   "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  result = []
  tweet_array.each do |word|
    if dictionary.keys.include?(word.downcase)
      result << dictionary[word.downcase]
    else
      result << word
    end
  end
return result.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  trunc_tweet = word_substituter(tweet)
  if trunc_tweet.length > 140
    return trunc_tweet[0..136] + "..."
  else
    return tweet
  end
end
