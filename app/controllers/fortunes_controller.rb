class FortunesController < ApplicationController
  def horoscopes
    #@horoscope = "Many of your personal goals have either been met or are in progress, Gemini, and you're feeling exhilarated. However, people around you might have their hands out. You may be asked to contribute to charities or make personal loans to people you don't know well. You want to help whenever you can, but be discriminating about whom you help now. Some may be less than trustworthy."

   @all_zodiacs = Zodiac.list
   @this_zodiac = @all_zodiacs.fetch("sign".to_sym)
   @horoscope = @this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortunes_templates/horoscopes.html.erb" })
  end
end