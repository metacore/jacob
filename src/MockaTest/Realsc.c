static float a,b,c;

/*****************************************************************************/
float P(int n){
   if (n<=0){
      return 1.0; 
   }else{
      return P(n-1)+P(n-1); 
   } /* if */
} /* P */

/*****************************************************************************/
void main(){
   P(100); 
} /* main */

