#! /usr/bin/python3


class Name():
    def __init__(self, first="", middle=[], last=""):
        self.first = first
        self.middle = middle
        self.last = last

    def format(self, form):
        result = ""    
        for i in form:
            result += self.parse_name(i)
        return result
        
    def parse_name(self, symbol):
        return {
            'F': self.first,
            'f': initial(self.first),
            'L': self.last,
            'l': initial(self.last),
            'M': word_list(self.middle),
            'm': initial_list(self.middle)
            }.get(symbol, symbol)


def initial(word):
    return word[0] + "."
        
def initial_list(words):
    result = ""    
    for word in words:
        result += initial(word)
    return result

def word_list(words):
    result = ""
    for word in words:
        result += word + " "
    return result.strip()
        
n = Name(first="John", middle=["Tabith", "Till"], last="Smith")
                
print(n.format("F m L"))
