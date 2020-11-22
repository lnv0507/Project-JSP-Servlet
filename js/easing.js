/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
    * Uses the bu in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
    *
    * TERMS OF USE - jQue y Easing
    *  
    * Open source und  the BSD License. 
 * 
    * Copyright Â© 2008 Gge McGinley Smith
* All rights reserved.
    *       
    *  Redistribution  a nd   use in source and binary forms, with or without modification,  
    *  are permitted pr ov id e d that the following conditions are  et:
    *     
        
    *  Redist ributions of sourc e  co d
        e must retain the above copyright notice, this list of 
    *  condit ions and the follo wi ng  
        disclaimer.
    *  Redist ributions in binar y  fo r
        m must reproduce the above copyright notice, this list 
    *  of con ditions and the fo ll ow i
        ng disclaimer in the documentation and/or other materials 
    *  provid ed with the distri bu ti o n. 
* 
     * Neither the name of the author nor the names of contributors may be used to endorse 
     * or promote products derived from this software without specific prior written permission.
     * 
    * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 *  XPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED  TO, THE IMPLIED WARRANTIES OF
 * M    ERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE

 *  COPYEXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
             *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BSINESS INTERRUPTION) HOWEVER CAUSED 
            * AND ON ANY THEORY  OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
            *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 OF THE POSSIBILITY OF SUCH DAMAGE. 
        *
