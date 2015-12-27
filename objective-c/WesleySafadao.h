/* 
 * Author: Luiz Peres
 * And yes, I was listening to the song. 
 */

#import <Foundation/Foundation.h>

typedef struct
{
  float safadeza;
  float angel;
}WesleyType;

@interface WesleySafadao : NSObject

+ (WesleyType)getSafadezaWithDay:(int)day Month:(int)month AndYear:(int)year;

@end
