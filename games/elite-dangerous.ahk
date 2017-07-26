; #################################################################
; ### Putty

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_exe EliteDangerous64.exe

;	#Xbutton1::Send ^j;
;	#Xbutton2::Send !j;
		
	#1::Send !1;
	#2::Send !2;
	#3::Send !3;
	#4::Send !4;
	#5::Send !5;
	#6::Send !6;
	#7::Send !7;
	#8::Send !8;
	#9::Send !9;
	#0::Send !0;

	#q::Send !q;
	#w::Send !w;		
	#e::Send !e;		
	#r::Send !r;		
	#t::Send !t;		
	#y::Send !y;		
	#u::Send !u;		
	#i::Send !i;		
	#o::Send !o;		
	#p::Send !p;		

	#a::Send !a;		
	#s::Send !s;		
	#d::Send !d;		
	#f::Send !f;		
	#g::Send !g;		
	#h::Send !h;		
	#j::Send !j;		
	#k::Send !k;		
	#l::Send !l;		
	
	#z::Send !z;		
	#x::Send !x;		
	#c::Send !c;		
	#v::Send !v;		
	#b::Send !b;		
	#n::Send !n;		
	#m::Send !m;		

;	#::Send !;		
#IfWinActive