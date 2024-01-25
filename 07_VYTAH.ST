VAR_GLOBAL
  timePLC AT %s16 : INT := 0;
  timeDelayed : INT := 0;
  switchCase : INT := 0;
  elevatorDoorsOpened : array[0..4] OF BOOL;
  
  elevatorFloor : INT := 0; // 1, 2, 3, 4
  elevatorButtonsPressed : array[0..4] OF BOOL;
  elevatorButtonStopPressed : BOOL := FALSE;
  // -1: down | 0: idle | 1: up
  forceOpenCurrentElevatorFloorDoor : BOOL := FALSE;
  elevatorDirection : INT := 0;
  anyObstacleDetected : BOOL := FALSE;
  anyObstacleWasDetected : BOOL := FALSE;
  obstacleElevator : BOOL := FALSE;
  obstaclesBlockingDoors : array[0..4] OF BOOL;
  elevatorMaximumWeight : INT := 300;
  elevatorWeight : INT := 0;
  // constants
  elevatorFloorTravelTime : INT := 1;
  elevatorFloorDoorsOpenTime : INT := 5;
  highestFloor : INT := 5;
  targetFloorDefaultValue : INT := -1;
  // floors
  anyFloorButtonPressed : BOOL := FALSE;
  floorSetAsElevStop : array[0..4] OF BOOL;
  // movement handlers
  targetFloor : INT := -1;
  floorDifference : INT := -10;
  waitTime : INT := 1;
  // text info
  textElevatorWeight : STRING := 'Simulovana vaha vytahu [kg]:';
  textMaxElevatorWeight : STRING := 'Maximalni vaha vytahu [kg]:';
  textOperatingMode : STRING := 'Mod provozu';
  //misc
  stopSignActivated : BOOL := TRUE;
  configured : BOOL := FALSE;
  stringQueueRepresentation : STRING := '';
  elevatorDirectionIndicator : INT := 1;
  selectedSortOption : INT := 2;
  // queue
  queue : array[0..4] OF INT; // number of floors - 1
  queueDefaultValue : INT := -1;
  queueSize : INT := 5;
  queueUpperFloors : array[0..4] OF INT;
  queueLowerFloors : array[0..4] OF INT;
  elevatorFloorStart : INT := -1;
  sortUpperFloors : BOOL := TRUE;
  sortLowerFloors : BOOL := TRUE;
END_VAR


