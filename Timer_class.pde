class Timer{
  float startTime, stopTime; // two variables to keep track of the time that the timer starts and length of time for the timer.
   boolean started = false;  // keep track of the timer, where it's been started on not. 
  
  //constructor. This sets the amount of the time to lapse before it sets the boolean below to true. 
  // an example use would be 
  // Timer myTimer = new Timer(2000);    <---- that sets the timer to 2 seconds.
  Timer(float _stopTime){
    stopTime = _stopTime;
  }
  
  // you can call this anyway (inside the Setup which would start almost immediately or inside the draw loop, which would make 
  // it restart ever cycle.
  void timerStart(){
    startTime = millis();
    started = true;
  }
  
  void stopTimer(){
    started = false;
    println("time stopped");
  }
  
  // place this in your draw() loop to cheen the time has lapse.
  // an example block of code might be:
  //   if (myTimer.isFinished(){
  //      text("EXPLOSION!", 100, 100);
  //    }
  boolean isFinished(){
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}
