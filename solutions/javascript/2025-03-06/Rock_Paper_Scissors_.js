/*
Kata: Rock Paper Scissors!
Language: javascript
Completed At: 2025-03-06 11:54:40
https://www.codewars.com/kata/rock-paper-scissors


Rock Paper Scissors
Let's play! You have to return which player won! In case of a draw return Draw!.

Examples(Input1, Input2 --> Output):

"scissors", "paper" --> "Player 1 won!"
"scissors", "rock" --> "Player 2 won!"
"paper", "paper" --> "Draw!"
*/

const rps = (p1, p2) => {
    p1.toLowerCase();
    p2.toLowerCase();
    switch (p1){
        case 'scissors':
          return p2 === 'scissors' ? "Draw!" : p2 === 'paper' ? 'Player 1 won!' : p2 === 'rock' ? 'Player 2 won!' : undefined;
        case 'rock':
          return p2 === 'rock' ? "Draw!" : p2 === 'scissors' ? 'Player 1 won!' : p2 === 'paper' ? 'Player 2 won!' : undefined;
        case 'paper':
          return p2 === 'paper' ? "Draw!" : p2 === 'rock' ? 'Player 1 won!' : p2 === 'scissors' ? 'Player 2 won!' : undefined;
        default:
          return undefined;
    }
  };