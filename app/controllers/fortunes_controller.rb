class FortunesController < ApplicationController
  def horoscopes
    #@horoscope = "Many of your personal goals have either been met or are in progress, Gemini, and you're feeling exhilarated. However, people around you might have their hands out. You may be asked to contribute to charities or make personal loans to people you don't know well. You want to help whenever you can, but be discriminating about whom you help now. Some may be less than trustworthy."

    @this_zodiac = params.fetch("sign")
   @all_zodiacs = Zodiac.list
   @that_zodiac = @all_zodiacs.fetch(@this_zodiac.to_sym)
   @horoscope = @that_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortunes_templates/horoscopes.html.erb" })
  end
end