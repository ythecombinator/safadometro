Author: Luiz Peres
 * And yes, I was listening to the song. 
 */

#import <Foundation/Foundation.h>
#import "WesleySafadao.h"

int main (int argc, const char * argv[])
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   int day = 12;
   int month = 11;
   int year = 89;
   
   WesleyType safado = [WesleySafadao getSafadezaWithDay:day Month:month AndYear:year];
   NSString *strSafado = [NSString stringWithFormat:@"Voce e' %.2f%% safado e %.2f%% anjo", 
     safado.safadeza, 
     safado.angel
   ];
   
   NSLog(@"%@", strSafado);
   
   [pool drain];
   return 0;
}
