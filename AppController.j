/*
 * AppController.j
 * IsCssBasedIssue
 *
 * Created by Argos Oz on June 16, 2018.
 * Copyright 2018, Army of Me, Inc. All rights reserved.
 */

@import <Foundation/Foundation.j>
@import <AppKit/AppKit.j>


@implementation AppController : CPObject
{
    @outlet CPWindow    theWindow;
}


- (CPInteger) numberOfRowsInTableView:(CPTableView)tableView
{
    return 3;
}

- (CPView) tableView:(CPTableView)tableView viewForTableColumn:(CPTableColumn)tableColumn row:(CPInteger)row
{    
    var identifier = [tableColumn identifier];
    if([identifier isEqualToString:@"FirstColumn"]){
        var cellView = [tableView makeViewWithIdentifier:@"MainCell" owner:self];
        return cellView;
    }
    return nil;
}


- (void)awakeFromCib
{
    [theWindow setFullPlatformWindow:YES];
}

@end
