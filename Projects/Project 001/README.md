Software Requirements Specification (SRS)
1. Introduction
This document outlines the requirements for a MATLAB project designed to
read voltage and current data from an Excel file, perform interpolation on the
data, generate an interactive plot, and save the results in a text file.
2. Purpose
The purpose of this project is to develop a MATLAB program that reads data
from an Excel file, performs interpolation on specified data ranges, and outputs
the results in both graphical and textual formats. This project is intended for
use in a laboratory experiment setting.
3. Scope
The scope of the project includes:
Reading data from an Excel file.
Performing interpolation on the data within a specified range.
Generating interactive plots of the interpolated data.
Saving the interpolated data to a text file.
4. Key Features
Data Reading: Read voltage and current data from an Excel file.
Data Interpolation: Interpolate the data within the range of -17.3 to 0.9 with
a step size of 0.1.
Interactive Plotting: Generate an interactive plot for the interpolated data.
Data Saving: Save the interpolated data to a text file.
5. Functional Requirements
FR1: The system shall read voltage and current data from an Excel file.
FR2: The system shall perform interpolation on the data in the range of -17.3
to 0.9 with a step size of 0.1.
FR3: The system shall generate an interactive plot for the interpolated data.
FR4: The system shall save the interpolated data to a text file.
FR5: The system shall identify and save any missing data points to a text
file.
6. Non-Functional Requirements
NFR1: The program shall be developed using MATLAB.
NFR2: The interactive plot shall be visually appealing and easy to interpret.
NFR3: The program shall be documented and include comments for clarity.
NFR4: The program shall handle errors gracefully, such as missing or
corrupted data in the Excel file.
7. Deliverables
D1: A MATLAB script that reads data from an Excel file and performs the
required interpolation.
D2: An interactive plot of the interpolated data.
D3: A text file containing the interpolated data.
D4: A text file listing any missing data points.
D5: Documentation of the program, including comments and instructions
for use.
8. Acceptance Criteria
The MATLAB program reads the data from the provided Excel file without
errors.
The program performs interpolation accurately within the specified range.
The generated plot is interactive and visually clear.
The interpolated data and any missing data points are saved correctly to
text files.
All deliverables are provided and meet the specified requirements.
