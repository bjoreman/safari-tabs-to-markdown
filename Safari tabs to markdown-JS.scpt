JsOsaDAS1.001.00bplist00�Vscripto� / * 
 C o p i e s   S a f a r i ' s   t a b s   t o   t h e   c l i p b o a r d   a s   a   m a r k d o w n   l i s t   o f   U R L : s 
 
 B u i l t   o n   h t t p s : / / g i t h u b . c o m / m a r t i j n e n g l e r / t o o l s / b l o b / m a s t e r / l i s t - s a f a r i - t a b s / s a f a r i - t a b s - t o - c l i p b o a r d . a p p l e s c r i p t , 
 w h i c h   w a s   c r e a t e d   b y   M a r t i j n   E n g l e r   ( h t t p : / / a p p l e c o a c h . n l ) 
 * / 
 
 v a r   a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) ; 
 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 
 v a r   S a f a r i   =   A p p l i c a t i o n ( ' S a f a r i ' ) ; 
 v a r   t a b s   =   S a f a r i . w i n d o w s . a t ( 0 ) . t a b s ; 
 v a r   l i n k L i s t   =   [ ] ; 
 v a r   u r l ,   n a m e ,   t a b ,   l i n k ,   d e s c r i p t i o n ; 
 v a r   u s e L i n k L i s t   =   a p p . d i s p l a y A l e r t ( ' U s e   l i n k   t i t l e   l i s t ? ' ,   { ' b u t t o n s ' :   [ ' Y e s ' ,   ' N o ' ] } ) . b u t t o n R e t u r n e d ; 
 v a r   n u m T i t l e s   =   0 ; 
 v a r   l i n k T i t l e s ; 
 v a r   a b o r t   =   f a l s e ; 
 i f   ( u s e L i n k L i s t   = = =   ' Y e s ' )   { 
 	 l i n k T i t l e s   =   a p p . d i s p l a y D i a l o g ( ' P a s t e   m a r k d o w n   t i t l e   l i s t ' ,   { d e f a u l t A n s w e r :   ' ' } ) . t e x t R e t u r n e d . r e p l a c e ( / \ *   / g i , ' ' ) . s p l i t ( ' \ n ' ) ; 
 	 n u m T i t l e s   =   l i n k T i t l e s . l e n g t h ; 
 	 i f   ( n u m T i t l e s   ! = =   t a b s . l e n g t h )   { 
 	 	 v a r   a l e r t S t r i n g   =   ' T h e   n u m b e r   o f   l i n k s   a n d   t a b s   d i f f e r !   ( ' + n u m T i t l e s + '   t i t l e s   a n d   ' + t a b s . l e n g t h + '   t a b s . )   C o n t i n u e   a n y w a y ? ' ; 
 	 	 i f ( a p p . d i s p l a y A l e r t ( a l e r t S t r i n g ,   { ' b u t t o n s ' :   [ ' C o n t i n u e ' ,   ' C a n c e l ' ] } ) . b u t t o n R e t u r n e d   = = =   ' C a n c e l ' )   { 
 	 	 	 a p p . d i s p l a y N o t i f i c a t i o n ( ' T a b s   t o   m a r k d o w n   c a n c e l l e d ' ) ; 
 	 	 	 a b o r t   =   t r u e ; 
 	 	 } 
 	 } 
 } 
 i f   ( a b o r t   = = =   f a l s e )   { 
 	 f o r   ( v a r   i   =   0 ;   i   <   t a b s . l e n g t h ;   i + + )   { 
 	 	 t a b   =   t a b s . a t ( i ) ; 
 	 	 u r l   =   ' '   +   t a b . u r l ( ) ; 
 	 	 u r l   =   u r l . r e p l a c e ( " ( " ,   " % 2 8 " ) ; 
 	 	 u r l   =   u r l . r e p l a c e ( " ) " ,   " % 2 9 " ) ; 
 	 	 v a r   n a m e   =   ' '   +   t a b . n a m e ( ) ; 
 	 	 i f   ( i   <   n u m T i t l e s )   { 
 	 	 	 n a m e   =   l i n k T i t l e s [ i ] ; 
 	 	 }   e l s e   { 
 	 	 	 n a m e   =   n a m e . r e p l a c e ( "   -   W i k i p e d i a ,   t h e   f r e e   e n c y c l o p e d i a " ,   " " ) ; 
 	 	 	 n a m e   =   n a m e . r e p l a c e ( "      W i k i p e d i a " ,   " " ) ; 
 	 	 } 
 	 	 d e s c r i p t i o n   =   n u l l ; 
 	 	 v a r   s p l i t t e r   =   '   -   ' ; 
 	 	 i f   ( n a m e . i n d e x O f ( s p l i t t e r )   ! = =   - 1 )   { 
 	 	 	 v a r   n a m e P a r t s   =   n a m e . s p l i t ( s p l i t t e r ) ; 
 	 	 	 n a m e   =   n a m e P a r t s . s h i f t ( ) ; 
 	 	 	 d e s c r i p t i o n   =   n a m e P a r t s . j o i n ( s p l i t t e r ) ; 
 	 	 } 
 	 	 l i n k   =   " *   [ "   +   n a m e   +   " ] ( " + u r l + " ) " ; 
 	 	 i f   ( d e s c r i p t i o n   ! = =   n u l l )   { 
 	 	 	 l i n k   =   l i n k   +   '   -   '   +   d e s c r i p t i o n ; 
 	 	 } 
 	 	 l i n k L i s t . p u s h ( l i n k ) ; 
 	 } ; 
 	 a p p . s e t T h e C l i p b o a r d T o ( l i n k L i s t . j o i n ( ' \ n ' ) ) ; 
 	 a p p . d i s p l a y N o t i f i c a t i o n ( ' T a b s   t o   m a r k d o w n   f i n i s h e d ' ) ; 
 }                              �jscr  ��ޭ