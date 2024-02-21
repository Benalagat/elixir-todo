defmodule User do
  def main do
    name=IO.gets("What is your name? ") |> String.trim()
    IO.puts "Hello #{name}"
  end
  def tuple do
    my_tuple={123,345, :ben}
    IO.puts "My tuple, #{is_tuple(my_tuple)}"
    my_tuple1=Tuple.append(my_tuple,35)
    IO.puts "Age, #{elem(my_tuple1,3)}"
    IO.puts "Size, #{tuple_size(my_tuple1)}"
    my_tuple3=Tuple.delete_at(my_tuple1,0)
    _my_tuple4=Tuple.insert_at(my_tuple3,0,188)

    words=["Oranges","Mangoes","Bananas"]
    Enum.each  words,fn word ->
    IO.puts word
    end
  end
    def map_capitals() do
      capitals = %{"Kenya"=>"Nairobi","Uganda"=>"Kampala","Tanzania"=>"Dar"}
      IO.puts "Capital city of Uganda is #{capitals["Uganda"]}"
    end
    def pattern_matching() do
      [height,_width]=[100,40]
      IO.puts "Height is: #{height}"
    end
    def add() do
      get_sum = fn(x,y)-> x+y end
      IO.puts "5+5= #{get_sum.(5,5)}"
    end
    def factorial(n) do
      if n<=1 do
        1
      else
        result= n*factorial(n-1)
        result
      end
    end
    def even_list() do
      even_list= for n <- [1,2,3,4], rem(n,2) ==0, do: n
      even_list
    end
  end
