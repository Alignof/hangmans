use 5.26.1;
use strict;
use warnings;

sub readfile{
    my $path="../data/toeic1500.dat";
    open(IN,$path);
    my @words=<IN>;

    return @words;
}

#sub hangman(){
#    words=readfile()
#    wrong=[]
#    correct=[]
#
#    while True:
#        word=random.choice(words)
#        entered=[]
#        remain=7
#        while True:
#            print("\033c")
#            print(word)
#            print("hint:",end='')
#            for c in word:
#                if c in entered:
#                    print(c,end='')
#                else:
#                    print('-',end='')
#            print()
#
#            print("used:",end='')
#            for c in range(ord('a'),ord('z')+1):
#                if chr(c) in entered:
#                    print("\033[41m{}\033[49m".format(chr(c)),end='')
#                else:
#                    print(chr(c),end='')
#            print()
#
#            c=input("[remain:{}]>>>".format(remain))
#            if (len(c)==1) and (ord('a') <= ord(c) and ord(c) <= ord('z')) and ((c in entered) == False):
#                entered.append(c)
#                if (c in word) == False:
#                    remain-=1
#
#                is_correct=True
#                for e in word:
#                    if (e in entered) == False:
#                        is_correct=False
#
#                if is_correct:
#                    print("correct!")
#                    correct.append(word)
#                    break
#
#                if remain==0:
#                    print("wrong...")
#                    wrong.append(word)
#                    break
#
#        key=input("continue?[y/n]>>")
#        if key == 'n':
#            print("correct answer rate:{}".format(len(correct)/(len(correct)+len(wrong))*100))
#            print("-----wrong words-----")
#            for word in wrong:
#                print(word)
#            return
#}


readfile();
#&hangman;

