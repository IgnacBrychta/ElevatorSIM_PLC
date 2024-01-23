(* Queue methods *)
FUNCTION VisualizeQueue : BOOL
  VAR
    index : INT;
  END_VAR
  stringQueueRepresentation := '';
  FOR index := 0 TO queueSize - 1 DO
    stringQueueRepresentation := stringQueueRepresentation + ';' + INT_TO_STRING(queue[index]);
  END_FOR;
END_FUNCTION

FUNCTION EnqueueFloor : BOOL
  VAR_INPUT
    floorToEnqueue : INT;
  END_VAR
  VAR
    index : INT;
  END_VAR

  FOR index := 0 TO queueSize - 1 DO
    IF NOT queue[index] = queueDefaultValue THEN
      queue[index] := floorToEnqueue;
      index := index + 100; // break
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION ShiftQueueLeft : BOOL
  VAR 
    index : INT;
    nextIndex : INT;
    temp : INT;
  END_VAR
  FOR index := 0 TO queueSize - 2 DO // - 2 because not for last element
    nextIndex := index + 1;
    temp := queue[index];
    queue[index] := queue[nextIndex];
    queue[nextIndex] := temp;
  END_FOR;
END_FUNCTION

FUNCTION DequeueFloor : INT
  VAR
    dequeuedFloor : INT;
  END_VAR;

  dequeuedFloor := queue[0];
  queue[0] := queueDefaultValue;
  ShiftQueueLeft();
  DequeueFloor := dequeuedFloor;
END_FUNCTION

(* End of queue code *)

FUNCTION HandleDoors : BOOL
  IF forceOpenCurrentElevatorFloorDoor THEN
    IF elevatorFloor = 5 THEN
      fifthFloorElevDoorsOpen := TRUE;
    ELSIF elevatorFloor = 4 THEN
      fourthFloorElevDoorsOpen := TRUE;
    ELSIF elevatorFloor = 3 THEN
      thirdFloorElevDoorsOpen := TRUE;
    ELSIF elevatorFloor = 2 THEN
      secondFloorElevDoorsOpen := TRUE;
    ELSIF elevatorFloor = 1 THEN
      firstFloorElevDoorsOpen := TRUE;
    END_IF;
  ELSIF elevatorDirection = 0 THEN
    IF elevatorFloor = 1 THEN
      firstFloorElevDoorsOpen := TRUE;
      secondFloorElevDoorsOpen := FALSE;
      thirdFloorElevDoorsOpen := FALSE;
      fourthFloorElevDoorsOpen := FALSE;
      fifthFloorElevDoorsOpen := FALSE;
    ELSIF elevatorFloor = 2 THEN
      firstFloorElevDoorsOpen := FALSE;
      secondFloorElevDoorsOpen := TRUE;
      thirdFloorElevDoorsOpen := FALSE;
      fourthFloorElevDoorsOpen := FALSE;
      fifthFloorElevDoorsOpen := FALSE;
    ELSIF elevatorFloor = 3 THEN
      firstFloorElevDoorsOpen := FALSE;
      secondFloorElevDoorsOpen := FALSE;
      thirdFloorElevDoorsOpen := TRUE;
      fourthFloorElevDoorsOpen := FALSE;
      fifthFloorElevDoorsOpen := FALSE;
    ELSIF elevatorFloor = 4 THEN
      firstFloorElevDoorsOpen := FALSE;
      secondFloorElevDoorsOpen := FALSE;
      thirdFloorElevDoorsOpen := FALSE;
      fourthFloorElevDoorsOpen := TRUE;
      fifthFloorElevDoorsOpen := FALSE;
    ELSE
      firstFloorElevDoorsOpen := FALSE;
      secondFloorElevDoorsOpen := FALSE;
      thirdFloorElevDoorsOpen := FALSE;
      fourthFloorElevDoorsOpen := FALSE;
      fifthFloorElevDoorsOpen := TRUE;
    END_IF;
  END_IF;
END_FUNCTION

FUNCTION ResetAllButtons : BOOL
  fifthFloorButtonPressed          := FALSE;
  fourthFloorButtonPressed         := FALSE;
  thirdFloorButtonPressed          := FALSE;
  secondFloorButtonPressed         := FALSE;
  firstFloorButtonPressed          := FALSE;
  elevatorFifthFloorButtonPressed  := FALSE;
  elevatorFourthFloorButtonPressed := FALSE;
  elevatorThirdFloorButtonPressed  := FALSE;
  elevatorSecondFloorButtonPressed := FALSE;
  elevatorFirstFloorButtonPressed  := FALSE;
END_FUNCTION

FUNCTION HandleFloorSelection : BOOL
  floorDifference := elevatorFloor - targetFloor;
  IF floorDifference = 0 THEN
    // if the user pressed an elevator button on the
    // same floor the elevator is at
  ELSIF floorDifference > 0 THEN
    elevatorDirection := -1;
  ELSIF floorDifference < 0 THEN
    elevatorDirection := 1;
  END_IF;
  floorDifference := ABS(floorDifference);
  ResetAllButtons();
END_FUNCTION

FUNCTION HandleButtons : BOOL
  anyFirstFloorButtonPressed :=
    elevatorFirstFloorButtonPressed OR
    firstFloorButtonPressed;
  anySecondFloorButtonPressed :=
    elevatorSecondFloorButtonPressed OR
    secondFloorButtonPressed;
  anyThirdFloorButtonPressed :=
    elevatorThirdFloorButtonPressed OR
    thirdFloorButtonPressed;
  anyFourthFloorButtonPressed := 
    elevatorFourthFloorButtonPressed OR
    fourthFloorButtonPressed;
  anyFifthFloorButtonPressed := 
    elevatorFifthFloorButtonPressed OR
    fifthFloorButtonPressed;

  anyFloorButtonPressed := 
    anyFirstFloorButtonPressed OR
    anySecondFloorButtonPressed OR 
    anyThirdFloorButtonPressed OR 
    anyFourthFloorButtonPressed OR
    anyFifthFloorButtonPressed;


  IF anyFifthFloorButtonPressed THEN
    targetFloor := 5;
    HandleFloorSelection();
  ELSIF anyFourthFloorButtonPressed THEN
    targetFloor := 4;
    HandleFloorSelection();
  ELSIF anyThirdFloorButtonPressed THEN
    targetFloor := 3;
    HandleFloorSelection();
  ELSIF anySecondFloorButtonPressed THEN
    targetFloor := 2;
    HandleFloorSelection();
  ELSIF anyFirstFloorButtonPressed THEN
    targetFloor := 1;
    HandleFloorSelection();
  END_IF;
END_FUNCTION


FUNCTION HandleMovement : BOOL
END_FUNCTION

FUNCTION HandleObstacles : BOOL
  anyObstacleDetected := obstacleElevator OR 
    obstacleElevatorFirstFloor OR
    obstacleElevatorSecondFloor OR 
    obstacleElevatorThirdFloor OR 
    obstacleElevatorFourthFloor OR
    obstacleElevatorFifthFloor;
END_FUNCTION

PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    index : INT; 
  END_VAR
  VAR_TEMP
  END_VAR
  
  HandleButtons();
  VisualizeQueue();
  (* configuration *)
  IF NOT configured THEN
    FOR index := 0 TO queueSize - 1 DO
      queue[index] := queueDefaultValue;
    END_FOR;

    
    configured := TRUE;
  END_IF;
  

END_PROGRAM

