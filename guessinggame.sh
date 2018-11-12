#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter your guess here: "

        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is Greater then the true number"
        else
            echo " congratulation,you are right!"
        break;
        fi
    done
}
echo "Alright! Guess the files number in the current directory!"

guess
