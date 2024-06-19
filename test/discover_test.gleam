import discover
import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

// Test for too low a guess
pub fn guess_too_low_test() {
  let result = discover.check_guess(42, 30)
  result
  |> should.equal("Too low!")
}

// Test for too high a guess
pub fn guess_too_high_test() {
  let result = discover.check_guess(42, 50)
  result
  |> should.equal("Too high!")
}

// Test for correct guess
pub fn guess_correct_test() {
  let result = discover.check_guess(42, 42)
  result
  |> should.equal("You guessed it!")
}
