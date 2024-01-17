FUNCTION HandleDoors : BOOL
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

  IF NOT forceOpenDoors OR middleFloorStop THEN
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
  ELSIF NOT waitingForDoors AND NOT anyObstacleWasDetected THEN  
    firstFloorElevDoorsOpen := FALSE;
    secondFloorElevDoorsOpen := FALSE;
    thirdFloorElevDoorsOpen := FALSE;
    fourthFloorElevDoorsOpen := FALSE;
    fifthFloorElevDoorsOpen := FALSE;
  END_IF;
  
END_FUNCTION

