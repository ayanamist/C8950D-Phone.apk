.class public Lcom/android/phone/MediaHandler;
.super Landroid/os/Handler;
.source "MediaHandler.java"


# static fields
.field public static final PARAM_READY_EVT:I = 0x1

.field public static final START_READY_EVT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoCall_MediaHandler"

.field private static isReadyToReceivePreview:Z

.field private static mNegotiatedFPS:S

.field private static mNegotiatedHeight:I

.field private static mNegotiatedWidth:I

.field private static sSurface:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/16 v0, 0xf0

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    .line 62
    const/16 v0, 0x140

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    .line 63
    const/16 v0, 0x14

    sput-short v0, Lcom/android/phone/MediaHandler;->mNegotiatedFPS:S

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MediaHandler;->isReadyToReceivePreview:Z

    .line 68
    const-string v0, "vt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static declared-synchronized canSendPreview()Z
    .registers 2

    .prologue
    .line 147
    const-class v0, Lcom/android/phone/MediaHandler;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/phone/MediaHandler;->isReadyToReceivePreview:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static deInit()V
    .registers 2

    .prologue
    .line 86
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "deInit called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeDeInit()V

    .line 88
    return-void
.end method

.method public static getNegotiatedFPS()S
    .registers 3

    .prologue
    .line 126
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negotiated FPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-short v2, Lcom/android/phone/MediaHandler;->mNegotiatedFPS:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-short v0, Lcom/android/phone/MediaHandler;->mNegotiatedFPS:S

    return v0
.end method

.method public static getNegotiatedHeight()I
    .registers 3

    .prologue
    .line 134
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negotiated Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    return v0
.end method

.method public static getNegotiatedWidth()I
    .registers 3

    .prologue
    .line 142
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negotiated Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    return v0
.end method

.method public static init()V
    .registers 2

    .prologue
    .line 75
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "init called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeInit()I

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to initialize Dpl"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_15
    invoke-static {}, Lcom/android/phone/MediaHandler;->registerForMediaEvents()V

    .line 80
    return-void
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeGetNegotiatedFPS()S
.end method

.method private static native nativeGetNegotiatedHeight()I
.end method

.method private static native nativeGetNegotiatedWidth()I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents()V
.end method

.method private static native nativeSetSurface(Landroid/graphics/SurfaceTexture;)I
.end method

.method public static onMediaEvent(I)V
    .registers 4
    .parameter "eventId"

    .prologue
    .line 168
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaEvent eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    packed-switch p0, :pswitch_data_46

    .line 189
    :goto_1b
    return-void

    .line 171
    :pswitch_1c
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "Received PARAM_READY_EVT. Updating negotiated values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeGetNegotiatedHeight()I

    move-result v0

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    .line 173
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeGetNegotiatedWidth()I

    move-result v0

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    .line 174
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeGetNegotiatedFPS()S

    move-result v0

    sput-short v0, Lcom/android/phone/MediaHandler;->mNegotiatedFPS:S

    .line 181
    invoke-static {}, Lcom/android/phone/MediaHandler;->setSurface()V

    goto :goto_1b

    .line 184
    :pswitch_39
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "Received START_READY_EVT. Camera frames can be sent now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/MediaHandler;->setIsReadyToReceivePreview(Z)V

    goto :goto_1b

    .line 169
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_39
    .end packed-switch
.end method

.method private static registerForMediaEvents()V
    .registers 2

    .prologue
    .line 160
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "Registering for Media Callback Events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeRegisterForMediaEvents()V

    .line 162
    return-void
.end method

.method public static sendPreviewFrame([B)V
    .registers 1
    .parameter "frame"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->nativeHandleRawFrame([B)V

    .line 97
    return-void
.end method

.method public static declared-synchronized setIsReadyToReceivePreview(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 151
    const-class v1, Lcom/android/phone/MediaHandler;

    monitor-enter v1

    :try_start_3
    const-string v0, "VideoCall_MediaHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsReadyToReceivePreview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sput-boolean p0, Lcom/android/phone/MediaHandler;->isReadyToReceivePreview:Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 153
    monitor-exit v1

    return-void

    .line 151
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setSurface()V
    .registers 2

    .prologue
    .line 114
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "setSurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/android/phone/MediaHandler;->sSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_13

    .line 116
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "sSurface is null. So not passing it down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_12
    return-void

    .line 119
    :cond_13
    sget-object v0, Lcom/android/phone/MediaHandler;->sSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/android/phone/MediaHandler;->nativeSetSurface(Landroid/graphics/SurfaceTexture;)I

    goto :goto_12
.end method

.method public static setSurface(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .parameter "st"

    .prologue
    .line 104
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sput-object p0, Lcom/android/phone/MediaHandler;->sSurface:Landroid/graphics/SurfaceTexture;

    .line 106
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->nativeSetSurface(Landroid/graphics/SurfaceTexture;)I

    .line 107
    return-void
.end method
