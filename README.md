# Multi-agent System for non-Holonomic Racing (MuSHR)

### TUNSA Space Robotics

**Technologies:** C++, Python, ROS, Linux, MuJoCo, Foxglove Studio, Git, PID, MPC, LiDAR, SLAM, State Estimation, Particle Filter, Multi-Agent System

## Introduction

The Multi-agent System for non-Holonomic Racing (MuSHR) project, developed by TUNSA Space Robotics, represents a significant endeavor in advancing autonomous navigation systems. Leveraging state-of-the-art technologies and methodologies, this project aims to optimize the performance and coordination of multiple MuSHR cars in non-holonomic racing scenarios.

## Project Scope

The project was conducted between August 28, 2022, and December 9, 2022, with a focus on enhancing MuSHR's autonomous navigation stack and optimizing multi-agent coordination. Led by Elyes Khechine, the project involved a dedicated team collaborating on various aspects of algorithm development, simulation refinement, and system integration.

## Key Features

- **Optimized Autonomous Navigation Stack**: Integration of a Model Predictive Controller (MPC), particle filtering for localization, and A* search algorithm for planning, resulting in enhanced navigation performance.
- **Multi-Agent Navigation Stack Fine-Tuning**: Fine-tuning of NH-TTC controller parameters to optimize lookahead distance, collision prediction time, and solution calculation time, leading to a 21% reduction in path deviation.
- **Efficient Multi-Agent Planning**: Implementation of ECBS-TA planning algorithm coupled with NH-TTC controller for planning collision-free trajectories to multiple goals, improving coordination and reducing conflicts by 17%.
- **Simulation Refinement**: Fine-tuning of MuJoCo simulation environment physics and friction parameters to improve robotic control realism.
- **Path Publisher Node Streamlining**: Simplification of trajectory execution through a streamlined path publisher Python node utilizing the Ackermann steering model.
- **Robust Localization Motion Model**: Development of a robust particle filtering-based localization motion model, ensuring precise control and consistent particle distribution within 10cm of noise-free predictions.
- **Enhanced Particle Filter**: Implementation of a low-variance resampler using interval-based sampling to systematically explore high-probability particles, ensuring comprehensive exploration and avoidance of particle loss.
- **LIDAR Sensor Modeling**: Development of a LIDAR sensor model with optimized runtime efficiency and accurate likelihood plots in simulations.

## Getting Started

### Installation

1. Ensure compatibility and proper setup of hardware components.
2. Install necessary software dependencies, including ROS, MuJoCo, and Git.
3. Configure system settings and ROS environment variables as per project requirements.

### Usage

1. Launch ROS nodes and sensor modules to initialize the navigation system.
2. Monitor real-time feedback from LiDAR and other sensors using visualization tools like Foxglove Studio.
3. Execute navigation tasks and observe the system's performance in various scenarios.

## Project Presentation

For a detailed overview of the project, including methodologies, findings, and outcomes, please refer to the [Project Presentation](https://drive.google.com/file/d/1zNSA5tu2qhhZTiPgyoUtxdtTc3heoCTL/view?usp=sharing).

## Project Report

Access the comprehensive project report via this [Project Report Link](https://drive.google.com/file/d/1zNSA5tu2qhhZTiPgyoUtxdtTc3heoCTL/view?usp=sharing).

# ROS Workspaces

The MuSHR programming projects we have done were provided by the [University of Washington's CSE478 course (Winter 2022)](https://courses.cs.washington.edu/courses/cse478/22wi/projects/)
These projects provided us with hands-on experience implementing the sense-plan-act paradigm of robotics. We used Python to interface with ROS, a popular robot programming framework that helps organize and integrate the components developed within each project.

This repository contains 2 main ROS workspaces:

# university_of_washington_cse_mushr

This ROS workspace was forked from [University of Washington's MuSHR project on GitLab](https://gitlab.cs.washington.edu/cse478/21sp/mushr478) and worked upon by a team from TUNSA Space Robotics. It includes all dependency packages.

# mushr_tutorials_ws
This is the ROS workspace where we applied all tutorials provided by the MuSHR platform to set up a working MuSHR vehicle. The tutorials can be found [here](https://mushr.io/tutorials/).

## Contributing

Contributions aimed at enhancing project functionalities and addressing emerging challenges are encouraged.

## License

This project is licensed under the [BSD-3-Clause license](LICENSE).

## Contacts

For inquiries or collaboration opportunities, please contact:

- Elyes Khechine: elyeskhechine@gmail.com
- Nesrine Abidi: nesrinabidi766@gmail.com
- Afef Salhi: salhiafefge@gmail.com
