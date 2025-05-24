Part 1: Getting Started

Launch MATLAB and open Simulink.
Create a new Simulink model.
Familiarize yourself with the Simulink interface.


Part 2: Building Your First Model


Drag and drop a "Sine Wave" block from the Simulink Library Browser.
Connect the "Sine Wave" block to a "Scope" block.
Configure the "Sine Wave" block to produce a 1 Hz sinusoidal signal.
Run the simulation and observe the output on the scope.

Part 3: Adding Logic

Drag and drop a "Relational Operator" block.
Connect the "Sine Wave" block to the first input of the "Relational Operator" block.
Set the second input of the "Relational Operator" block to a constant value, e.g., 0.
Connect the output of the "Relational Operator" block to the "Scope."

Part 4: Simulation and Analysis

Run the simulation.
Observe how the "Scope" display changes as the sine wave crosses the zero threshold.

Part 5: Adding a Controller

Drag and drop a "Step" block.
Connect the "Step" block to the "Scope."
Configure the "Step" block to generate a step input at time t=2 seconds.
Add a "Gain" block and connect it to the "Step" block's output.
Connect the "Gain" block to the second input of the "Relational Operator" block.

Part 6: Running the Final Simulation

Run the simulation.
Observe how the "Scope" display changes when the step input is applied.
