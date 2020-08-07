# hangman
[![Build Status](https://travis-ci.org/Takana-Norimasa/hangman.svg?branch=master)](https://travis-ci.org/Takana-Norimasa/hangman)  
2020年度プログラミング演習Ⅲの課題

## Install

install 
```zsh
$ make install
```

testing
```zsh
$ make test
```

## File organization
```
.
├── LICENSE
├── Makefile
├── README.md
├── data
│   ├── testdata.dat
│   └── toeic1500.dat
├── hangman
├── include
│   └── hangman.h
└── src
    ├── display.c
    ├── getchar.c
    ├── main.c
    ├── obj
    │   ├── display.o
    │   ├── getchar.o
    │   ├── main.o
    │   ├── playgame.o
    │   └── readdata.o
    ├── playgame.c
    └── readdata.c
```
