# TRSE_Mega65_Playground
Playground for Mega65 Dev with TRSE


A collection of units for development for the Mega65
1. Full color mode demo 
	![FCM IMAGE](fcm.png?raw=true "FCM")

2. RASTER REWRITE BUFFER :
	![RRB IMAGE](rrb.png?raw=true "RRB")


Units :

	DMA.tru
	
		- handling of Mega65's DMAgic
		
		DMA::lpeek(mb,b,addr) : byte
			gets a byte anywhere in memory 
			
		DMA::lpoke(mb,b,addr,val)
			puts a byte (val) anywhere in memory
			
		DMA::lcopy(smb,sb,saddr,dmb,db,daddr,count)
			copies (count) bytes from [smb|b|saddr] to [dmb|db|daddr]
			
		DMA::lfill(dmb,db,daddr,value,count)
			fills (count) bytes with (value) starting at [dmb|db|daddr]
			
		
	mega65.tru 
	
		- collection of functions regarding setting up the mega (FCM etc.)
		
		mega65::init() 
			initializes the Mega65
			
		mega65::setFCM() 
			sets up Full Color Character Mode for chars over $ff
			
		mega65::relocateScreen(bank,addr)
			set the screen to a new memory address
			
		mega65::SetRowSize(newRowSize)
			sets the rowsize and logical row Size
			
		mega65::printCharFCM(ch,color,x,y)
			prints a char (ch) with color (color) at position (x,y) in FCM mode
			
		mega65::printStringFCM(string,color,x,y)
			prints a string with color at (x,y)
			
		
	palettes.tru
	
		- Setting up Palettes
		
		palettes::redvalues[256]
			256 values for red
			
		palettes::greenvalues[256]
			256 values for green
			
		palettes::bluevalues[256]
			256 values for blue
			
		palettes::InitPalette()
			sets up the palette
	
	RRB.tru
			
		- Start of RRB lib
		
	keyboard.tru
	
		- Hardware accelerated Keyboard scanning routines
		
		keyboard::getSpecialKey() : byte
			gets special keys pressed 
				RIGHT_SHIFT
				LEFT_SHIFT
				CTRL
				ALT
				
		keyboard::getKey() : byte
			get Key pressed
			
		
		

	

		
