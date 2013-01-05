.class public Lcom/android/phone/VideoCallPanel;
.super Landroid/widget/RelativeLayout;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VideoCallPanel$1;,
        Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VideoCallPanel"


# instance fields
.field private mBackCameraId:I

.field private mCameraId:I

.field private mCameraPicker:Landroid/widget/ImageView;

.field private mCameraPreview:Landroid/view/TextureView;

.field private mCameraSurface:Landroid/graphics/SurfaceTexture;

.field private mContext:Landroid/content/Context;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndView:Landroid/view/TextureView;

.field private mFrontCameraId:I

.field private mIsMediaLoopback:Z

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPreviewSize:Landroid/hardware/Camera$Size;

.field private mVideoCallManager:Lcom/android/phone/VideoCallManager;

.field private mVideoCallPanel:Landroid/view/ViewGroup;

.field private mZoomControl:Lcom/android/phone/ZoomControlBar;

.field private mZoomMax:I

.field private mZoomValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 97
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 102
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 107
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VideoCallPanel;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V

    return-void
.end method

.method private closeCamera()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->closeCamera()V

    .line 256
    return-void
.end method

.method private initializeCamera()V
    .registers 2

    .prologue
    .line 209
    const-string v0, "Initializing camera"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 212
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->openCamera(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 219
    :goto_d
    return-void

    .line 215
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeZoom()V

    .line 216
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCameraParams()V

    .line 218
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->startPreview()V

    goto :goto_d
.end method

.method private initializeCameraParams()V
    .registers 5

    .prologue
    .line 407
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    if-eqz v1, :cond_15

    .line 410
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 420
    :goto_d
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 425
    :goto_14
    return-void

    .line 412
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Preview Sizes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Preview Size directly with negotiated Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " negotiated width= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v3}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6e} :catch_6f

    goto :goto_d

    .line 421
    :catch_6f
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting Camera preview size exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Preview sizes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto/16 :goto_14
.end method

.method private initializeZoom()V
    .registers 4

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 370
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_18

    .line 371
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    .line 382
    :goto_17
    return-void

    .line 375
    :cond_18
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    .line 379
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomMax(I)V

    .line 380
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomIndex(I)V

    .line 381
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    new-instance v1, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setOnZoomChangeListener(Lcom/android/phone/ZoomControl$OnZoomChangedListener;)V

    goto :goto_17
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 486
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 490
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method private onZoomValueChanged(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 391
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    .line 394
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 395
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 396
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 398
    :cond_18
    return-void
.end method

.method private openCamera(I)Z
    .registers 6
    .parameter "cameraId"

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 231
    .local v1, result:Z
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2, p1}, Lcom/android/phone/VideoCallManager;->openCamera(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 234
    .end local v1           #result:Z
    :goto_7
    return v1

    .line 232
    .restart local v1       #result:Z
    :catch_8
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera device, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private resizeCameraPreview(I)V
    .registers 6
    .parameter "targetSize"

    .prologue
    .line 434
    const-string v1, "resizeCameraPreview"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    div-int/lit8 v2, p1, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/VideoCallManager;->getCameraPreviewSize(IZ)Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 438
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_53

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 441
    .local v0, cameraPreivewLp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 443
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    .end local v0           #cameraPreivewLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_53
    return-void
.end method

.method private resizeFarEndView(II)V
    .registers 6
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 455
    const-string v1, "resizeFarEndView"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Videocall pandel width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 460
    .local v0, farEndViewLp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 461
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 462
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method private startPreview()V
    .registers 4

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 249
    :goto_d
    return-void

    .line 245
    :catch_e
    move-exception v0

    .line 246
    .local v0, ioe:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting preview texture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private stopPreview()V
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->stopCameraPreview()V

    .line 264
    return-void
.end method

.method private switchCamera(I)V
    .registers 4
    .parameter "cameraId"

    .prologue
    .line 471
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 474
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_12

    .line 475
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 476
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 480
    :cond_12
    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    .line 481
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 483
    :cond_18
    return-void
.end method


# virtual methods
.method public onCallDisconnect()V
    .registers 2

    .prologue
    .line 169
    const-string v0, "onCallDisconnect"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/VideoCallManager;->setIsMediaReadyToReceivePreview(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->mediaDeInit()V

    .line 178
    return-void
.end method

.method public onCallInitiating()V
    .registers 2

    .prologue
    .line 154
    const-string v0, "onCallInitiating"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 160
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->mediaInit()V

    .line 161
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getCameraDirection()I

    move-result v0

    .line 350
    .local v0, direction:I
    packed-switch v0, :pswitch_data_1c

    .line 361
    :goto_9
    return-void

    .line 352
    :pswitch_a
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_9

    .line 355
    :pswitch_10
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_9

    .line 358
    :pswitch_16
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_9

    .line 350
    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_a
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishInflate(this = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 120
    const-string v1, "net.lte.VT_LOOPBACK_ENABLE"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, property:I
    if-ne v0, v2, :cond_b4

    move v1, v2

    :goto_2a
    iput-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is Media running in loopback mode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 125
    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    .line 126
    const v1, 0x7f070095

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ZoomControlBar;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    .line 127
    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 128
    const v1, 0x7f070092

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 129
    const v1, 0x7f070094

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    .line 132
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    .line 138
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getBackCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    .line 139
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getFrontCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    .line 142
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    .line 143
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    if-le v1, v2, :cond_b7

    .line 144
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :goto_b3
    return-void

    :cond_b4
    move v1, v3

    .line 121
    goto/16 :goto_2a

    .line 146
    :cond_b7
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b3
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 201
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 203
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "xNew"
    .parameter "yNew"
    .parameter "xOld"
    .parameter "yOld"

    .prologue
    .line 187
    const-string v0, "onSizeChanged"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Panel width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p2}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(I)V

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 193
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 271
    const-string v0, "Camera surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 273
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v1, :cond_21

    .line 274
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 286
    :cond_20
    :goto_20
    return-void

    .line 279
    :cond_21
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setDisplay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_20

    .line 281
    :cond_29
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 282
    const-string v0, "Video surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 283
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 284
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_20
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .parameter "surface"

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 291
    const-string v0, "CameraPreview surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 293
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 294
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 300
    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 296
    const-string v0, "FarEndView surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 297
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 298
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1a
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 311
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .parameter "surface"

    .prologue
    .line 306
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 318
    if-ne p1, p0, :cond_6

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v0, :cond_7

    .line 341
    :cond_6
    :goto_6
    return-void

    .line 322
    :cond_7
    sparse-switch p2, :sswitch_data_34

    goto :goto_6

    .line 335
    :sswitch_b
    const-string v0, "VideoCallPanel View is VISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v1, :cond_6

    .line 337
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    goto :goto_6

    .line 326
    :sswitch_1e
    const-string v0, "VideoCallPanel View is GONE or INVISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_6

    .line 330
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 331
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    goto :goto_6

    .line 322
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_b
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_1e
    .end sparse-switch
.end method
