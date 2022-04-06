# hangman
def hangman(word):
    wrong = 0
    stages = ["",
             "________________",
             "|        |     |",
             "|        &     |",
             "|        0     |",
             "|      /-|-\   |",
             "|       / \    |",
             "|              |"
              ]
    rletters = list(word)
    board = ["_"] * len(word)
    win = False
    print("Let's Play Hangman！")
    while wrong < len(stages) - 1:
        print("\n")
        msg = "Input a letter\n"
        char = input(msg)
        if char in rletters:
            cind = rletters.index(char)
            board[cind] = char
            rletters[cind] = '$'
        else:
            wrong += 1
        print(" ".join(board))
        e = wrong + 1
        print("\n".join(stages[0:e]))
        if "_" not in board:
            print("Nope, Wrong！")
            print(" ".join(board))
            win = True
            break
    if not win:
        print("\n".join(stages[0:wrong+1]))
        print("The word was {}.".format(word))
    else:
        print("You Win！")
    
hangman("cat")
