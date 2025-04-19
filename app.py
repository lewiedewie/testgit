question = "What's your name? "

while True:
    answer = input(question)
    if answer == "":
        break
    elif answer == "daddy":
        print("you are a clown!")
    else:
        print(f"hello, {answer}")
