require "pry"


def dictionary
  dictionary = {"hello" => "hi",
                "to" => "2",
                "two" => "2",
                "too" => "2",
                "for" => "4",
                "four" => "4",
                "be" => "b",
                "you" => "u",
                "at" => "@",
                "and" => "&"}
end

def word_substituter(tweet)
  tweetArray = tweet.split
  shortTweetArray = []
  wordsLong = dictionary.keys
  wordsShort = dictionary.values
  i = 0
  until i = tweetArray.length
    if tweetArray.include?(wordsLong[i])
      answerIndex = tweetArray.index(wordsLong[i])
      tweetArray[answerIndex].replace(wordsShort[i])
      shortTweetArray = tweetArray
    end
  end
end
