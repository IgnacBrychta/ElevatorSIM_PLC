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

PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR
  
  HandleObstacles();
  HandleButtonPress();
  HandleDoors();
  stopSignActivated := elevatorButtonStopPressed OR
    elevatorWeight > elevatorMaximumWeight OR
    anyObstacleDetected;
  
  elevatorWeight := ABS(elevatorWeight);
  
  forceOpenDoors := 
    NOT elevatorButtonStopPressed AND
    elevatorWeight <= elevatorMaximumWeight AND 
    NOT anyObstacleDetected;

  CASE switchCase OF
    0: // timer
      timeDelayed := timePLC + elevatorFloorTravelTime;
      switchCase := 1;
    1: // elevator handler
      IF timeDelayed = timePLC THEN
         IF waitingForDoors THEN
            timeDelayed := timePLC + elevatorFloorDoorsOpenTime;
            switchCase := 2;
          ELSE
            IF forceOpenDoors THEN
              IF anyObstacleWasDetected THEN
                switchCase := 2;
                timeDelayed := timePLC + elevatorFloorDoorsOpenTime;
                waitingForDoors := TRUE;
              ELSE
                HandleMovement();
                switchCase := 0;
              END_IF;
            ELSE
              anyObstacleWasDetected := anyObstacleDetected;
              switchCase := 0;
            END_IF;
          END_IF;
        
      END_IF;
 
    2:
      IF timeDelayed = timePLC THEN
        waitingForDoors := FALSE;
        switchCase := 1;
        anyObstacleWasDetected := FALSE;
      END_IF;
  END_CASE;
  
END_PROGRAM

