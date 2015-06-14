This was a program to translate the Bostonian accent into proper English, written by me, Corey Soreff, for the Launch Academy scholarship challenge.

My program attempts to capture the “general” cases where the end of a word could match and be changed to something else.  This is effective when the word ends with more than two letters, to narrow down possibilities of spelling differences.  I also included many specific words of phrases Bostonians use.

My program might have trouble when faced with some words that end in “ah” but do not match any of my cases.  This is because many words could end in “ah” but should be corrected to “er”, “or”, “ar”, etc.  I tried to narrow this down as much as possible by weeding out the other possibilities earlier in the iteration of the hash, and then I use “ah” by itself as a case at the end for anything that wasn’t caught previously.

I wanted to spice it up a little, so I made it into a class with methods and I used rspec to test the original translate method (boston to normal) to identify any bugs.  I then decided to add another method that would do the opposite and translate proper English to a Boston accent, I think this one is a little more fun!
