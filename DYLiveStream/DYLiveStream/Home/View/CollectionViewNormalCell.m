//
//  CollectionViewNormalCell.m
//  DYLiveStream
//
//  Created by 老刁 on 2020/9/30.
//  Copyright © 2020 老刁. All rights reserved.
//

#import "CollectionViewNormalCell.h"
#import "SDWebImage.h"
@implementation CollectionViewNormalCell


- (void)awakeFromNib {
    [super awakeFromNib];

}

- (void)setData:(DYAnchorData *)data{
    [_watchingCount setTitle:[NSString stringWithFormat:@"观看人数:%lu",data.online] forState:UIControlStateNormal];
    [_anchorInfoLabel setText:data.room_name];
    [_anchorView sd_setImageWithURL:[NSURL URLWithString:data.vertical_src]];
    [_roomInfoLabel setText:data.nickname];
    
}

@end
