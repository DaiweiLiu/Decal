class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    if not params.blank?
      @text = params[:name] + " is " + params[:adjective]
    else
      @text = "You are nothing!"
    end
  end

  def age
  end

  def person
    if not params.blank?
      @p = Person.new(params[:name], params[:age])
      @intro = @p.introduce()
      @birth_year = @p.birth_year()
      @nickname = @p.nickname()
    else
      @p = nil
    end
  end
end
