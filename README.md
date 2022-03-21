# SaccadeAnalysisMatlabApp
A scientific tool with an effective and simple graphical user interface realized with Matlab App Designer to upload raw gaze data and create saccade reports

Preview screenshot:
![Test Image 1](Screenshot.png)

# Data format
The M-App currently support the analysis of eye-tracking data from Eye-link devices extracted as a .txt sample report with the following columns
- AVERAGE_GAZE_X	
- AVERAGE_GAZE_Y	
- AVERAGE_PUPIL_SIZE	
- TIMESTAMP	
- TARGET_X_TARG1	
- TARGET_Y_TARG1

Where AVERAGE_GAZE_X and AVERAGE_GAZE_Y indicate the gaze position on the screen, while TARGET_X_TARG1 and TARGET_Y_TARG1 indicate the position of the visual stimulus (target) of the visually guided task. 

Please notice I: If you are formatting data from a different Eye-tracking system make sure that (i) column headings exactly the same and (ii) all values are tab-separated in the .txt file.

Please notice II: Some experimental setup (user/screen distances, screen size, ...) are hard cabled in the software. Please verify your experimental setup is aligned with our standard values.

# Usage
The M-App is intended to be used to let a human expert evaluate each segmented saccade and eventually discard wrong segmentations. First, upload the eye-tracking data throug the given form, on the up-right corner. A saccade can be selected and visualized my clicking on the corresponding row on the left-hand side table. To remove it from the list, click the button underneath "remove saccade". Options below allow for thresholding criterions. Once all saccades are checked individually, the human expert can save the resulting report.

# Citation
If you use this software, please cite


@misc{Zanca2020,

  author = {Zanca, Dario and Serchi, Valeria},
  
  title = {Saccade Analysis Matlab App},
  
  year = {2020},
  
  publisher = {GitHub},
  
  journal = {GitHub repository},
  
  howpublished = {\url{https://github.com/dariozanca/SaccadeAnalysisMatlabApp}}
  
}
