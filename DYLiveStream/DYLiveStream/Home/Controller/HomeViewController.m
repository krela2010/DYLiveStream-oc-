//
//  HomeViewController.m
//  DYLiveStream
//
//  Created by 老刁 on 2020/9/27.
//  Copyright © 2020 老刁. All rights reserved.
//

#import "HomeViewController.h"
#import "CollectionViewNormalCell.h"
#import "RecommendPagePresenter.h"
#import "RecommendCycleView.h"
#import "YYModel.h"
//extern const NSString* str222;
//static const int kCollectionViewNormalItemH =  60;
//static int kCollectionViewItemW = UIScreen.mainScreen.bounds.size.width;

@interface HomeViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, RecommendPageProtocol>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) RecommendCycleView *recommendCycleView;
@property (strong, nonatomic) DYAnchorListData *anchorListData;
@end

@implementation HomeViewController


-(RecommendCycleView *)recommendCycleView{
    if (_recommendCycleView == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _recommendCycleView = [RecommendCycleView recommendCycleView];
            _recommendCycleView.backgroundColor = UIColor.cyanColor;
        });
    }
    return _recommendCycleView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpCollectionView];
    [self setUpPresenter];
    [self setUpCycleView];
    
    
}

-(DYAnchorListData *)anchorListData{
    if (_anchorListData == nil) {
        static dispatch_once_t onceToken;
         dispatch_once(&onceToken, ^{
             _anchorListData = [DYAnchorListData new];
         });
    }
    return _anchorListData;
}

//MARK:-  设置View
-(void) setUpCollectionView{
    
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    int width = (UIScreen.mainScreen.bounds.size.width - (10 * 3)) / 2;
    layout.itemSize = CGSizeMake(width, width/5*6);
    layout.minimumInteritemSpacing = 10;
    layout.minimumLineSpacing = 10;
    layout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
    [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [layout setHeaderReferenceSize:CGSizeMake(375, 40)];
    
    _collectionView.bounces = NO;
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.contentInset = UIEdgeInsetsMake(100, 0, 0, 0);
    [_collectionView setCollectionViewLayout:layout];
    
    UINib *nib = [UINib nibWithNibName:@"CollectionViewNormalCell" bundle:nil];
    [_collectionView registerNib:nib forCellWithReuseIdentifier:@"NormalCellID"];
}

- (void)setUpCycleView{
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewNormalCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NormalCellID" forIndexPath:indexPath];
    [cell setData:_anchorListData.data[indexPath.row]];
    return cell;
}



//MARK:-  设置Presenter
- (void)setUpPresenter{
    RecommendPagePresenter *presenter = [[RecommendPagePresenter alloc]init];
    
    presenter.delegate = self;
    [presenter getAnchorListWithOffset:0];
    [presenter getRecommendCycleViewData];
//    [presenter getRoomListWithCategory:@"xsl"];
}


-(void) recommendPageAnchorListData:(id) responseObject{
    NSLog(@"%@", responseObject);
    

    [self.anchorListData yy_modelSetWithJSON:responseObject];
//    NSLog(@"%@", _anchorListData.data.firstObject.room_name);
    [_collectionView reloadData];
    
    

}


-(void) recommendPageRoomListData:(id) responseObject{
//    NSLog(@"%@", responseObject);

}


-(void) recommendPageCycleViewData:(id) responseObject{
    NSLog(@"%@", responseObject);
    CycleViewListData *data = [CycleViewListData new];
    [data yy_modelSetWithJSON:responseObject];
    [self.recommendCycleView setData:data];
//    recommendCycleView

}
@end


