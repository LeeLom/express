//
//  ScanQRCodeViewController.m
//  Express
//
//  Created by LeeLom on 16/8/1.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ScanQRCodeViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ScanQRCodeViewController ()<UITabBarDelegate,AVCaptureMetadataOutputObjectsDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property (strong, nonatomic) AVCaptureDevice* device;
@property (strong, nonatomic) AVCaptureDeviceInput* input;
@property (strong, nonatomic) AVCaptureMetadataOutput* output;
@property (strong, nonatomic) AVCaptureSession* session;
@property (strong, nonatomic) AVCaptureVideoPreviewLayer* previewLayer;

@property (strong, nonatomic) IBOutlet UIView *customContainerView;
@property (strong, nonatomic) IBOutlet UIImageView *scanLineImageView;
@property (strong, nonatomic) IBOutlet UILabel *customLabel;

/***专门用于保存描边的图层***/
@property (strong, nonatomic) CALayer* containerLayer;

@end

@implementation ScanQRCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self startScan];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark 属性懒加载
-(AVCaptureDevice*)device{
    if (_device == nil) {
        _device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    }
    return _device;
}
-(AVCaptureDeviceInput*)input{
    if (_input == nil) {
        _input = [AVCaptureDeviceInput deviceInputWithDevice:self.device error:nil];
    }
    return _input;
}
-(AVCaptureSession*)session{
    if (_session == nil) {
        _session = [[AVCaptureSession alloc]init];
    }
    return _session;
}
-(AVCaptureVideoPreviewLayer *)previewLayer{
    if (_previewLayer == nil) {
        _previewLayer = [AVCaptureVideoPreviewLayer layerWithSession:self.session];
    }
    return _previewLayer;
}
// 设置输出对象解析数据时感兴趣的范围
// 默认值是 CGRect(x: 0, y: 0, width: 1, height: 1)
// 通过对这个值的观察, 我们发现传入的是比例
// 注意: 参照是以横屏的左上角作为, 而不是以竖屏
//        out.rectOfInterest = CGRect(x: 0, y: 0, width: 0.5, height: 0.5)
-(AVCaptureMetadataOutput*)output{
    if (_output == nil) {
        _output = [[AVCaptureMetadataOutput alloc]init];
        //1. 获取屏幕frame
        CGRect viewRect = self.view.frame;
        //2. 获取容器frame
        CGRect containerRect = self.customContainerView.frame;
        
        CGFloat x = containerRect.origin.y / viewRect.size.height;
        CGFloat y = containerRect.origin.x / viewRect.size.width;
        CGFloat width = containerRect.size.height / viewRect.size.height;
        CGFloat height = containerRect.size.width / viewRect.size.width;
        
        _output.rectOfInterest = CGRectMake(x, y, width, height);
    }
    return _output;
}
- (CALayer *)containerLayer{
    if (_containerLayer == nil) {
        _containerLayer = [[CALayer alloc] init];
    }
    return _containerLayer;
}

/*-----------------------------分割线---------------------------------------*/
-(void)startScan{
    //1. 判断输入能否添加会话中
    if (![self.session canAddInput:self.input]) {
        [self.session addInput:self.input];
    }
    //2. 判断输出能否添加会话中
    if (![self.session canAddOutput:self.output]) {
        [self.session addOutput:self.output];
    }
    //3. 设置输出能够解析的数据类型
    // 注意点: 设置数据类型一定要在输出对象添加到会话之后才能设置
    self.output.metadataObjectTypes = self.output.availableMetadataObjectTypes;
    //4. 设置监听 监听输出解析到的数据
    [self.output setMetadataObjectsDelegate:self queue:dispatch_get_main_queue()];
    //5. 添加预览图层
    [self.view.layer insertSublayer:self.previewLayer atIndex:0];
    self.previewLayer.frame = self.view.bounds;
    //6. 添加容器图层
    [self.view.layer addSublayer:self.containerLayer];
    //7. 开始扫描
    [self.session startRunning];
}
#pragma mark 两个动作
- (IBAction)closeButtonClick:(id)sender {
}
- (IBAction)openCameraClick:(id)sender {
}

@end
