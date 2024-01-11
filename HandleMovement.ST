FUNCTION HandleMovement : BOOL
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

  IF waitingForDoors THEN
    // do nothing or light something up idk
  ELSE
    IF elevatorDirection = -1 THEN
      elevatorFloor := elevatorFloor - 1;
      floorDifference := floorDifference - 1;
      //IF elevatorFloor = 1 OR floorDifference = 0 THEN 
      IF floorDifference = 0 THEN 
        elevatorDirection := 0;
        //ResetAllButtons();
  ///----------------------------------------
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
  inputLocked := FALSE;
  targetFloor := targetFloorDefaultValue;
  ///----------------------------------------
      END_IF;
    ELSIF elevatorDirection = 1 THEN
      elevatorFloor := elevatorFloor + 1;
      floorDifference := floorDifference - 1;
      //IF elevatorFloor = highestFloor OR floorDifference = 0 THEN 
      IF floorDifference = 0 THEN 
        elevatorDirection := 0;
        //ResetAllButtons();
///----------------------------------------
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
  inputLocked := FALSE;   
  targetFloor := targetFloorDefaultValue;

  ///----------------------------------------
        END_IF;
    ELSIF floorDifference = 0 THEN
      elevatorDirection := 0;

    END_IF;
    
  END_IF;
  
  
  
  

END_FUNCTION