*        
       / t: current time, b: begInnIng value, c: change In value, d: duration
    uery.easing['jsing'] = jQuery.easing['swing'];
        
          jQuery.extend( jQuery.easing,
       {
       	def: 'easeOutQua',
        ing: fun c ti on  ( x , t, b, c, d) {
       	//alert(jQuery.easing.default);
    	return jQuery.easingjQuery.easing.def](x, t, b, c, d);
        ,       
    easeInQuad: function (x, t, b, c, d) {
    	return c*(t/=d)*t + b;
        ,          
        aseOutQua d : function   (x ,  t, b, c, d) {
    	return -c *(t/=d)*(t-2) + b;
    },
        aseInOut Q ua d:  f u n c tion (x, t, b, c, d) {
       		if ((t/=d/2) < 1) return c/2*t*t + b;
    return -c/2 * ((--t)*(-2) - 1) + b;
          	},            
    aseInCubic: function (x, t, b, c, d) {
       		return c*(t/=d)*t*t+ b;
          	},            
          	easeO u t C ubi c:  f u n c tion (x, t, b, c, d) {
       	return c*((t=t/d- 1)*t*t + 1) + b;
           }, 
        aseInOut C ub ic :  f u n c t ion (x, t, b, c, d) {
               f ((t/=d/2) < 1) return c/2*t*t*t + b;
                   turn c/*((t-=2)*t*t + 2) + b;
                               
    eI             Quart: function (x, t, b, c, d) {
    turn c*(t/=d)*t*t*t + b;
                                     
                        eOu tQ ua r t :   f unction (x, t, b, c, d) { 
                   urn -c * ((t=t/d-1)*t*t*t - 1) + b; 
                    
        aseInOut Q ua rt :  f u n c t i o n (x, t, b, c, d) {
               f ((t/=d/2) < 1) return c/2*t*t*t*t + b;
    t              ur n -c2 * ((t-=2)*t*t*t - 2) + b;
                                  
           easeInQuint: function (x, t, b, c, d) {
    	return c*(t/=d)*t*t*t*t+ b;
               },               
                     s eOu tQ ui n t :   f u n ction (x, t, b, c, d) {
               eturn c*((t=t/d-1)*t*t*t*t + 1) + b;
                   
                  seInOutQuint :  function (x ,  t, b, c, d) {    
           	if ((t/=d/2) < 1) return c/*t*t*t*t + b;
               eturn c/2*(t-=2)*t*t*t*t + 2) + b;
                      
               seInSine: function (x, t, b, c, d) {    
               eturn -c * Mth.cos(t/d * (Math.PI/2)) + c +  b;   
                    
    aseOutSine: function (x, t, b, c, d) {
    return c * Math.sin(/d * (Math.PI/2)) + b;
              },    
    aseInOutSine: function (x, t, b, c, d) {
           return -c/2 * Math.cos(Math.PI*t/d) - 1)   b;
              
               seInExpo: function (x, t, b, c, d) { 
               eturn (t==0)? b : c * Math.pow(2, 10  * (t/d - 1)) + b;
          
                    seOutExp o : function (x, t, b, c, d) {
                          turn (t==d)  ?  b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
                     
    eI             OutExpo: function (x, t, b, c, d) {
    
                     i (t==d) return  b+ c;   
    	if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
               eturn c/2  (-Math.pow(2, -10 * --t) + 2) + b;
                             
               seInCirc: function (x, t, b, c, d) {
           return -c * (Mat.sqrt(1 - (t/=d)*t) - 1) + b;
                
              ea s eOutCirc: function (x ,  t,   b, c, d) {
           	return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
           },
                easeInOu
        tCirc :  f
        uncti o n (x, t, b, c, d) {
        f ((t /= d/2) < 1) re
      turn -c/ 2  *  (M ath.sqrt(1  -  t
      *t) - 1) +  b ;  
              	return c/2 * (Mat h .sqrt(1  -   ( t-=2       },      
                 e a seInElastic :  f un ct ion (x, t, b, c d )   {       
              	var s=1.70158;var p=0;var a=c;
              	if (t==0) retrn b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
                   	if (
        a < M a th
        .abs( c )) { a=c; var s=p/4; }
                   	else var 
      s = p/(2 *M at h. PI) * Math. a si
      n (c/a);    
                 	return -(a*Mat h .pow(2,1 0 * ( t-=1          },      
                   easeOutElas tic :  function (x, ,  b ,   c,   d)   {      
    
             		if (t==0) retur b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
                   	if (
        a < M a th
        .abs( c )) { a=c; var s=p/4; }
                   	else var 
      s = p/(2 *M a t h. PI ) * Math.as i n 
      (c/a);      
                 	return a*Math. p ow(2,-10 * t )  * M          },      
                 easeInOutEla                   
        ic: func t ion (x, t,  b,  c ,  d)  {          ) 
              		if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
       		if (a < Math.abc) )  { a=c; var s=p/4; }
          		else var s = p/(2*M a th.PI) * Math.asin (c/a);
          		if ( t  <  1 )  r e t urn   -. 5 *(a*Ma t h.pow(2,10*( t -=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
       		return a*Math.pow(2,-10(t- = 1)) * Math.s i n( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
          	}, 
        aseInBack: function (x, t, b, c, d, s) {
        f (s ==  u nde f i n e d )  s   =  1. 7 01 5 8;
         		eturn c*(t/=d)*t*((s+1)*t - ) + b;
              },
                 easeOutBack: function (
       x          	 i f (s == undefine d )   s  =   1 .701 58 ;        
                   	 r etu rn  c * ( ( t=t/ d- 1)*t*((s + 1) * t + s) + 1) + b;    
              },
              easeInOutBac: function (x, t, b, c, d, s) {
          		if (s == undefind) s = 1.70158;   
       		if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
       		return c/2*((t-=2)t*(((s*=(1.525))+1)*t + s) + 2) + b;
          	},    
                	eas e InBounc   e :  function (x, t, b, c, d) {
              	return c -   jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
                      
        seOutBounce: functi o n (x, t, b, c, d) {
             ((t/=d)   < (1/2. 7 5) )  {    
        return c*(7.5625*t*t) + b;
                 	}  e lse if  ( t  <  (2/2.7 5 )) {  
              		return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
       	} else if (t < (2.5/2.75)) {
    	return c*(7.5625*(t-=(2.5/2.75))*t + .9375) + b;
         else {    
          		return c*(7.5625*(t-=(2.625/2.5))*t   +   .984375) + b;  
    }
	},
    easeInOutBounce: function (x, t, b, c, d) {
    	if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
    	return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
}
    );
    
        
        
            TERMS OF USE - EASING EQUATIONS
            
Open source under the BSD License. 
            
                opyright Â© 2001 Robert Penner
            All rights reserved.
         
    * Redistributio  and use in source and binary forms, with or without modification, 
         are permitted provided that the following conditions are met:
 
        Redistributions o f source code must retain the above copyright notice, this list of 
            conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list 
            of conditions and the following disclaimer in the documentation and/or other materials 
                provided with the distribution.  

Neither the name of the author nor the names of contributors may be used to endorse 
                r promote products derived fros software without specific prior written permission.
                    
                HIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
                XPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
            MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
        *  OPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
    * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
*  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
    * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
    */