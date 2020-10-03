package recfun
import scala.annotation.tailrec

object Main {
  def main(args: Array[String]) {
    println("Pascal's Triangle")
    for (row <- 0 to 10) {
      for (col <- 0 to row)
        print(pascal(col, row) + " ")
      println()
    }
  }

  /**
   * Exercise 1
   */
  def pascal(c: Int, r: Int): Int = {
    if ((c == r) || (c == 0)) 1 else pascal(c - 1, r - 1) + pascal(c, r - 1)
  }

  /**
   * Exercise 2 Parentheses Balancing
   */
  def balance(chars: List[Char]): Boolean = {
    count(chars, 0) == 0;
  }

  @tailrec
  def count(chars: List[Char], counter: Int): Int = {
    if (chars.isEmpty || (counter < 0)) {
      return counter
    }
    val popped :: newList = chars
    count(newList, if (popped == '(') counter + 1 else if (popped == ')') counter - 1 else counter)
  }

  /**
   * Exercise 3 Counting Change
   * Write a recursive function that counts how many different ways you can make
   * change for an amount, given a list of coin denominations. For example,
   * there is 1 way to give change for 5 if you have coins with denomiation
   * 2 and 3: 2+3.
   */
  def countChange(money: Int, coins: List[Int]): Int = {
    coins.map(coin => if (money - coin > 0) {
      countChange(money - coin, coins.filter(elem => elem <= coin))
    } else if (money - coin == 0) {
      1
    } else {
      0
    }).sum
  }
}

