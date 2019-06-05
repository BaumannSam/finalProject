/*
COLLISION-DETECTION FUNCTIONS
Jeff Thompson | 2015 | www.jeffreythompson.org
A complete set of collision-detection functions. To use,
create a new tab in your sketch and paste this entire
file inside. Each function returns a boolean true/false
whether the two shapes are touching or not.
CONTENTS
+  circleCircle()
+  circleRect()
+  lineCircle()
+  lineLine()
+  linePoint()
+  lineRect()
+  pointCircle()
+  pointPoint()
+  pointRect()
+  polyCircle()
+  polyLine()
+  polyPoint()
+  polyPoly()
+  polyRect()
+  rectRect()
+  triPoint()
For arguments and explanation, see the function below or
the example sketch for each function.
*/

// RECTANGLE/RECTANGLE
boolean rectRect(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) {
  
  // are the sides of one rectangle touching the other?
  
  if (r1x + r1w >= r2x &&    // r1 right edge past r2 left
      r1x <= r2x + r2w &&    // r1 left edge past r2 right
      r1y + r1h >= r2y &&    // r1 top edge past r2 bottom
      r1y <= r2y + r2h) {    // r1 bottom edge past r2 top
        return true;
  }
  return false;
}
