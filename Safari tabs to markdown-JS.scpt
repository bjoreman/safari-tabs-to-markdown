JsOsaDAS1.001.00bplist00�Vscriptof / * 
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
 v a r   u r l ,   n a m e ,   t a b ; 
 f o r   ( v a r   i   =   0 ;   i   <   t a b s . l e n g t h ;   i + + )   { 
 	 t a b   =   t a b s . a t ( i ) ; 
 	 u r l   =   ' '   +   t a b . u r l ( ) ; 
 	 u r l   =   u r l . r e p l a c e ( " ( " ,   " % 2 8 " ) ; 
 	 u r l   =   u r l . r e p l a c e ( " ) " ,   " % 2 9 " ) ; 
 	 v a r   n a m e   =   ' '   +   t a b . n a m e ( ) ; 
 	 n a m e   =   n a m e . r e p l a c e ( "   -   W i k i p e d i a ,   t h e   f r e e   e n c y c l o p e d i a " ,   " " ) ; 
 	 n a m e   =   n a m e . r e p l a c e ( "      W i k i p e d i a " ,   " " ) ; 
 	 l i n k L i s t . p u s h ( " *   [ "   +   n a m e   +   " ] ( " + u r l + " ) " ) ; 
 } ; 
 a p p . s e t T h e C l i p b o a r d T o ( l i n k L i s t . j o i n ( ' \ n ' ) ) ; 
 a p p . d i s p l a y N o t i f i c a t i o n ( ' T a b s   t o   m a r k d o w n   f i n i s h e d ' ) ;                              �jscr  ��ޭ