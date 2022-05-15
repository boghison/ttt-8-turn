def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
# code your input_to_index and move method here!
def input_to_index(i)
  i.to_i - 1
end
  
def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
    index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
    !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def turn(board)
    is_valid = false
    until is_valid
        puts "Please enter 1-9:"
        index = input_to_index gets.strip
        is_valid = valid_move?(board, index)
        if is_valid
            move(board, index)
            display_board(board)
        end
    end
end 