VAR_GLOBAL
  timePLC AT %s16 : INT := 0;
  timeDelayed : INT := 0;
  switchCase : INT := 0;
  fifthFloorElevDoorsOpen : BOOL := FALSE;
  fourthFloorElevDoorsOpen : BOOL := FALSE;
  thirdFloorElevDoorsOpen : BOOL := FALSE;
  secondFloorElevDoorsOpen : BOOL := FALSE;
  firstFloorElevDoorsOpen : BOOL := TRUE;
  
  elevatorFloor : INT := 5; // 1, 2, 3, 4
  fifthFloorButtonPressed : BOOL := FALSE;
  fourthFloorButtonPressed : BOOL := FALSE;
  thirdFloorButtonPressed : BOOL := FALSE;
  secondFloorButtonPressed : BOOL := FALSE;
  firstFloorButtonPressed : BOOL := FALSE;
  elevatorFifthFloorButtonPressed : BOOL := FALSE;
  elevatorFourthFloorButtonPressed : BOOL := FALSE;
  elevatorThirdFloorButtonPressed : BOOL := FALSE;
  elevatorSecondFloorButtonPressed : BOOL := FALSE;
  elevatorFirstFloorButtonPressed : BOOL := FALSE;
  elevatorButtonStopPressed : BOOL := FALSE;
  // -1: down | 0: idle | 1: up
  forceOpenCurrentElevatorFloorDoor : BOOL := FALSE;
  elevatorDirection : INT := 0;
  anyObstacleDetected : BOOL := FALSE;
  anyObstacleWasDetected : BOOL := FALSE;
  obstacleElevator : BOOL := FALSE;
  obstacleElevatorFifthFloor : BOOL := FALSE;
  obstacleElevatorFourthFloor : BOOL := FALSE;
  obstacleElevatorThirdFloor : BOOL := FALSE;
  obstacleElevatorSecondFloor : BOOL := FALSE;
  obstacleElevatorFirstFloor : BOOL := FALSE;
  elevatorMaximumWeight : INT := 300;
  elevatorWeight : INT := 0;
  // constants
  elevatorFloorTravelTime : INT := 1;
  elevatorFloorDoorsOpenTime : INT := 2;
  highestFloor : INT := 5;
  targetFloorDefaultValue : INT := -1;
  // floors
  anyFloorButtonPressed : BOOL := FALSE;
  anyFifthFloorButtonPressed : BOOL := FALSE;
  anyFourthFloorButtonPressed : BOOL := FALSE;
  anyThirdFloorButtonPressed : BOOL := FALSE;
  anySecondFloorButtonPressed : BOOL := FALSE;
  anyFirstFloorButtonPressed : BOOL := FALSE;
  // movement handlers
  targetFloor : INT := -1;
  floorDifference : INT := -10;
  // text info
  textElevatorWeight : STRING := 'Simulovana vaha vytahu [kg]:';
  textMaxElevatorWeight : STRING := 'Maximalni vaha vytahu [kg]:';
  //misc
  stopSignActivated : BOOL := TRUE;
  configured : BOOL := FALSE;
  stringQueueRepresentation : STRING := '';
  // queue
  queue : array[0..9] OF INT; // number of floors * 2
  queueDefaultValue : INT := -1;
  queueSize : INT := 10;
END_VAR


