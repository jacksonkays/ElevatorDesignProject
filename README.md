###Links
[Presentation Page] (https://jacksonkays.github.io/p1.jackson.kays/)
[Github Repository] (https://github.com/jacksonkays/p1.jackson.kays)
Processing Demo Link goes here
[Original Elevator Usage Video] (https://youtube.com/shorts/XkLqHPTbEM0?feature=share)

 ---
 
 ###Original Elevator Analysis
 #Elevator: Oliphant Hall, Tulsa University
 Overall, this elevator's design is standard and traditional for most modern elevators, however there are a few issues
 to its' operation. Firstly, as shown in the elevator usage video, the visual screen's indicator is not informing the user of its' movement
 between floors. While the button is lit to indicate it recognizes the user's choice of floor, the visual screen does not confirm to the user the descending 
 or ascending of the elevator. Secondly, for other floors such as the third floor, the selection indicator lights which confirms the user their selection was noted are not working, leaving users unsure if the elevator will move to the desired floor.
 
 ![IMG_5834](https://user-images.githubusercontent.com/55301666/192920508-00dfd798-2527-4714-a6b2-a30346547caa.jpg)
 
 Beyond faulty indicators, another issue with the current design is the displacement of the emergency buttons, and their location near other common usage buttons. As seen in the photos and video, the buttons allowing for trapped users in the elevator to signal an alarm, or call a technician for help, are located very close to the often-used "hold doors open" and "close doors" buttons. This could cause misinputs by users who might misclick one of the emergency buttons when just trying to operate the doors for the elevator. Additionally, some of the emergency buttons are also located above the floor selection panel, which could cause confusion for users who would be novices if put under an emergency in the elevator. 
 
 Overall, the design is mostly good, however there are areas for improvement stated above that I will improve on in my design. 
 
 ---
 
 ###Elevator Use Case Analysis and Suggested Improvements
 For most elevator users, they primarily use the following functions:
 - Selecting a floor to travel to
 - Closing the doors to begin ascending/descending quicker
 - Opening or holding the doors open to allow additional passengers in the elevator
 
 Rarer use cases for an elevator primarily revolve around emergency situations:
 - Setting off the elevator alarm to let bystanders know of an emergency
 - Using the Call Button to inform a technician of an emergency and to get help
 - Using a Cancel button to cancel any outgoing calls or alarms due to a misclick or false alarm
 
 Because of this break in use cases, it's important that both:
 - Higher use cases are promoted and more accessible to the user
 - Rarer cases are removed from high use-case areas if possible, to prevent accidental clicks
 
 In regards to Oliphant Hall's Elevator, the common mistakes regarding the emergency operations are:
 - Not knowing which set of buttons to press to call for help, the top or bottom set
 - Accidentally clicking an emergency button when aiming for a door operation button
 
 ![elevatorControlPanel](https://user-images.githubusercontent.com/55301666/192921648-97e0b8af-afa8-4358-b7c5-1613ef0c42d8.png)
 
 In the case of the emergency operations being the lower use case area, it's especially important to prevent any error in misclicking these buttons, which could mobilize emergency services for a false alarm. This makes it also important to include a 'Cancel' button for this panel of buttons, in order to allow for easy reversal of action to handle the error from the user. On the other hand, while the emergency operations are not used as often, it's important for their usage to be easily perceivable, since users who typically use elevators are most likely novices when it comes to handling an emergency within an elevator, and under a lot of stress, will need a simple layout of operations. 
 
 In my design, the emergency panel of operations are clearly labeled with a large 'EMERGENCY' label, with actions to set off an emergency alarm, call a technician, or cancel these actions in the event of a false alarm. These buttons are prevalent and easily identifiable on the control panel, however they are smaller buttons and are situated away from the typical use-case buttons, such as floor selection and door operation buttons, to prevent any misclicks. Additionally, the closest 'emergency' button to the main control panel is the 'cancel' button, which will have no effect to the elevator's operation if accidentally clicked, since there would be no currently ongoing emergency alarm or call. 
 
 ###Elevator Indication, Affordances and Feedback 
 The original elevator design in Oliphant Hall provides certain affordances expected in almost any elevator:
 - Selecting a floor button will take you to that floor, and buttons laid out in relation to building's floor layout
 - Floor selection is the primary operation, as the elevator will not have usage beyond those buttons 
 - Icons for 'doors open' and 'doors closed' are straight-forward as how they apply to door operation
 
 In this case, there was not much room for improvement, and I made sure to keep the floor selection button layout consistent with the old design, as I believed it was the most clear to users trying to reach certain floors. I slightly improved the 'doors open' and 'doors close' icons in relation to this elevator, by using two vertical lines in the icons as opposed to one vertical line to more clearly represent the opening and closing of the two sides of the door when operated. In addition, I moved the positioning of the door operation buttons closer to the floor selection buttons, as their high usage made sense to group the two groups of buttons together. 
 
 One of the major issues in this particular elevator was its' lack of indication, confirmation and informational feedback to the user while in operation about what floor was selected, what the current floor is, if the elevator was moving, and when the elevator had arrived. In its' highest capacity, Oliphant Hall's elevator was only able to indicate that a floor was selcted, and sometimes those indicators were faulty. 
 
Common mistakes that could be made in Oliphant Hall's Elevator in regards to indication and feedback:
- Not knowing if the elevator is moving or not, and what direction it is moving
- Not knowing if the floor you selected was accounted for by the elevator system 
 
 I made indication and feedback a priority in my design, providing up to three indications for the current operation of the elevator back to the user. For each operation button on the control panel, if the button is selected, it lights up, confirming back to the user know their input was recorded. In addition, for the door operation and emergency buttons, there is an indication of 'Doors Opening...', 'Doors Closing...", and 'EMERGENCY' clearly visible on an incorporated 7" by 10" display to the user when they press the button to confirm their input. Finally, if the elevator is not currently moving, the display will show the current floor number in large font, as well as an indicator of the floor's position within the building to the user. This will help users better orientate themselves within the building, and allow them determine the appropriate floor choice. When a floor is selected, the floor number becomes either an up or down arrow indicating the motion of the elevator, along with the current floor indicator traversing up or down the building's floors, giving the user confirmation on the elevator's motion as well as informational feedback on the time to reach the floor they selected. 
 
 ###Accessibility
 Within my design, I made sure to include features and design choices that will help enhance usage of the elevator for users of all abilities. For each floor selection, there is an equivalent Braille translation of the floor number for those that are blind understand which floor they are selecting. In addition, my color choices for the display are accessible, as they allow a strong contrast for those with vision impairments or certain color blindness to discern clearly what is being conveyed on the display. 
 
 ###Design Sketch
 ![designSketch](https://user-images.githubusercontent.com/55301666/192920324-ab27bb1b-856a-4c50-8c27-451c55ceca63.jpg)
