class MyLib:
    
    def join_two_strings(self,arg1,arg2):
        return arg1+" "+arg2
    
    def any_arguments(self,*args):
        print "Got arguments:"
        for arg in args:
            print arg