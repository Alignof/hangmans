use std::io;
use std::env;
use std::fs::File;
use std::cmp::Ordering;
use std::io::prelude::*;
use std::io::{BufRead, BufReader};
use rand::Rng;

struct Words{
	len: usize,
	string: String,
	is_wrong: bool,
	is_correct: bool,
	is_answered: bool,
}

fn readfile(words: &mut Vec<Words>){
    let filepath="../data/toeic1500.dat";
    println!("In file {}", filepath);

    let file=File::open(filepath)
        .expect("file not found");
    let reader=BufReader::new(file);

    for line in reader.lines(){
        let line=line.unwrap();
        words.push(
                Words{
                    len:line.len(),
                    string:line,
                    is_wrong:false,
                    is_correct:false,
                    is_answered:false,
                }
            );
    }
}

fn playgame(words: Vec<Words>){
    let mut remain: u32;
    let mut input: char;
    let mut hit: bool;
    let mut game_continue: bool=true;
    let used: [bool;27]=[false;27];

    while(game_continue){
        let word: Words=words[rand::thread_rng().gen_range(0,words.len())];

    }
}

fn main(){
    let mut words: Vec<Words>=Vec::new();

    readfile(&mut words);
    playgame(words);
}
