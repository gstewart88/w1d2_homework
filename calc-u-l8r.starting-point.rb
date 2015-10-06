def get_input(order)
  puts "Enter the #{order} number"
  gets.to_f
end

def xmas_sleeps
require 'date'
d = DateTime.now.mjd - DateTime.parse("25-12-2015").mjd
d*-1
end

def age
  print "What year were you born? "
  year_of_birth = gets.to_i
  print "In what month were you born? "
  birth_month = gets.to_i
  print "On what day were you born? "
  day_of_birth = gets.to_i
  time_of_birth = Time.new(year_of_birth, birth_month, day_of_birth)
  today = Time.new()
  seconds_alive = today - time_of_birth
  seconds_in_year = 365.25 * 24 * 60 * 60
  years_alive = (seconds_alive/seconds_in_year).to_i
  puts "you are #{years_alive} years old"
  return_to_main
end

def meters_to_feet
  puts "How Many Metres?"
  metres = gets.to_f
  metres*3.28 
end

def feet_to_meters
  puts "How Many Feet?"
  feet = gets.to_f
  feet/3.28 
end

def kilometers_to_miles
  puts "How Many Kilometers?"
  kilometres = gets.to_f
  kilometres/1.60934
end

def cone
puts "Enter the Radius"
radius = gets.to_f
puts "Enter the Height"
height = gets.to_f
(3.14159*radius**2*height)/3
end

def cube
puts "Enter the Length of a Side"
side = gets.to_f
side**3
end

def sphere
puts "Enter the Radius"
radius = gets.to_f
1.33*(3.14159*radius**3)
end

def add
  get_input("1st") + get_input("2nd")
end

def subtract
  a = get_input("1st")
  b = get_input("2nd")
  a-b
end

def multiply
  a = get_input("1st")
  b = get_input("2nd")
  a*b
end

def divide
  puts "Don't you dare put 0 in."
  a = 0
  b = 0
  until !(a==0||b==0)
    a = get_input("1st")
    b = get_input("2nd")
    if a==0||b==0
      puts "I told you not to put 0 in. Try again"
    end
  end
  a/b
end

def power
  a = get_input("1st")
  b = get_input("2nd")
  a**b
end

def square
  a=get_input("1st")
  ans = Math::sqrt(a)
end

def answer (ans)
  puts "The answer is: #{ans}"
end

def menu
  # Clear the screen, and present the user with a menu
  puts `clear` # Backticks run things directly in the terminal
  puts "*** Calc-U-L8R ***"
  puts "Please choose whether to keep it simple, or push the boundaries"
  print "(b)asic, (a)dvanced, (v)olumes, (c)onversions, a(g)e, (x)mas sleeps or (q)uit: "
  gets.chomp.downcase
end

def return_to_main
puts "Press enter to continue"
gets
end

def basic_calc
  # ask the user which operation they want to perform
  puts "Good choice - which simple operation do you want to perform"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  case operation
  when "a"
    answer(add)
  when "s"
    answer(subtract)
  when "m"
    answer(multiply)
  when "d"
    answer(divide)
  end
  return_to_main
end

def advanced_calc
  puts "Dangerous territory buddy - what witchcraft do you want to do with numbers?"
  print "(p)ower up, or be a (s)quare? "
  operation = gets.chomp.downcase
  case operation
  when 'p'
    answer (power)
  when 's'
    answer (square)
  end
  return_to_main
end

def volume_calc
  puts "Choose your poison"
  print "Volume of a (c)one, c(u)be or (s)phere "
  operation = gets.chomp.downcase
  case operation
  when 'c'
    answer (cone)
  when 's'
    answer (sphere)
  when 'u'
    answer (cube)
  end
  return_to_main
end

def conversion_calc
  puts "Choose your poison"
  print "(m)eters To Feet, (f)eet To Meters or (k)ilometers To Miles "
  operation = gets.chomp.downcase
  case operation
  when 'm'
    answer (meters_to_feet)
  when 'f'
    answer (feet_to_meters)
  when 'k'
    answer (kilometers_to_miles)
  end
  return_to_main
end

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'v'
    volume_calc
  when 'c'
    conversion_calc
  when 'g'
    answer (age)
  when 'x'
    puts "their are #{xmas_sleeps} days till Christmas"
    return_to_main
  else
    puts "Please use a, b, c, g or v to choose an option, or press q to quit"
    return_to_main
  end
  response = menu
end