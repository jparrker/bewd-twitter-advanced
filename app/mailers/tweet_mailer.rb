class TweetMailer < ApplicationMailer
  def notify(tweet)
    @tweet = tweet
    @user = tweet.user
    mail(to: @user.email, subject: "Your tweet has been successfully posted")
  end 
end
