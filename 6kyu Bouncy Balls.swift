/* Instruction
  A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

  He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

  His mother looks out of a window 1.5 meters from the ground.

  How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

  Three conditions must be met for a valid experiment:
  1.Float parameter "h" in meters must be greater than 0
  2.Float parameter "bounce" must be greater than 0 and less than 1
  3.Float parameter "window" must be less than h.
  If all three conditions above are fulfilled, return a positive integer, otherwise return -1.
*/

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
  if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h {return -1}
  
  else {
    var times = 1 
    /* 
    times is intialized as 1 here, since the ball is dropped 
    from a place higher than the window, where the mother will 
    see the ball at least 1 time even if the ball does not bounce.
    */
    
    var x = h   
    // "x" is a copy of "h" , since "h" is a let variable
    while (x * bounce) > window {
      times += 2
      x = x * bounce
    } 
    /* 
    each loop the elevation changes, and the ball will be travelling two direction
    (first up then down), so the increment for times is 2 every loop
    */
    return times
  }
}
