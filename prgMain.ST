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
      EXIT;//index := 1000; // break
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION EnqueueUpperFloor : BOOL
  VAR_INPUT
    floorToEnqueue : INT;
  END_VAR
  VAR
    index : INT;
  END_VAR

  FOR index := 0 TO queueSize - 1 DO
    IF queueUpperFloors[index] = queueDefaultValue THEN
      queueUpperFloors[index] := floorToEnqueue;
      EXIT;
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION EnqueueLowerFloor : BOOL
  VAR_INPUT
    floorToEnqueue : INT;
  END_VAR
  VAR
    index : INT;
  END_VAR

  FOR index := 0 TO queueSize - 1 DO
    IF queueLowerFloors[index] = queueDefaultValue THEN
      queueLowerFloors[index] := floorToEnqueue;
      EXIT;
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION EmptyUpperAndLowerQueue : BOOL
  VAR
    index : INT;
  END_VAR
  FOR index := 0 TO queueSize - 1 DO
    queueUpperFloors[index] := queueDefaultValue;
    queueLowerFloors[index] := queueDefaultValue;
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

(* not used *)

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

  IsFloorAlreadyEnqueued := FALSE;
  FOR index := 0 TO queueSize - 1 DO
    IF queue[index] = floor THEN
      IsFloorAlreadyEnqueued := TRUE;
      EXIT;
    END_IF;
  END_FOR; 
END_FUNCTION

FUNCTION IsQueueEmpty : BOOL
  VAR
    index : INT;
    empty : BOOL := TRUE;
  END_VAR
  FOR index := 0 TO queueSize - 1 DO
    IF NOT queue[index] = queueDefaultValue THEN
      empty := FALSE;
      index := 1000;
    END_IF; 
  END_FOR;
  IsQueueEmpty := empty;
END_FUNCTION

FUNCTION BubbleSortQueueLower : BOOL
  VAR
    i : INT;
    j : INT;
    itemLeft : INT;
    itemRight : INT;
    temp : INT;
  END_VAR
  FOR i := 0 TO queueSize - 2 DO
    FOR j := 0 TO queueSize - 2 DO
      itemLeft := queueLowerFloors[j];
      itemRight := queueLowerFloors[j + 1];
      IF itemLeft < itemRight THEN
        temp := queueLowerFloors[j];
        queueLowerFloors[j] := queueLowerFloors[j + 1];
        queueLowerFloors[j + 1] := temp;
      END_IF;
    END_FOR;
  END_FOR;
END_FUNCTION

FUNCTION BubbleSortQueueUpper : BOOL
  VAR
    i : INT;
    j : INT;
    itemLeft : INT;
    itemRight : INT;
    temp : INT;
  END_VAR
  FOR i := 0 TO queueSize - 2 DO
    FOR j := 0 TO queueSize - 2 DO
      itemLeft := queueUpperFloors[j];
      itemRight := queueUpperFloors[j + 1];
      IF itemLeft < itemRight THEN
        temp := queueUpperFloors[j];
        queueUpperFloors[j] := queueUpperFloors[j + 1];
        queueUpperFloors[j + 1] := temp;
      END_IF;
    END_FOR;
  END_FOR;
END_FUNCTION

FUNCTION BubbleSortQueue : BOOL
  VAR
    i : INT;
    j : INT;
    itemLeft : INT;
    itemRight : INT;
    temp : INT;
  END_VAR
  FOR i := 0 TO queueSize - 2 DO
    FOR j := 0 TO queueSize - 2 DO
      itemLeft := queue[j];
      itemRight := queue[j + 1];
      IF itemLeft < itemRight THEN
        temp := queue[j];
        queue[j] := queue[j + 1];
        queue[j + 1] := temp;
      END_IF;
    END_FOR;
  END_FOR;
END_FUNCTION

FUNCTION ElevatorSortQueue : BOOL
  VAR
    index : INT;
    item : INT;
    index2 : INT;
    changes : INT := 0;
  END_VAR
  FOR index := 0 TO queueSize - 1 DO
    item := queue[index];
    IF item > elevatorFloorStart THEN
      EnqueueUpperFloor(item);
    ELSIF item < elevatorFloorStart THEN
      EnqueueLowerFloor(item);
    END_IF;
  END_FOR;

  IF sortLowerFloors THEN BubbleSortQueueLower(); END_IF;
  IF sortUpperFloors THEN BubbleSortQueueUpper(); END_IF;

  FOR index := 0 TO queueSize - 1 DO
    item := queueLowerFloors[index];
    IF NOT item = queueDefaultValue THEN
      queue[index] := item;
      changes := changes + 1;
    ELSE      
      EXIT;
    END_IF;
  END_FOR;

  FOR index2 := 0 TO queueSize - 1 DO
    item := queueUpperFloors[index2];
    IF NOT item = queueDefaultValue THEN
      queue[index2 + changes] := item;
    ELSE
      EXIT;
    END_IF;
  END_FOR;
  EmptyUpperAndLowerQueue();
END_FUNCTION

(* End of queue code *)

FUNCTION IsAnyDoorOpened : BOOL
  VAR
    index: INT;
  END_VAR
  IsAnyDoorOpened := FALSE;
  FOR index := 0 TO highestFloor - 1 DO
    IF elevatorDoorsOpened[index] THEN
      IsAnyDoorOpened := TRUE;
      EXIT;
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION CloseAllDoors : BOOL
  VAR
    index : INT;
  END_VAR
  FOR index := 0 TO highestFloor - 1 DO
    elevatorDoorsOpened[index] := FALSE;
  END_FOR;
