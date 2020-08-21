use 5.26.1;
use strict;
use warnings;

sub readfile{
	my $path="../data/toeic1500.dat";
	open(IN,$path);
	chomp(my @words=<IN>);

	return @words;
}

sub hangman{
	my $remain;
	my $word;
	my @words=&readfile;
	my @wrong;
	my @correct;
	my @entered;

	while(1){
		$word=$words[int(rand(@words))];
		@entered=();
		$remain=7;

		while(1){
			say("\033c");
			print("hint:");

			for my $c (split //,$word){
				if($c ~~ @entered){
					print($c);
				}else{
					print('-');
				}
			}
			say("");

			print("used:");
			for my $c ('a'..'z'){
				if($c ~~ @entered){
					print("\033[41m$c\033[49m");
				}else{
					print($c);
				}
			}
			say("");

			print("[remain:$remain]>>>");
			chomp(my $c=<STDIN>);

			if((length($c)==1) && ($c=~/[a-z]/) && !grep(/^$c$/,@entered)){
				push(@entered,$c);

				if($word!~/$c/){
					$remain--;
				}

				my $is_correct=1;
				for my $e (split //,$word){
					if(($e ~~ @entered)==0){
						$is_correct=0;
					}
				}

				if($is_correct){
					say("correct!");
					push(@correct,$word);
					last;
				}

				if($remain==0){
					say("wrong...");
					push(@wrong,$word);
					last;
				}
			}
		}

		print("continue?[y/n]>>");
		chomp(my $key=<STDIN>);
		if($key eq 'n'){
			my $rate=scalar(@correct)/(scalar(@correct)+scalar(@wrong))*100;
			say("correct answer rate:${rate}%");
			say("-----wrong words-----");
			for my $word (@wrong){
				say($word);
			}
			return;
		}
	}

}


hangman();

