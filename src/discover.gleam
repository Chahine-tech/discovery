import gleam/io

pub fn main() {
  let secret_number = 42
  io.debug("Guess the number between 1 and 100")

  // Loop until the user guesses the secret number
  let guess = 50
  check_guess(secret_number, guess)
}

fn check_guess(secret_number: Int, guess: Int) {
  case guess {
    _ if guess < secret_number -> io.debug("Too low!")
    _ if guess > secret_number -> io.debug("Too high!")
    _ -> io.debug("You guessed it!")
  }
}
