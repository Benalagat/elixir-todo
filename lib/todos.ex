defmodule Todos do

  def create_todos do
    #old code
  #  number_of_tasks= IO.gets("How many todos to create:")
  #  {number_of_tasks,_q}=Integer.parse(number_of_tasks)
  #  number_of_tasks
   #cool
   {number_of_tasks,_}= IO.gets("How many todos to create:") |> Integer.parse()
   for _ <- 1..number_of_tasks do
    IO.gets("Enter your tasks: ") |> String.trim()
   end
  end
  def new_todo(tasks,task) do
    List.insert_at(tasks,-1,task)
  end

  def save(tasks,filename) do
    binary=:erlang.term_to_binary(tasks)
    File.write(filename,binary)
  end
  def read(filename) do
    case File.read(filename) do
      {:ok,binary} -> :erlang.binary_to_term(binary)
      {:error,_reason} -> "File does not exist!"
    end
    # {_status,binary}=File.read(filename)
    # :erlang.binary_to_term(binary)
  end
  def temp_todos do
    ["Breakfast", "Read Books", "Tutorials", "Exercise"]
  end
  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end
  def random_task(tasks) do
    [tasks]=  Enum.take_random(tasks,1)
    tasks
  end
  def word_search(tasks, word) do
    for task <- tasks, String.contains?(task,word) do
      task
    end
  end
  def complete_todo(tasks, task) do
    if contains?(tasks, task) do
      List.delete(tasks, task)
    else
      :not_found_error
    end
  end
end
