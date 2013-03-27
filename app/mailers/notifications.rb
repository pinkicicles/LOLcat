class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_meal.subject
  #
  def new_meal
    @greeting = "Hi, a new meal has been requested"

    mail to: "to@example.org"
  end
end
