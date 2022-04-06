# tic tac toe, seriously coded in a fugue, I have no idea what's going on haha
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
class TicTacToe
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
            return true
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

    def turn(board)
        puts "Player 1, please enter a number between 1 and 9"
        player1 = gets.chomp.to_i
        if player1 == 1
            board[0] = "X"
        elsif player1 == 2
            board[1] = "X"
        elsif player1 == 3
            board[2] = "X"
        elsif player1 == 4
            board[3] = "X"
        elsif player1 == 5
            board[4] = "X"
        elsif player1 == 6
            board[5] = "X"
        elsif player1 == 7
            board[6] = "X"
        elsif player1 == 8
            board[7] = "X"
        elsif player1 == 9
            board[8] = "X"
        else
            puts "Invalid input, please try again"
            turn(board)
        end
        display_board(board)
        puts "Player 2, please enter a number between 1 and 9"
        player2 = gets.chomp.to_i
        if player2 == 1
            board[0] = "O"
        elsif player2 == 2
            board[1] = "O"
        elsif player2 == 3
            board[2] = "O"
        elsif player2 == 4
            board[3] = "O"
        elsif player2 == 5
            board[4] = "O"
        elsif player2 == 6
            board[5] = "O"
        elsif player2 == 7
            board[6] = "O"
        elsif player2 == 8
            board[7] = "O"
        elsif player2 == 9
            board[8] = "O"
        else
            puts "Invalid input, please try again"
            turn(board)
        end
        board
        display_board(board)
    end

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
    
end

TicTacToe.new.play([" ", " ", " ", " ", " ", " ", " ", " ", " "])

