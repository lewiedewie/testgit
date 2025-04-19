question = "What's your name? "

while True:
    answer = input(question)
    if answer == "":
        break
    elif "leon" in answer.lower():
        print("you are a clown!")
    else:
        print(f"hello, {answer}")

print("goodbye!")