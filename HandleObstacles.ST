FUNCTION HandleObstacles : BOOL
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

  anyObstacleDetected := obstacleElevator OR 
  obstacleElevatorFirstFloor OR
  obstacleElevatorSecondFloor OR 
  obstacleElevatorThirdFloor OR 
  obstacleElevatorFourthFloor OR
  obstacleElevatorFifthFloor;

END_FUNCTION

