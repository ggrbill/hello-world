class Printer():
    def __init__( self, who, times = 1 ):
        self._who = who
        self._times = times
         
    def PrintHello( self ):
        for i in range( int( self._times ) ):
            print (" Hello, ", self._who, " !!!")
        print("\n")