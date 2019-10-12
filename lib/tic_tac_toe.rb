class TicTacToe

  WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]

  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input_move)
    if user_input_move != 0
        user_input_move.to_i - 1
    else 
      user_input_move
    end
  end
  
  def move(user_input_move, player_token)
    @board[user_input_move] = player_token
  end
  
  def position_taken?(user_input_move)
     @board[user_input_move] == "X" || @board[user_input_move] == "O"
  end
  
  def valid_move?(user_input_move)
    user_input_move >= 0 && user_input_move < 9 && !position_taken?(user_input_move)
  end

  def turn
    puts "Choose your move? (1-9)"
    user_move = gets.chomp
    user_input_move = input_to_index(user_move)
      if valid_move?(user_input_move) && !position_taken?(user_input_move)
        move(user_input_move, current_player)
      else
        puts "Sorry that move is taken. Try again?"
        turn
      end
      display_board
  end
  
  def turn_count
    count = 0
    @board.each do |num_turn|
      if num_turn == "X" || num_turn == "O"
        count += 1
      end
    end
    count
  end
  
  def current_player
    if turn_count.even?
      "X"
    else
      "O"
    end
  end
  
  def won?
    
  
  end
  

end