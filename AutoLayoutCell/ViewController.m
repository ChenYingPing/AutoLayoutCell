//
//  ViewController.m
//  AutoLayoutCell
//
//  Created by Chen on 16/3/10.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.estimatedRowHeight = self.tableView.rowHeight;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

#pragma mark - UITableView Datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(cell == nil) {
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    switch (indexPath.row) {
        case 0:
            cell.name.text = @"BigBang";
            cell.titleLabel.text = @"明星";
            cell.articleTitle.text = @"答：我认为，澳大利亚。中国企业在澳大利亚开展有关经营，是在尊重市场原则、国际规则和澳国内法律基础上进行的的正常商业运作，给两国带来巨大利益，也受到澳政府和人民欢迎。希望澳各界客观、理性看待中国企业与澳方的合作。我也注意到，针对相关民调，特恩布尔总理已表示，澳国防和安全官员认为该合作不对澳国家利益构成威胁";
            cell.articleDetail.text = @"答：我认为，澳大利亚公众大可不必对中国企业租用达尔文港保持这样的疑虑。中澳经贸合作充分彰显了中国发展为澳大利亚提供的重要机遇。中方愿同澳方加强互利合作，实现共同发展、共同繁荣。。";
            break;
            
        case 1:
            cell.name.text = @"BigBang";
            cell.titleLabel.text = @"明星";
            cell.articleTitle.text = @"答：我认为，澳大利亚公众大可不必对中国企业租用达尔文港保持这样的疑虑。中澳经贸合作充分彰显了中国发展为澳大利亚提供的重要机遇。中方愿同澳方加强互利合作，实现共同发展、共同繁荣。中国企业在澳大利亚开展有关经营，是在尊重市场原则、国际规则和澳国内法律基础上进行的的正常商业运作，给两国带来巨大利益，也受到澳政府和人民欢迎。希望澳各界客观、理性看待中国企业与澳方的合作。我也注意到，针对相关民调，特恩布尔总理已表示，澳国防和安全官员认为该合作不对澳国家利益构成威胁。";
            cell.articleDetail.text = @"答：我认为，澳大利亚公众大可不必对中国企业租用达尔文港保持这样的疑虑。中澳经贸合作充分彰显了中国发展为澳大利亚提供的重要机遇。中方愿同澳方加强互利合作，实现共同发展、共同繁荣。中国企业在澳大利亚开展有关经营，是在尊重市场原则、国际规则和澳国内法律基础上进行的的正常商业运作，给两国带来巨大利益，也受到澳政府和人民欢迎。希望澳各界客观、理性看待中国企业与澳方的合作。我也注意到，针对相关民调，特恩布尔总理已表示，澳国防和安全官员认为该合作不对澳国家利益构成威胁。";
            break;
            
        case 2:
            cell.name.text = @"BigBang";
            cell.titleLabel.text = @"明星";
            cell.articleTitle.text = @"答：我认为，澳大利亚。";
            cell.articleDetail.text = @"答：我认为，。";
            break;
            
        case 3:
            cell.name.text = @"BigBang";
            cell.titleLabel.text = @"明星";
            cell.articleTitle.text = @"答：我认为，澳大利亚答：我认为，澳大利亚公众大可不必对中国企业租用达尔文港保持这样的疑虑。中澳经贸合作充分彰显了中国发展为澳大利亚提供的重要机遇。中方愿同澳方加强互利合作，实现共同发展、共同繁荣。中国企业在澳大利亚开展有关经营，是在尊重市场原则、国际规则和澳国内法律基础上进行的的正常商业运作，给两国带来巨大利益，也受到澳政府和人民欢迎。希望澳各界客观、理性看待中国企业与澳方的合作。我也注意到，针对相关民调，特恩布尔总理已表示，澳国防和安全官员认为该合作不对澳国家利益构成威胁。。";
            cell.articleDetail.text = @"答：我认为，、";
            break;
            
        case 4:
            cell.name.text = @"BigBang";
            cell.titleLabel.text = @"明星";
            cell.articleTitle.text = @"答：我认为，澳大利亚。答：我认为，澳大利亚答：我认为，澳大利亚公众大可不必对中国企业租用达尔文港保持这样的疑虑。中澳经贸合作充分彰显了中国发展为澳大利亚提供的重要机遇。中方愿同澳方加强互利合作，实现。";
            cell.articleDetail.text = @"答：我认为，澳大利亚公众大可不必对中国企业租用达尔文港保持这样的疑虑。中澳经贸合作充分彰显了中国发展为澳大利亚提供的重要机遇。中方愿同澳方加强互利合作，实现共同发展、。";
            break;
            
        default:
            break;
    }
    
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
