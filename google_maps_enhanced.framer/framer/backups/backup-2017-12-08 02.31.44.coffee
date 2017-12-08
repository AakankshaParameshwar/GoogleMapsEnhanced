
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

route_instructions_2.onClick (event, layer) ->
	flow.showNext(route_instructions_3)
	

		
	

  




            
###layerA = new Layer
	size:Screen.size
	
layerA.states.optionsOff =
	backgroundColor: "#fff"
	opacity:0
	
layerA.states.optionsOn =
	backgroundColor: "#000"
	opacity:0.6
	
options.states.On =
	opacity: 1.00
	
options.states.Off =
	opacity: 0.00
	
options.stateSwitch("Off")
layerA.stateSwitch("optionsOff")

scroll = new ScrollComponent
	width:options.width
	height:options.height
	y: options.y
	scrollHorizontal: false
	scrollVertical: true
	
options.parent = scroll.content


options_button.onClick (event, layer) ->
	print("clicked")
	layerA.stateSwitch("optionsOn")
	options.stateSwitch("On")

layerA.onClick (event, layer) ->
	options.stateSwitch("Off")	
	layerA.stateSwitch("optionsOff")

close_button.onClick (event, layer) ->
	options.stateSwitch("Off")	
	layerA.stateSwitch("optionsOff")

	
scroll.contentInset =
	bottom:100###

###	


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


results_scroll.y = 206
route_show.y.toPrecision

bottom_bar.y=
BB_option.onClick (event, layer) ->
    flow.showNext(route_instructions)
    
start_nav.onClick (event, layer) ->
    flow.showNext(route_instructions_2)
    
stop_nav.onClick (event, layer) ->
    flow.showNext(route_instructions)


layerBack = new Layer
    width:40, height:40
    x:60, y:595

layerBack.onClick (event, layer) ->
	flow.showNext(Current_GMaps_result_page)
	
	

instructions =["Your location","Walk straight for 100 steps", "take a left turn to enter Plymouth road","Walk straight for 300 steps", "Resturant | Qdoba approaching on your right side", "Cross Road Ahead", "Turn left on Murfin Avenue", "Busley Baits Bus stop arrived", "Bus arriving in 2 mins"]


layerA = new Layer
	size:Screen.size
	
	
scroll = new ScrollComponent
	width:options.width
	height:options.height
	y: options.y
	scrollHorizontal: false
	scrollVertical: true
	
options.parent = scroll.content

layerA.states.optionsOff =
	backgroundColor: "#fff"
	opacity:0
	
layerA.states.optionsOn =
	backgroundColor: "#000"
	opacity:0.6


options.states.On =
	opacity: 1.00
	
options.states.Off =
	opacity: 0.00
	
options.stateSwitch("Off")
layerA.stateSwitch("optionsOff")

options_button.onClick (event, layer) ->
	layerA.stateSwitch("optionsOn")
	options.stateSwitch("On")

layerA.onClick (event, layer) ->
	options.stateSwitch("Off")	
	layerA.stateSwitch("optionsOff")

close_button.onClick (event, layer) ->
	options.stateSwitch("Off")	
	layerA.stateSwitch("optionsOff")

	
scroll.contentInset =
	bottom:100
###


	









