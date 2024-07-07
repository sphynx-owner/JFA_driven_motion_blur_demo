# JFA_driven_motion_blur_demo
An interactive environment for showcasing, testing, and benchmarking my implementation of a per-object motion blur.

This utilizes the Jump Flood Algorithm for a velocity dilation pass prior to blurring for high quality, high range, and high detail motion blur effect,
with the efficiency of O(log(n)).

An overview video can be found here:
https://youtu.be/m_KvYlYF3sA

A paper i wrote on the matter can be found here:
[Using the Jump Flood Algorithm to Dilate Velocity Maps in the application of Believable High Range High Fidelity Motion Blur 7_7_24 (2) - Google Docs.pdf](https://github.com/user-attachments/files/16118920/Using.the.Jump.Flood.Algorithm.to.Dilate.Velocity.Maps.in.the.application.of.Believable.High.Range.High.Fidelity.Motion.Blur.7_7_24.2.-.Google.Docs.pdf)

## Usage as addon
1. Clone or download the Github repository.
2. Copy the `/addons/JFA_driven_motion_blur` folder from the repository into your project.
3. Add a Compositor to your WorldEnvironment.
4. Add a New MotionBlurSphynxJumpFlood to your Compositor Effects.

## Demo Controls
- **ESCAPE** to capture/uncapture mouse  
  **H** to hide/unhide control panel UI

- **W-A-S-D** to move  
  **SHIFT** to sprint  
  **SPACE** to jump  
  **TILDE(~)** to noclip  

- **V** to switch third person/first person  
  **RIGHT CLICK** to zoom/focus

## *.res Files Reimported
When opening the project for the first time, you may notice hundreds of *.res files get modified in your source control. This is a quirk of the Godot importer and these changes can be safely discarded once project has already been opened once.