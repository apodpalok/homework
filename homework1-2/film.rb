class Film 

  def initialize(user, film_name, time)
    @name = user.name
    @age = user.age
    @status = user.status
    @film_name = film_name
    @time = time
  end

  def method_missing(method, *args)
    puts "Method #{method}(#{args.join(', ')}) is not found"
  end

  def film_name
    puts @film_name
  end

  def time
    puts 'Time: ' + @time.to_s
  end

  def price_of_ticket
    if @time > 6 && @time < 12
      @price = 30
    elsif @time > 12 && @time < 18
      @price = 60
    else 
      @price = 90
    end
    discount
    puts 'The price of ticket: ' + @price.to_s + '$'
  end

  def discount
    if @status == 'student' && @age >= 7
      @price = @price * 0.75
    end 
    if @age < 7
      @price = @price * 0.5
    end 
  end

  def hall_of_film
    @hallOfFilm = rand(1..5)
    puts'Hall №. ' + @hallOfFilm.to_s
  end

  def place_of_user
    @line = rand(1..20)
    @number = rand(1..30)
    puts 'Place: ' + @line.to_s + ' line, ' + @number.to_s + ' place'
  end
    
end

require_relative 'user'

user1 = User.new(name: 'Ann', age: 18, status: 'student')
film = Film.new(user1, "Доктор Стрэндж", 18.3)
film.time
film.price_of_ticket
film.hall_of_film
film.place_of_user
film.blabla(40, 77)
film.public_send :film_name
