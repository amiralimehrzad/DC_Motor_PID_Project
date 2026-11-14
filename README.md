# DC Motor Modeling and PID Speed Control Using MATLAB

## Overview

This project focuses on the mathematical modeling, simulation, and speed control of a DC motor using MATLAB.

The main objective is to develop a mathematical model of a DC motor, analyze its open-loop behavior, and design a PID controller to improve its speed response and disturbance rejection performance.

The project demonstrates fundamental concepts of control systems engineering, including transfer function modeling, feedback control, PID controller design, and time-domain performance analysis.

## Objectives

- Derive the mathematical model of a DC motor.
- Obtain the transfer function relating armature voltage to angular velocity.
- Analyze the open-loop step response.
- Design a PID controller for speed regulation.
- Compare open-loop and closed-loop performance.
- Evaluate transient response characteristics.
- Investigate the effect of external load torque disturbances.

## System Modeling

The DC motor is described by its electrical and mechanical equations.

**Electrical equation:**

\[
V(t)=L\frac{di(t)}{dt}+Ri(t)+K_e\omega(t)
\]

**Mechanical equation:**

\[
J\frac{d\omega(t)}{dt}+b\omega(t)=K_ti(t)
\]

The resulting transfer function is:

\[
G(s)=\frac{\Omega(s)}{V(s)}
=\frac{K_t}{(Ls+R)(Js+b)+K_tK_e}
\]

## Motor Parameters

| Parameter | Symbol | Value | Unit |
|---|---|---:|---|
| Armature Resistance | R | 2 | Ω |
| Armature Inductance | L | 0.5 | H |
| Torque Constant | Kt | 0.1 | Nm/A |
| Back EMF Constant | Ke | 0.1 | Vs/rad |
| Moment of Inertia | J | 0.02 | kg.m² |
| Viscous Friction | b | 0.2 | Nm.s/rad |

*Note: These are illustrative parameters selected for simulation and educational purposes.*

## Methodology

1. Mathematical modeling of the DC motor.
2. Transfer function development using MATLAB.
3. Open-loop step response analysis.
4. PID controller design using MATLAB.
5. Closed-loop response analysis.
6. Open-loop and closed-loop performance comparison.
7. Load torque disturbance rejection analysis.

## Simulation Results

### 1. Open-Loop DC Motor Step Response

![Open-Loop DC Motor Step Response](images/Open-Loop%20DC%20Motor%20Step%20Response.png)

### 2. Closed-Loop Response with PID Controller

![Closed-Loop Response with PID Controller](images/Closed-Loop%20Response%20with%20PID%20Controller.png)

### 3. Comparison of Motor Responses

![Comparison of Motor Responses](images/Comparison%20of%20Motor%20Responses.png)

### 4. Response to Load Torque Disturbance

![Response to Load Torque Disturbance](images/Response%20to%20Load%20Torque%20Disturbance.png)
## Performance Evaluation

The controller is evaluated using the following performance indicators:

- Rise Time
- Settling Time
- Maximum Overshoot
- Steady-State Error
- Load Disturbance Rejection

## Repository Structure

```text
DC_Motor_PID_Project/
│
├── DC_Motor_PID_Project.m
├── Open-Loop DC Motor Step Response.png
├── Closed-Loop Response with PID Controller.png
├── Comparison of Motor Responses.png
├── Response to Load Torque Disturbance.png
├── README.md
└── LICENSE
```

## Requirements

- MATLAB
- Control System Toolbox

## How to Run

1. Clone or download this repository.
2. Open MATLAB.
3. Navigate to the project directory.
4. Run `DC_Motor_PID_Project.m`.
5. Review the generated plots and performance measurements.

## Tools and Technologies

- MATLAB
- Control System Toolbox
- Classical Control Theory
- PID Control
- Transfer Function Modeling
- Time-Domain Analysis

## Future Improvements

- Comparing P, PI, and PID controllers.
- Implementing a state-space representation.
- Designing an LQR controller.
- Investigating parameter variations and model uncertainty.
- Implementing voltage and current saturation.
- Developing a Simulink model of the DC motor.

## Author

**Amirali Mehrzad**

B.Sc. Electrical Engineering Student  
Iran University of Science and Technology (IUST)

## License

This project is licensed under the MIT License.
