# tic tac toe, seriously coded in a fugue, I have no idea what's going on haha
def draw?(board)
    if board[0] == "X" && board[1] == "X" && board[2] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[0] == "O" && board[1] == "O" && board[2] == "O"
        puts "Player 2 wins!"
        return true
    elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[3] == "O" && board[4] == "O" && board[5] == "O"
        puts "Player 2 wins!"
        return true
    elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[6] == "O" && board[7] == "O" && board[8] == "O"
        puts "Player 2 wins!"
        return true
    elsif board[0] == "X" && board[3] == "X" && board[6] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[0] == "O" && board[3] == "O" && board[6] == "O"
        puts "Player 2 wins!"
        return true
    elsif board[1] == "X" && board[4] == "X" && board[7] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[1] == "O" && board[4] == "O" && board[7] == "O"
        puts "Player 2 wins!"
        return true
    elsif board[2] == "X" && board[5] == "X" && board[8] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[2] == "O" && board[5] == "O" && board[8] == "O"
        puts "Player 2 wins!" 
        return true;
    elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[0] == "O" && board[4] == "O" && board[8] == "O"
        puts "Player 2 wins!"
        return true
    elsif board[2] == "X" && board[4] == "X" && board[6] == "X"
        puts "Player 1 wins!"
        return true
    elsif board[2] == "O" && board[4] == "O" && board[6] == "O"
        puts "Player 2 wins!"
        return true
    else
        return false
    end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-------------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-------------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
    puts 
end
def move(board, location, current_player = "X")
    board[location.to_i-1] = current_player
end
def position_taken?(board, location)
    board[location] != " " && board[location] != ""
end
def valid_move?(board, position)
    position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end
def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        turn(board)
    end
end
def turn_count(board)
    counter = 0
    board.each do |x|
        if x == "X" || x == "O"
            counter += 1
        end
    end
    return counter
end
def current_player(board)
    if turn_count(board) % 2 == 0
        return "X"
    else
        return "O"
    end
end
def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
        win_index_1 = win_combination[0]
        win_index_2 = win_combination[1]
        win_index_3 = win_combination[2]
        position_1 = board[win_index_1]
        position_2 = board[win_index_2]
        position_3 = board[win_index_3]
        if position_1 == "X" && position_2 == "X" && position_3 == "X"
            return win_combination
        elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
            return win_combination
        end
    end
    return false
end
def full?(board)
    board.all? do |x|
        x == "X" || x == "O"
    end
end
def draw?(board)
    if !won?(board) && full?(board)
        return true
    else
        return false
    end



    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    if won?(board)
        puts "Congratulations #{current_player(board)}!"
    elsif draw?(board)
        puts "Cats Game!"
    end
end
    puts "Player 1 is X"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    if won?(board)
        puts "Congratulations #{current_player(board)}!"
    elsif draw?(board)
        puts "Cats Game!"
    end
end
    puts "Player 2 is O"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    if won?(board)
        puts "Congratulations #{current_player(board)}!"
    elsif draw?(board)
        puts "Cats Game!"
    end
end
    puts "Player 1 is X"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    if won?(board)
        puts "Congratulations #{current_player(board)}!"
    elsif draw?(board)
        puts "Cats Game!"
    end
end
    puts "Player 2 is O"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    if won?(board)
        puts "Congratulations #{current_player(board)}!"
    elsif draw?(board)
        puts "Cats Game!"
    end
end
    puts "Player 1 is X"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    puts "Congratulations X!"
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        play(board)
    end

end
    puts "Player 2 is O"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    puts "Congratulations O!"
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        play(board)
    end

end
    puts "Player 1 is X"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    puts "Congratulations X!"
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        play(board)
    end

end
    puts "Player 2 is O"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    puts "Congratulations O!"
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        play(board)
    end

end
    puts "Player 1 is X"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    puts "Congratulations X!"
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        play(board)
    end

end
    puts "Player 2 is O"
    # play tic tac toe game
def play(board)
    until won?(board) || draw?(board)
        turn(board)
    end
    puts "Congratulations O!"
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        play(board)
    end
end
end