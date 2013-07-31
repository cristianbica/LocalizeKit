//
//  UISearchBar+LocalizeKit.m
//  LocalizeKit
//
//  Created by Cristian Bica on 2/22/13.
//  Copyright (c) 2013 Voucherry LLC. All rights reserved.
//

#import "UISearchBar+LocalizeKit.h"
#import "LocalizeKitMacros.h"
#import "NSObject+LocalizeKit.h"

@implementation UISearchBar (LocalizeKit)

- (void)localizeInScope:(NSString *)scope {
  if(!self.isLocalizable) return;
  if (self.placeholder!=nil && self.placeholder.length>0)
    self.placeholder = VL(NOTNIL(self.i18nKey, self.placeholder), NOTNIL(scope, self.i18nScope), @{@"default" : self.placeholder});
}

@end
