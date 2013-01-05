.class public Lcom/android/phone/SdcardVolumeService;
.super Landroid/app/Service;
.source "SdcardVolumeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SdcardVolumeService$LocalBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SdcardVolumeService"

.field private static final MIN_AVAILABLE_SIZE:I = 0x200000


# instance fields
.field final nBinder:Landroid/os/IBinder;

.field nStoragePath:Ljava/lang/String;

.field nTimer:Ljava/util/Timer;

.field nVoiceRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcom/android/phone/SdcardVolumeService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/SdcardVolumeService$LocalBinder;-><init>(Lcom/android/phone/SdcardVolumeService;)V

    iput-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nBinder:Landroid/os/IBinder;

    .line 35
    return-void
.end method

.method private checkSdcardVolume()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v0, "SdcardVolumeService"

    const-string v1, "SdcardVolumeService#checkSdcardVolume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nStoragePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/SdcardVolumeService;->nStoragePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, storagePath:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 74
    const-string v0, "SdcardVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdcardVolumeService#checkSdcardVolume->storagePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 77
    .local v6, fs:Landroid/os/StatFs;
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/SdcardVolumeService$1;

    invoke-direct {v1, p0, v6}, Lcom/android/phone/SdcardVolumeService$1;-><init>(Lcom/android/phone/SdcardVolumeService;Landroid/os/StatFs;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 91
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 98
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 99
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 101
    :cond_e
    return-void
.end method

.method public initData(Landroid/media/voicerecorder/BaseVoiceRecorder;Ljava/lang/String;)V
    .registers 6
    .parameter "recorder"
    .parameter "storagePath"

    .prologue
    .line 108
    const-string v0, "SdcardVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdcardVolumeService#initData()->storagePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/android/phone/SdcardVolumeService;->nVoiceRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 110
    iput-object p2, p0, Lcom/android/phone/SdcardVolumeService;->nStoragePath:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 61
    const-string v0, "SdcardVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdcardVolumeService#onBind->action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 43
    const-string v0, "SdcardVolumeService"

    const-string v1, "TIVoiceRecorder.SdcardVolumeService#onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SdcardVolumeService;->nTimer:Ljava/util/Timer;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 56
    const-string v0, "SdcardVolumeService"

    const-string v1, "SdcardVolumeService#onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 49
    const-string v0, "SdcardVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIVoiceRecorder.SdcardVolumeService#onStartCommand->action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/android/phone/SdcardVolumeService;->checkSdcardVolume()V

    .line 51
    const/4 v0, 0x2

    return v0
.end method
