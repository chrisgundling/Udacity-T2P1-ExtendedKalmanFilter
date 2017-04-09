# Extended Kalman Filter Project

By: Chris Gundling, chrisgundling@gmail.com

Self-Driving Car Engineer Nanodegree Program

---

## Dependencies

* cmake >= 3.5
 * All OSes: [click here for installation instructions](https://cmake.org/install/)
* make >= 4.1
  * Linux: make is installed by default on most Linux distros
  * Mac: [install Xcode command line tools to get make](https://developer.apple.com/xcode/features/)
  * Windows: [Click here for installation instructions](http://gnuwin32.sourceforge.net/packages/make.htm)
* gcc/g++ >= 5.4
  * Linux: gcc / g++ is installed by default on most Linux distros
  * Mac: same deal as make - [install Xcode command line tools]((https://developer.apple.com/xcode/features/)
  * Windows: recommend using [MinGW](http://www.mingw.org/)

## Basic Build Instructions

1. Clone this repo.
2. In the build directory compile: `cmake .. && make` 
3. Run it: `./ExtendedKF path/to/input.txt path/to/output.txt`. You can find
   some sample inputs in 'data/'.
    - eg. `./ExtendedKF ../data/sample-laser-radar-measurement-data-1.txt output.txt`

## Results
Two Laser and Radar datasets were provided for this project. The RSME and tracking path over the measurements is shown for both cases in the figures below. I created a Matlab script (`./output_images/PlottingTool.m`) to visualize the results. In general the predictions follow the ground truth closely, but there are a couple areas at the most non-linear sections of the figure eight path where the predictions deviate. 

### Dataset 1 - Path follows a figure eight
```
Accuracy - RMSE:
0.0652
0.0605
0.5332
0.5442
 ```
 
<img src="output_images/Data1.png" width="500">

### Dataset 2 - Path follows an S-curve
```
Accuracy - RMSE:
0.1855
0.1903
0.4765
0.8108
```

<img src="output_images/Data2.png" width="500">

## Simulation
A simulator was also provided and the final results from the simulator are shown in the figure below. Both Lidar (Kalman Filter) and Radar (Extended Kalman Filter) were used to track the vehicle through its path. 

<img src="output_images/SimulatorResults.png" width="500">
