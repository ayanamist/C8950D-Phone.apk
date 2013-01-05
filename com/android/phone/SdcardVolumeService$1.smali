.class Lcom/android/phone/SdcardVolumeService$1;
.super Ljava/util/TimerTask;
.source "SdcardVolumeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SdcardVolumeService;->checkSdcardVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SdcardVolumeService;

.field final synthetic val$fs:Landroid/os/StatFs;


# direct methods
.method constructor <init>(Lcom/android/phone/SdcardVolumeService;Landroid/os/StatFs;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/SdcardVolumeService$1;->this$0:Lcom/android/phone/SdcardVolumeService;

    iput-object p2, p0, Lcom/android/phone/SdcardVolumeService$1;->val$fs:Landroid/os/StatFs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 79
    iget-object v6, p0, Lcom/android/phone/SdcardVolumeService$1;->val$fs:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v2, v6

    .line 80
    .local v2, blocks:J
    iget-object v6, p0, Lcom/android/phone/SdcardVolumeService$1;->val$fs:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 81
    .local v0, blockSize:J
    mul-long v6, v2, v0

    const-wide/32 v8, 0x200000

    cmp-long v6, v6, v8

    if-lez v6, :cond_47

    const/4 v4, 0x1

    .line 82
    .local v4, hasSpace:Z
    :goto_18
    const-string v6, "SdcardVolumeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SdcardVolumeService#checkSdcardVolume->hasSpace="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-nez v4, :cond_46

    .line 84
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 85
    .local v5, message:Landroid/os/Message;
    const/4 v6, -0x1

    iput v6, v5, Landroid/os/Message;->what:I

    .line 86
    iget-object v6, p0, Lcom/android/phone/SdcardVolumeService$1;->this$0:Lcom/android/phone/SdcardVolumeService;

    iget-object v6, v6, Lcom/android/phone/SdcardVolumeService;->nVoiceRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    check-cast v6, Landroid/media/voicerecorder/TIVoiceRecorder;

    invoke-virtual {v6}, Landroid/media/voicerecorder/TIVoiceRecorder;->gainVolumeHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .end local v5           #message:Landroid/os/Message;
    :cond_46
    return-void

    .line 81
    .end local v4           #hasSpace:Z
    :cond_47
    const/4 v4, 0x0

    goto :goto_18
.end method
