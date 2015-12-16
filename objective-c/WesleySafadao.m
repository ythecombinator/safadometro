/* 
 * Author: Luiz Peres
 * And yes, I was listening to the song. 
 */

#import "WesleySafadao.h"

@implementation WesleySafadao

+ (int) sum:(int)n
{
  int res = 0;
  
  for (int i = 1; i <= n; i++)
    res += i;
  
  return res;
}

+ (WesleyType) getSafadezaWithDay:(int)day Month:(int)month AndYear:(int)year
{
  WesleyType safadao;
  
  safadao.safadeza = [WesleySafadao sum:month] + ((float)year / 100) * (50 - day);
  NSString *strSafado = [NSString stringWithFormat:@"%f", safadao.safadeza];
  NSLog(@"%@", strSafado);
  safadao.angel = 100.0 - safadao.safadeza;
  
  return safadao;
}

@end