END_FUNCTION

FUNCTION CloseAllDoorsExceptForArg : BOOL
  VAR
    index : INT;
  END_VAR
  VAR_INPUT
    floorDoorToOpen : INT;
  END_VAR
  FOR index := 0 TO highestFloor - 1 DO
    IF index = floorDoorToOpen THEN
      elevatorDoorsOpened[index] := TRUE;
    ELSE
      elevatorDoorsOpened[index] := FALSE;
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION HandleDoors : BOOL
  IF forceOpenCurrentElevatorFloorDoor OR stopSignActivated THEN
    elevatorDoorsOpened[elevatorFloor] := TRUE;
  ELSIF elevatorDirection = 0 THEN
    // open doors of the floor the elevator is at
    CloseAllDoorsExceptForArg(elevatorFloor);
  ELSE
    CloseAllDoors();
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
    EnqueueFloor(targetFloor);
    floorSetAsElevStop[targetFloor] := TRUE;
    pressedButtonsQueueDebug := pressedButtonsQueueDebug + INT_TO_STRING(targetFloor);
  ELSE
    elevatorDirectionIndicator := 1;
  END_IF;
  
  ResetAllButtons();
END_FUNCTION

FUNCTION HandleButtons : BOOL
  VAR
    index : INT;
  END_VAR

  FOR index := 0 TO highestFloor - 1 DO
    IF elevatorButtonsPressed[index] THEN
      targetFloor := index;
      HandleFloorSelection();
    END_IF;
  END_FOR;
END_FUNCTION

FUNCTION HandleMovement : BOOL  
  IF NOT stopSignActivated THEN
    IF NOT queue[0] = elevatorFloor THEN
      IF elevatorDirection = -1 THEN
        elevatorFloor := elevatorFloor - 1;
      ELSIF elevatorDirection = 1 THEN
        elevatorFloor := elevatorFloor + 1;
      END_IF;
      HandleMovement := FALSE;
    ELSE 
      floorSetAsElevStop[elevatorFloor] := FALSE;
      queue[0] := queueDefaultValue;
      ShiftQueueLeft();
      elevatorDirection := 0;
      HandleMovement := TRUE; // floor stop
    END_IF;
  ELSE
    // obstacle detected, wait for doors
    HandleMovement := TRUE;
  END_IF; 
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
  stopSignActivated := 
    anyObstacleDetected 
    OR elevatorButtonStopPressed
    OR elevatorWeight > elevatorMaximumWeight;
END_FUNCTION

PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    index : INT; 
    queuedFloor : INT;
    floorDifference : INT;
  END_VAR
  VAR_TEMP
  END_VAR
  
  (* configuration *)
  IF NOT configured THEN
    FOR index := 0 TO queueSize - 1 DO
      queue[index] := queueDefaultValue;
      queueLowerFloors[index] := queueDefaultValue;
      queueUpperFloors[index] := queueDefaultValue;
    END_FOR;
    elevatorDoorsOpened[elevatorFloor] := TRUE;
    configured := TRUE;
  END_IF;

  IsAnyObstaclePresent();
  HandleStopConditions();
  HandleButtons();
  IF NOT IsQueueEmpty() THEN
    // store movement start floor - for queue sorting (option 2)
    IF elevatorDirection = 0 THEN
      elevatorFloorStart := elevatorFloor;
    END_IF;

    IF selectedSortOption = 1 THEN BubbleSortQueue();
    ELSIF selectedSortOption = 2 THEN ElevatorSortQueue();
    END_IF;
    queuedFloor := queue[0];
    floorDifference := elevatorFloor - queuedFloor;
    IF floorDifference > 0 THEN
      elevatorDirection := -1;
    ELSE
      elevatorDirection := 1;
    END_IF;
  END_IF;
  VisualizeQueue();
  HandleDoors();
  elevatorDirectionIndicator := elevatorDirection + 1;

          anyDoorOpened := IsAnyDoorOpened();
  CASE switchCase OF
    0: 
      timeDelayed := timePLC + waitTime;
      switchCase := 1;
      waitTime := floorTravelTime;
    1:
      IF timeDelayed = timePLC THEN
        IF NOT elevatorDirection = 0 THEN
          IF NOT anyDoorOpened THEN
            // floor stop
            IF HandleMovement() THEN
              // at floor queue[0] (first desired)
              waitTime := doorsOpenTime;
              forceOpenCurrentElevatorFloorDoor := TRUE;
            ELSE
              forceOpenCurrentElevatorFloorDoor := FALSE;
            END_IF;
            switchCase := 0;
          ELSE
            forceOpenCurrentElevatorFloorDoor := TRUE;
            timeDelayed := timePLC + floorTravelTime;//
            switchCase := 2;
          END_IF;
        ELSE
          switchCase := 0;
        END_IF;
      END_IF;
    2:
      IF timeDelayed = timePLC THEN
        forceOpenCurrentElevatorFloorDoor := FALSE;
        switchCase := 3;
        timeDelayed := timePLC + floorTravelTime;
      END_IF;
    3:
      IF timeDelayed = timePLC THEN
        switchCase := 0;
      END_IF;
  END_CASE;
END_PROGRAM

