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
  new = [] # initialise an empty array to hold results of the loops to be performed...
    tweet.split(" ").each do |word| # make tweet an array and loop over it:
      dictionary.each do |k,v| # for each word in tweet, compare it to each key in hash within the dictionary method
        if word.downcase == k.to_s # didn't realise case was a problem until testing next method
          word = v # if a key matches, reassign the corresponding value to the word variable.
        end
      end
      new << word # push the word into the new array, whether it was changed or not.  Exit the hash loop and go back to the next iteration of the array loop (until all words checked)
    end
  new.join(" ") # return the new array as a string
end
# I found the idea of using .keys on the hash was a bit misleading here

def bulk_tweet_shortener(array_of_tweets)
  # shortens an array of tweets and puts result
  array_of_tweets.each { |x| puts word_substituter(x) }
end

def selective_tweet_shortener(tweet)
  # only does substitutions if tweet is longer than 140
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  # truncates tweet to 140 chars with (...) if still too long after substitution
   trunk_or_no = word_substituter(tweet).length
 trunk_or_no.class  
    # truncate

end
