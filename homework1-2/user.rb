class User

  attr_accessor :name, :age, :status

  @@count = 0

  def initialize(data)
    @name = data[:name]
    @age = data[:age]
    @status = data[:status]
    @@count += 1
  end

  def data_about_user
    puts "Name: " + @name + ", age:" + @age.to_s
  end

  def count_of_user
    puts "There are " + @@count.to_s + " viewer"
  end

  private
    def user_age
      puts "#{name}`s age is " + @age.to_s
    end

end 

user1 = User.new(name: 'Ann', age: 18, status: 'student')
user2 = User.new(name: 'Maria', age: 29, status: 'employee')
user3 = User.new(name: 'Nastya', age: 6, status: 'child')
user1.data_about_user
user1.count_of_user
user1.send :user_age
