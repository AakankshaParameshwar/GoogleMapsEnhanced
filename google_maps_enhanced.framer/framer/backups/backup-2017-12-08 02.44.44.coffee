
flow = new FlowComponent
	backgroundColor: "#FFF"

# Add the artboard with anchored header and footer
flow.showNext(Current_GMaps_result_page)


scroll_results = new ScrollComponent
	size: layerB.size
	scrollVertical:true
	scrollHorizontal: false
	y:results_scroll.y
results_scroll.parent = scroll_results.content
scroll_results.content.draggable.overdrag = false
scroll_results.contentInset =
	top:-180
	bottom: 50

scroll_results.states.On=
	opacity:1

scroll_results.states.Off=
	opacity:0



transit_scroll.onSwipeLeft (event, layer) ->
    transit_scroll.animate
        scale: 1.00
        x: -114
        options:
            time: 1.5
            curve: Bezier.ease
            
transit_scroll.onSwipeRight (event, layer) ->
    transit_scroll.animate
        scale: 1.00
        x: 0
        options:
            time: 1.5
            curve: Bezier.ease
            
bottom_bar_layer= new Layer
	x:60,y:590
	width:40,height:40


BB_option.onClick (event, layer) ->
	scroll_results.stateSwitch("Off")
	flow.showNext(route_instructions)

start_nav.onClick (event, layer) ->
    flow.showNext(route_instructions_2)
    
stop_nav.onClick (event, layer) ->
    flow.showNext(route_instructions)

bottom_bar_layer.onClick (event, layer) ->
	scroll_results.stateSwitch("On")
	flow.showNext(Current_GMaps_result_page)



route_instructions_2.onSwipeLeft (event, layer) ->
	flow.showNext(route_instructions_3)

route_instructions_2.onSwipeRight (event, layer) ->
	flow.showNext(route_instructions)
	
route_instructions_3.onSwipeLeft (event, layer) ->
	flow.showNext(route_instructions_4)

route_instructions_3.onSwipeRight (event, layer) ->
	flow.showNext(route_instructions_2)

route_instructions_4.onSwipeLeft (event, layer) ->
	flow.showNext(route_instructions_5)

route_instructions_4.onSwipeRight (event, layer) ->
	flow.showNext(route_instructions_3)

route_instructions_5.onSwipeLeft (event, layer) ->
	flow.showNext(route_instructions_6)

route_instructions_5.onSwipeRight (event, layer) ->
	flow.showNext(route_instructions_4)


route_instructions_6.onSwipeRight (event, layer) ->
	flow.showNext(route_instructions_5)
	


previous_pagev = ""

current_location_button.onClick (event, layer) ->
	flow.current
	flow.showNext(route_instructions_7)
current_location_close.onClick (event, layer) ->
	flow.showNext(route_instructions_5)











