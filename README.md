# NutriScoreLogo

This repository defines a class for a view, which shows the NutriScore logo. The class offers an instance variable, which sets the nutrition score.

The logo is scalable and adheres to autolayout.

## Example

![iPhone 5S demo](https://github.com/aleene/NutriScoreLogo/blob/master/DemoIPhone5S.png)

## Demo

The repository contains a demo app, which shows you how the logo looks like in three different sizes. And you can set score for each of the five possible scores.

## Usage

Copy the files NutriScore.xib and NutriScoreView.swift into your project.

Add a view to where you want to place the nutri-score. Set the view aspect ratio to 310:126. You can then size to what you want.

In the identity inspector set the Custom Class to NutriScoreView.

You can set the selected score by setting the instance variable currentScore = .A / .B / .C / .D / .E

## Design considerations

##### Sizes

The current layout of the logo has been derived from an image found on the web and has the following characteristics:

- Level size: 78 x 126
- Score size: 58 x 194

#### Colours used

- 006633 (dark green) with 339966 for letter A
- 669900 (light green) with 99CC66 for letter B
- FFCC00 (yellow) with FFFF66 for letter C
- CC6600 (orange) with CC9966 for letter D
- CC0000 (red) with FF9966 for letter E
