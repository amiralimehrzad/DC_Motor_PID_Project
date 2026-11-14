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

The project is divided into the following stages:

1. **Mathematical Modeling:** Deriving the electrical and mechanical equations of the DC motor.
2. **Transfer Function Development:** Constructing the motor transfer function using MATLAB.
3. **Open-Loop Analysis:** Evaluating the motor's natural response without feedback control.
4. **PID Controller Design:** Designing a PID controller using MATLAB's PID tuning functionality.
5. **Closed-Loop Analysis:** Evaluating the controlled motor response.
6. **Performance Comparison:** Comparing open-loop and closed-loop responses.
7. **Disturbance Rejection:** Investigating the effect of external load torque on motor speed.

## Performance Evaluation

The following performance indicators are used to evaluate the controller:

- Rise Time
- Settling Time
- Maximum Overshoot
- Steady-State Error
- Load Disturbance Rejection

## Repository Structure

```text
DC-Motor-PID-Control/
│
├── MATLAB/
│   └── DC_Motor_PID_Project.m
│
├── Results/
│   ├── Open_Loop.png
│   ├── Closed_Loop.png
│   ├── Comparison.png
│   └── Disturbance.png
│
├── Documentation/
│   └── Mathematical_Model.pdf
│
├── README.md
└── LICENSE
```

## Requirements

- MATLAB
- Control System Toolbox

## How to Run

1. Clone or download this repository.
2. Open MATLAB.
3. Navigate to the `MATLAB` directory.
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

Possible extensions of this project include:

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
