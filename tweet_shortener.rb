def dictionary
  # create a hash with original words as keys, as subs as values
  words_and_substitutes = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }

end

def word_substituter(tweet)
  # takes in tweet, shortens it based on substitutes in dictionary method
  new = []
    tweet.split(" ").each do |word| # array loop
      dictionary.each do |k,v|
        if word == k.to_s
          word = v
        end
      end
      new << word
    end
  new.join(" ")


end

def bulk_tweet_shortener(array_of_tweets)
  # shortens an array of tweets and puts result
end

def selective_tweet_shortener
  # only does substitutions if tweet is longer than 140 chars
end

def shortened_tweet_truncator
  # truncates tweet to 140 chars with (...) if still too long after substitution
end
