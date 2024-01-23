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
    IF queue[index] = queueDefaultValue THEN
      queue[index] := floorToEnqueue;
      index := 1000; // break
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

FUNCTION IsFloorAlreadyEnqueued : BOOL
  VAR
    index : INT;
  END_VAR
  VAR_INPUT
    floor : INT;
  END_VAR

  FOR index := 0 TO queueSize - 1 DO
    IF queue[index] = floor THEN
      IsFloorAlreadyEnqueued := TRUE;
      index := 1000;
    END_IF;
  END_FOR;
  
END_FUNCTION

(* End of queue code *)

FUNCTION CloseAllDoors : BOOL
  VAR
    index : INT;
  END_VAR
  FOR index := 0 TO highestFloor - 1 DO
    elevatorDoorsOpened[index] := FALSE;
  END_FOR;
END_FUNCTION

FUNCTION HandleDoors : BOOL
  IF forceOpenCurrentElevatorFloorDoor THEN
    elevatorDoorsOpened[elevatorFloor - 1] := TRUE;
  ELSIF elevatorDirection = 0 THEN
    // open doors of the floor the elevator is at
    CloseAllDoors();
    elevatorDoorsOpened[elevatorFloor] := TRUE;
  END_IF;
END_FUNCTION


FUNCTION ResetAllButtons : BOOL
  VAR
    index : INT;
  END_VAR
  FOR index := 0 TO highestFloor - 1 DO
    elevatorButtonsPressed[index] := FALSE;
  END_FOR;
END_FUNCTION

FUNCTION HandleFloorSelection : BOOL
  IF NOT elevatorFloor = targetFloor AND NOT IsFloorAlreadyEnqueued(targetFloor) THEN
    floorDifference := elevatorFloor - targetFloor;
    IF floorDifference > 0 THEN
      elevatorDirection := -1;
      EnqueueFloor(targetFloor);
      floorSetAsElevStop[targetFloor] := TRUE;
    ELSIF floorDifference < 0 THEN
      elevatorDirection := 1;
      EnqueueFloor(targetFloor);
      floorSetAsElevStop[targetFloor] := TRUE;
    END_IF;
    
  ELSE
    elevatorDirectionIndicator := 1;
  END_IF;
  
  floorDifference := ABS(floorDifference);
  ResetAllButtons();
END_FUNCTION

FUNCTION IsAnyButtonPressed : BOOL
  VAR
    index : INT;
  END_VAR;
  FOR index := 0 TO highestFloor - 1 DO
    IF elevatorButtonsPressed[index] THEN
      anyFloorButtonPressed := TRUE;
      IsAnyButtonPressed := TRUE;
    END_IF;
  END_FOR;
  
END_FUNCTION

FUNCTION HandleButtons : BOOL
  VAR
    index : INT;
  END_VAR

  IsAnyButtonPressed();

  FOR index := 0 TO highestFloor - 1 DO
    IF elevatorButtonsPressed[index] THEN
      targetFloor := index;
      HandleFloorSelection();
    END_IF;
  END_FOR;
END_FUNCTION


FUNCTION HandleMovement : BOOL
END_FUNCTION

FUNCTION IsAnyObstaclePresent : BOOL
  VAR
    index : INT;
  END_VAR

  anyObstacleDetected := FALSE;
  FOR index := 0 TO highestFloor - 1 DO
    IF obstaclesBlockingDoors[index] OR obstacleElevator THEN
      anyObstacleDetected := TRUE;
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION HandleStopConditions : BOOL
  stopSignActivated := anyObstacleDetected OR elevatorButtonStopPressed;
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
  
  IsAnyObstaclePresent();
  HandleStopConditions();
  HandleButtons();
  elevatorDirectionIndicator := elevatorDirection + 1;
  //VisualizeQueue();
  (* configuration *)
  IF NOT configured THEN
    FOR index := 0 TO queueSize - 1 DO
      queue[index] := queueDefaultValue;
    END_FOR;
    elevatorDoorsOpened[0] := TRUE;
    
    configured := TRUE;
  END_IF;
  

END_PROGRAM

