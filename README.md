# Tic Tac Toe game

![screenshot](images/tictactoe.png)

# Game rules

> Tic-tac-toe (American English), noughts and crosses (British English), or Xs and Os is a game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner.

# Strategy

A player can play a perfect game of tic-tac-toe (to win or at least, draw) if each time it is their turn to play, they choose the first available move from the following list, as used in Newell and Simon's 1972 tic-tac-toe program.

1. Win: If the player has two in a row, they can place a third to get three in a row.
2. Block: If the opponent has two in a row, the player must play the third themselves to block the opponent.
3. Fork: Create an opportunity where the player has two ways to win (two non-blocked lines of 2).
4. Blocking an opponent's fork: If there is only one possible fork for the opponent, the player should block it. Otherwise, the player should block all forks in any way that simultaneously allows them to create two in a row. Otherwise, the player should create a two in a row to force the opponent into defending, as long as it doesn't result in them creating a fork. For example, if "X" has two opposite corners and "O" has the center, "O" must not play a corner in order to win. (Playing a corner in this scenario creates a fork for "X" to win.)
5. Center: A player marks the center. (If it is the first move of the game, playing on a corner gives the second player more opportunities to make a mistake and may therefore be the better choice; however, it makes no difference between perfect players.)
6. Opposite corner: If the opponent is in the corner, the player plays the opposite corner.
7. Empty corner: The player plays in a corner square.
8. Empty side: The player plays in a middle square on any of the 4 sides.

## Built With

- Ruby
- Visual Studio Code
- Sublime Text


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

This project runs on [Ruby](https://www.ruby-lang.org/en/documentation/installation/)

After installation, run `ruby -v` to make sure Ruby installed correctly. Example
```
$ ruby -v
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin17]
```

### Installing
clone the project locally

In your terminal, change directory to the root of the project

### Live version of the game

[Live Demo Link](https://repl.it/repls/GoldGiftedMention)


## Authors

👤 **Abror Mukimov**
- Github: [abrormukimov](https://github.com/abrormukimov)
- Linkedin: [abrormukimov](https://www.linkedin.com/in/abrormukimov)
- Twitter: [abrormukimov](https://www.twitter.com/abrormukimov)

👤 **Eric Mbouwe**

- Github: [@ericmbouwe](https://github.com/ericmbouwe)
- Twitter: [@ericmbouwe](https://twitter.com/ericmbouwe)
- Linkedin: [@ericmbouwe](https://www.linkedin.com/in/ericmbouwe/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome! Start by:

* Forking the project
* Cloning the project to your local machine
* `cd` into the project directory
* Run `git checkout -b your-branch-name`
* Make your contributions
* Push your branch up to your forked repository
* Open a Pull Request with a detailed description to the development branch of the original project for a review

##### Please feel free to contribute to any of these!

Feel free to check the [issues page](https://github.com/abrormukimov/tic-tac-toe/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- The Odin Project
- [Microverse](microverse.org)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details