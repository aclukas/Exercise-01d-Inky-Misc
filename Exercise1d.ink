/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> east_beach

== east_beach ==
You are on the east side of the beach. {&You hear waves softly crashing in the background.|You feel a light breeze through your hair.|You can smell the salt from the ocean.|The sand below your feet is soft.}

It's {advance_time()}.
+ {time==2} [Pick up a starfish] -> starfish
+ [Stroll further up the beach] -> far_east_beach
+ [Stroll down the beach] -> west_beach
-> DONE

== west_beach ==
You are on the west side of the beach. {&A couple seagulls fly by overhead.|The noise of the wind and water are calming.|You watch as the waves wash away your footprints.}

It's {advance_time()}.
+ { time == 1 } [Pick up some seashells]-> shells
+ [Stroll back up the beach] -> east_beach
+ [Stroll further down the beach] -> far_west_beach

== shells ==
You pick up the shells.
+ [Go Back] -> west_beach

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    

== starfish ==
You pick up a starfish.
+ [Go Back] -> east_beach

==driftwood==
You pick up a {&small|large|medium} piece of driftwood.
+[Go Back]->far_west_beach

==far_west_beach==
You are on the far west side of the beach. {&You hear waves softly crashing in the background.|You feel a light breeze through your hair.|You can smell the salt from the ocean.|The sand below your feet is soft.}

It's {advance_time()}.
+ {time==0}[Pick up driftwood]->driftwood
+ [Stroll back up the beach] -> west_beach

==far_east_beach==
You are on the far east side of the beach. {&A couple seagulls fly by overhead.|The noise of the wind and water are calming.|You watch as the waves wash away your footprints.}

It's {advance_time()}.
+ {time==2}[Pick up beach glass]->beach_glass
+ [Stroll back down the beach]->east_beach

==beach_glass==
You pick up a {&green|red|brown|pink|blue} piece of beach glass.
+[Go Back]-> far_east_beach