import liba

class CBHandler(liba.MyCB):
    def handle(self, a, b):
        return a * b

    def __init__(self):
        liba.MyCB.__init__(self)


handler = CBHandler()
print("add_wrap: {}".format(liba.add_wrapper(3, 4, handler)))
