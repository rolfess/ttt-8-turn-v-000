def display_board (board)#
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  !((board[index].nil?) || (board[index]==" ") || (board[index]==""))
end

def valid_move? (board, index)
  index >=0 && index <=8 && !position_taken?(board, index)
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input-=1
  return new_user_input
end

def move(board, index, char="X")
  board[index]=char
  return board
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move? (board, index)
    move(board, index)
    display_board(board)
  else
    turn
  end
end
