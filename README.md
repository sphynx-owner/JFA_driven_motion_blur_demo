# JFA_driven_motion_blur_demo
An interactive environment for showcasing, testing, and benchmarking my implementation of a per-object motion blur.

This utilizes the Jump Flood Algorithm for a velocity dilation pass prior to blurring for high quality, high range, and high detail motion blur effect,
with the efficiency of O(log(n)).

An overview video can be found here:
https://youtu.be/m_KvYlYF3sA

A paper I wrote on the matter can be found here:
[Using the Jump Flood Algorithm to Dilate Velocity Maps in the application of Believable High Range High Fidelity Motion Blur 7_7_24 (2) - Google Docs.pdf](https://github.com/user-attachments/files/16118920/Using.the.Jump.Flood.Algorithm.to.Dilate.Velocity.Maps.in.the.application.of.Believable.High.Range.High.Fidelity.Motion.Blur.7_7_24.2.-.Google.Docs.pdf)

An addon version can be found here:
[https://github.com/sphynx-owner/JFA_driven_motion_blur_addon/tree/master](https://github.com/sphynx-owner/JFA_driven_motion_blur_addon)

# Instructions
1. take the contenst of the "addons" folder and move them to an addons folder in your project. 
2. add an environment node, add a compositor effect to it
3. to that, add a new PreBlurProcessor effect, which is now required, and after it add a new GuertinMotionBlur, SphynxSimpleJumpFloodMotionBlur, or ExperimentalJumpFloodMotionBlur
4. for debugging, add a "C","Z", and "freeze" input events, and then a DebugCompositorEffect to the compositor effects. Then, all you have to do is toggle "Debug" to true on whichever effect you want to show debug for

* GuretinMotionBlur - An all around best blur effect, robust, performant, and now also realistic.
* SphynxSimpleJumpFloodMotionBlur - An effect driven by a novel dilation method using the jump flood algorithm, used in research of realistic blending schemes and focused on being a retrospective blur approach.
* ExperimentalJumpFloodMotionBlur - An effect driven by a novel dilation method using the jump flood algorithm, uses an added feature to heuristically fake transparency of leading edge of the blur using the past color output.

instructions for radial blur meshes can be seen here:
https://youtu.be/eslsw9do4Kc

WARNING:
if you want transparent objects to render on top of the blurred background, you can move the pre-blur-processing and blur post process effects both to callback type of pre-transparent, At which point it would not work if you have MSAA enabled, so make sure to also turn that off.

# Bistro-Demo-Tweaked
Bistro demo for [Godot](https://github.com/godotengine/godot) showcasing lighting and high quality assets.

https://github.com/Jamsers/Bistro-Demo-Tweaked/assets/39361911/67493ad0-d19c-40ab-ad07-4014dbd654a5

Includes [Godot-Human-For-Scale](https://github.com/Jamsers/Godot-Human-For-Scale) to run around the level, and an interface for changing the time of day, resolution scaling, and quality scaling. Appropriate objects in the level are set to dynamic and are physics enabled, to see the effects of lighting on dynamic objects as well.

## Usage
1. Clone or download the Github repository.
2. Download [Godot 4.x](https://godotengine.org/download/) and open the repository folder with Godot.
3. Run the project. (Play button on the upper right corner of Godot's interface)

## Releases
Windows: [Bistro-Demo-Tweaked-Windows.zip](https://github.com/Jamsers/Bistro-Demo-Tweaked/releases/download/v1.1/Bistro-Demo-Tweaked-Windows.zip)  
Mac: [Bistro-Demo-Tweaked-Mac.zip](https://github.com/Jamsers/Bistro-Demo-Tweaked/releases/download/v1.1/Bistro-Demo-Tweaked-Mac.zip)  
Linux: [Bistro-Demo-Tweaked-Linux.zip](https://github.com/Jamsers/Bistro-Demo-Tweaked/releases/download/v1.1/Bistro-Demo-Tweaked-Linux.zip)

To get past the "Apple cannot check it for malicious software" warning on Mac, follow the instructions [here](https://support.apple.com/guide/mac-help/mchleab3a043).

## Controls
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

## Extra Options
Use the Light Change Utility node to change lighting scenarios in editor.  
Includes a profiler to see performance details. [RAM counter not available in release builds](https://docs.godotengine.org/en/stable/classes/class_performance.html#enumerations).  
You can turn music on or off in editor.

![lightchangeutility](https://github.com/Jamsers/Bistro-Demo-Tweaked/assets/39361911/09c0a406-e942-467e-8ecc-fb2eafc55f4e)

![ui](https://github.com/Jamsers/Bistro-Demo-Tweaked/assets/39361911/6d39b553-558b-4a63-8551-5e76681a9e90)

## Credits
Ported from [Amazon Lumberyard Bistro](https://developer.nvidia.com/orca/amazon-lumberyard-bistro).  
Original porting work done by [Logan Preshaw](https://github.com/WickedInsignia), original port can be found [here](https://github.com/godotengine/godot/issues/74965).  
Uses Creative Commons sounds, attributions are [here](https://github.com/Jamsers/Bistro-Demo-Tweaked/blob/main/Audio/ATTRIBUTION).
