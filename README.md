# finalProject

# Project Title and purpose

The project is called "Space Game" as I don't have anything better. It is a shooter game in  which the player pilots a spaceship that must survive a unlimited number of enemies flying at them. The game is set in space with a "3-D" background that makes the game look like it has depth, but actually uses an array to fill in the stars, in the same  general idea as the snowflake lab. The player has a weapon (Through collision detection) and can shoot and destroy enemy ships, making it easier to survive. There are two types of enemies, fast and normal speed, which do what their names intale. The ship can move, but has no health and can't be killed, and there are no drops of score. The game starts easy, but quickly become harder as more and more random enemy waves spawn in, and shooting the fast enemies become quite hard. 

### Difficulties or opportunities you encountered along the way.

The toughest part was getting the images to .png images to move and even display. I was stuck on it for about a day, as most tutorials online had to do with static images. Through a combination of trial and error, and piecing together about 5 tutorials, I was able to get PImage to work probably. It is able to show multiple sprites on screen at once, and they move in the exact way that they are supposed to. This part was independent, and would have probably been a lot easier to do if i had asked for help.

### Most interesting piece of your code and explanation for what it does.

void act() {
    if (frameCount < 100) {
      //Do nothing
    } else if (frameCount < 600) {
      singleEnemy(100);
    } else if (frameCount < 1000) {
      singleEnemy(300);
    } else if (frameCount < 1500) {
      randomEnemySingle();
    } else if (frameCount < 2000 ) {
     randomEnemy();
     randomEnemySingle();
     
      
    }
  }

  void singleEnemy(float incomingX) {
    x = incomingX;
    if (frameCount % 100 == 0) {
      engine.add(new enemy(x, y));
    }
  }
  
  void randomEnemySingle() {
    x = random(50, width-50);
    if (frameCount % 50 == 0) {
      engine.add(new enemy(x, y));
      frameCount=1500;
    }
  }

  void randomEnemy() {
    x = random(50, width-50);
    if (frameCount % 50 == 0) {
      engine.add(new Fast_enemy(x, y));
      frameCount=1500;
    }
  }


This part uses frameCount as a kind of timer, and determines when the launcher class will send out a new wave. The first part counts the frames, and sends enemies until it exceeds the framecount limit, which then moves onto the next line. The launcher works by adding new enemies to the game engine, which was an idea i got from watching a tutorial online on how to make a space game. Both the enemy and fast enemy do this, which means that the number and type of enemy can be expanded in the future by adding new classes and calling them here. The random single and fast enemies are spawned in based on mod division, which controls the speed of their spawning. 

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

Sam Baumann

## Acknowledgments

Jeff Thompson | 2015 | www.jeffreythompson.org
Basically the whole processing forum
