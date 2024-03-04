# Elevator Control System
![WebMaker Screenshot](https://i.imgur.com/WaJWguh.png)
The program orchestrates the operation of an elevator, managing various aspects such as floor selection, door control, obstacle detection, and stop conditions.

1. **Initialization:**
   - The program initializes the elevator system, setting up the initial state of the queues, door states, and other relevant variables.

2. **Obstacle Detection:**
   - The system checks for the presence of obstacles on each floor that might obstruct the elevator's doors or path.

3. **Handling Stop Conditions:**
   - The program determines stop conditions, including the detection of obstacles, pressing the stop button, or reaching the maximum weight limit. If any of these conditions are met, the elevator stops its normal operation.

4. **Button Handling:**
   - The system monitors and handles floor selection buttons pressed by users. It resets buttons after processing the selection and updates the elevator's internal queue.

5. **Queue Sorting:**
   - Depending on the selected sorting option (e.g., bubble sort or a custom elevator sort), the program organizes the queue of selected floors for efficient elevator movement.

6. **Handling Doors:**
   - The program manages the opening and closing of elevator doors based on various conditions. It considers situations such as force-opening doors on the current floor, opening doors for a specific floor, or keeping doors closed during movement.

7. **Elevator Movement:**
   - The system handles the actual movement of the elevator. It calculates the direction and distance to the next floor in the queue and adjusts the elevator's position accordingly.

8. **Floor Stops:**
   - The elevator system stops at each floor in the queue, allowing passengers to enter or exit. It updates the queue after each stop.

9. **State Handling:**
   - The program manages the state of the elevator, including its direction, current floor, and door status.

10. **Continuous Operation:**
    - The program operates in a continuous loop, repeatedly checking for inputs, updating the elevator's internal state, and responding to various events.

The overall goal of the program is to provide a reliable and efficient control system for an elevator, ensuring safe and smooth operation while considering user inputs, obstacles, and other relevant conditions.
