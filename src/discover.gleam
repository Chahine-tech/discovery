import gleam/io

pub fn main() {
  let secret_number = 42
  io.debug("Guess the number between 1 and 100")

  // Loop until the user guesses the secret number
  let guess = 50
  let result = check_guess(secret_number, guess)
  io.debug(result)
}

pub fn check_guess(secret_number: Int, guess: Int) -> String {
  case guess {
    _ if guess < secret_number -> "Too low!"
    _ if guess > secret_number -> "Too high!"
    _ -> "You guessed it!"
  }
}
