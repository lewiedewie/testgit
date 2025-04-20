question = "What's your name? "

while True:
    answer = input(question)
    if answer == "":
        break
    elif "lewie" in answer.lower():
        print(f"hello my lord, {answer}")
    elif "leon" in answer.lower():
        print("you are a very special clown!")
    elif "daddy" in answer.lower(): 
        print("hello old king or should i say father")
    elif "mummy" in answer.lower (): 
        print( "hello mummy whats for brekfast")
    else:
        print(f"hello, {answer}")
    
print("goodbye")