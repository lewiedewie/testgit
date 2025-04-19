question = "What's your name? "

while True:
    answer = input(question)
    if answer == "":
        break
    elif "lewie" in answer.lower():
        print(f"hello, {answer}")
    elif "leon" in answer.lower():
        print("you are a very special clown!")
    else:
        print(f"hello, clown")

print("goodbye!")