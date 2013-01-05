.class public Landroid/media/voicerecorder/TIVoiceRecorder;
.super Landroid/media/voicerecorder/BaseVoiceRecorder;
.source "TIVoiceRecorder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TIVoiceRecorder"

.field private static final RECORDER_START:I = 0x2711

.field private static final RECORDER_STOP:I = 0x2712

.field public static final SDCARD_NO_VOLUME:I = -0x1

.field static final SDCARD_VOLUME_SERVCIE_ACTION:Ljava/lang/String; = "com.android.phone.action.SdcardVolumeService"


# instance fields
.field mRecorder:Landroid/media/MediaRecorder;

.field mRecorderHandler:Landroid/os/Handler;

.field nCtx:Landroid/content/Context;

.field nSdcardService:Landroid/app/Service;

.field private nSdcardServiceConnection:Landroid/content/ServiceConnection;

.field nSdcardVolumeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;-><init>()V

    .line 52
    iput-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 57
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$1;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder$1;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardVolumeHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$2;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder$2;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorderHandler:Landroid/os/Handler;

    .line 91
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$3;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder$3;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardServiceConnection:Landroid/content/ServiceConnection;

    .line 108
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_32

    .line 116
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    .line 123
    :goto_2a
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 124
    return-void

    .line 117
    :cond_32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 118
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_2a

    .line 120
    :cond_40
    iput-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_2a
.end method

.method static synthetic access$000(Landroid/media/voicerecorder/TIVoiceRecorder;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;->startRecording(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/voicerecorder/TIVoiceRecorder;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;->stopRecording(I)V

    return-void
.end method

.method private setState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 311
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState()->state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState()->mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    if-ne p1, v0, :cond_37

    .line 317
    :goto_36
    return-void

    .line 316
    :cond_37
    iput p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    goto :goto_36
.end method

.method private startCheckingService()V
    .registers 5

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.action.SdcardVolumeService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nCtx:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 342
    return-void
.end method

.method private startRecording(Ljava/lang/String;)V
    .registers 8
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 150
    const-string v2, "TIVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecording()->record file path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez p1, :cond_21

    .line 152
    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    .line 227
    :goto_20
    return-void

    .line 155
    :cond_21
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    .line 157
    const-string v2, "TIVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecording()->mRecordFilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_62

    .line 159
    const-string v2, "TIVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecording()->mRecorder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 168
    :cond_62
    :try_start_62
    invoke-virtual {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->setAudioSource()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_d6

    .line 176
    :goto_65
    :try_start_65
    invoke-virtual {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->setOutputFormat()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_e2

    .line 184
    :goto_68
    :try_start_68
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6e} :catch_ef

    .line 190
    :goto_6e
    :try_start_6e
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_73} :catch_fc

    .line 198
    :goto_73
    :try_start_73
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->pre-call prepare()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 200
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->post-call prepare()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_86} :catch_109

    .line 209
    :try_start_86
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->pre-call start()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 211
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->post-call start()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_99} :catch_119

    .line 219
    const-string v2, "TIVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecording()->mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->setState(I)V

    .line 221
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->startRecordingCall()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->startRecordingCall()V

    .line 224
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->pre-dealEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v2, 0x121

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    .line 226
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->post-dealEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 170
    :catch_d6
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->audio source error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65

    .line 178
    .end local v0           #e:Ljava/lang/Exception;
    :catch_e2
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->output format error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_68

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    :catch_ef
    move-exception v0

    .line 186
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->audio encoder error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6e

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    :catch_fc
    move-exception v0

    .line 192
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->output file error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_73

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :catch_109
    move-exception v1

    .line 202
    .local v1, exception:Ljava/io/IOException;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->prepare exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    .line 204
    iput-object v5, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_20

    .line 213
    .end local v1           #exception:Ljava/io/IOException;
    :catch_119
    move-exception v1

    .line 214
    .local v1, exception:Ljava/lang/RuntimeException;
    const-string v2, "TIVoiceRecorder"

    const-string v3, "startRecording()->start exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/16 v2, 0x103

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    .line 216
    iput-object v5, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_20
.end method

.method private stopCheckingService()V
    .registers 3

    .prologue
    .line 348
    const-string v0, "TIVoiceRecorder"

    const-string v1, "stopCheckingService() method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardService:Landroid/app/Service;

    if-eqz v0, :cond_19

    .line 350
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardService:Landroid/app/Service;

    check-cast v0, Lcom/android/phone/SdcardVolumeService;

    invoke-virtual {v0}, Lcom/android/phone/SdcardVolumeService;->cancelTimer()V

    .line 352
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nCtx:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 355
    :cond_19
    return-void
.end method

.method private stopRecording(I)V
    .registers 6
    .parameter "callState"

    .prologue
    const/4 v3, 0x0

    .line 249
    const-string v0, "TIVoiceRecorder"

    const-string v1, "VoiceRecord#stop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/voicerecorder/TIVoiceRecorder;->setState(I)V

    .line 252
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_11

    .line 281
    :goto_10
    return-void

    .line 255
    :cond_11
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop()->mRecorder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 257
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 258
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 259
    iput-object v3, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 261
    packed-switch p1, :pswitch_data_70

    .line 273
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop RecordingCall error,stop all RecordingCall [callState]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 275
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 279
    :goto_5b
    invoke-direct {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->stopCheckingService()V

    .line 280
    const/16 v0, 0x122

    invoke-virtual {p0, v0}, Landroid/media/voicerecorder/TIVoiceRecorder;->dealEvent(I)V

    goto :goto_10

    .line 263
    :pswitch_64
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5b

    .line 266
    :pswitch_67
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5b

    .line 269
    :pswitch_6a
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 270
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5b

    .line 261
    nop

    :pswitch_data_70
    .packed-switch 0xa
        :pswitch_64
        :pswitch_67
        :pswitch_6a
    .end packed-switch
.end method


# virtual methods
.method public dealEvent(I)V
    .registers 6
    .parameter "eventType"

    .prologue
    .line 323
    const-string v1, "TIVoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealEvent()->eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 326
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-virtual {v1, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    return-void
.end method

.method public gainVolumeHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nSdcardVolumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 287
    const-string v0, "TIVoiceRecorder"

    const-string v1, "VoiceRecord#pause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->pause()V

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/voicerecorder/TIVoiceRecorder;->stop(I)V

    .line 294
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/media/voicerecorder/TIVoiceRecorder;->stopCheckingService()V

    .line 302
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release()->mRecorder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2b

    .line 304
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 305
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 308
    :cond_2b
    return-void
.end method

.method protected setAudioSource()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 370
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 3
    .parameter "inCallScreen"

    .prologue
    .line 361
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 362
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->nCtx:Landroid/content/Context;

    .line 363
    return-void
.end method

.method protected setOutputFormat()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 374
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 131
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start()->path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$4;

    invoke-direct {v1, p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder$4;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    :goto_2b
    return-void

    .line 144
    :cond_2c
    const-string v0, "TIVoiceRecorder"

    const-string v1, "VoiceRecorder: can not start with empty path."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public stop(I)V
    .registers 5
    .parameter "callState"

    .prologue
    .line 234
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop(int)->callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder$5;

    invoke-direct {v1, p0, p1}, Landroid/media/voicerecorder/TIVoiceRecorder$5;-><init>(Landroid/media/voicerecorder/TIVoiceRecorder;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 245
    return-void
.end method
