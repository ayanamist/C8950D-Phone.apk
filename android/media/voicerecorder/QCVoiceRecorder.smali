.class public Landroid/media/voicerecorder/QCVoiceRecorder;
.super Landroid/media/voicerecorder/BaseVoiceRecorder;
.source "QCVoiceRecorder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoiceRecorder"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 185
    :try_start_0
    const-string v1, "voicerecorder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 186
    const-string v1, "VoiceRecorder"

    const-string v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_c} :catch_d

    .line 190
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_c
    return-void

    .line 187
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_d
    move-exception v0

    .line 188
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "VoiceRecorder"

    const-string v2, "WARNING: Could not load libvoicerecorder.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 4
    .parameter "cm"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_13

    .line 61
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    .line 67
    :goto_12
    return-void

    .line 62
    :cond_13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 63
    new-instance v1, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_12

    .line 65
    :cond_21
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    goto :goto_12
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;I)V
    .registers 5
    .parameter "VoiceRecorder_ref"
    .parameter "what"

    .prologue
    .line 172
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/voicerecorder/QCVoiceRecorder;

    .line 173
    .local v1, mr:Landroid/media/voicerecorder/QCVoiceRecorder;
    if-nez v1, :cond_b

    .line 181
    :cond_a
    :goto_a
    return-void

    .line 177
    :cond_b
    iget-object v2, v1, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    if-eqz v2, :cond_a

    .line 178
    iget-object v2, v1, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-virtual {v2, p1}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, message:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/voicerecorder/BaseVoiceRecorder;->mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method public native native_start(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native native_stop()V
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 97
    const-string v0, "VoiceRecorder"

    const-string v1, "VoiceRecord#pause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    .line 100
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->pause()V

    .line 103
    invoke-virtual {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_stop()V

    .line 104
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_release()V

    .line 139
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 195
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 196
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 76
    const-string v0, "VoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceRecord#start path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    .line 81
    invoke-virtual {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->startRecordingCall()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_setup(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_start(Ljava/lang/String;)V

    .line 91
    :goto_31
    return-void

    .line 89
    :cond_32
    const-string v0, "VoiceRecorder"

    const-string v1, "VoiceRecorder: can not start with empty path."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public stop(I)V
    .registers 6
    .parameter "callState"

    .prologue
    const/4 v3, 0x0

    .line 111
    const-string v0, "VoiceRecorder"

    const-string v1, "VoiceRecord#stop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    packed-switch p1, :pswitch_data_3a

    .line 124
    const-string v0, "VoiceRecorder"

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

    .line 125
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 126
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 129
    :goto_27
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    .line 130
    invoke-virtual {p0}, Landroid/media/voicerecorder/QCVoiceRecorder;->native_stop()V

    .line 131
    return-void

    .line 114
    :pswitch_2e
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_27

    .line 117
    :pswitch_31
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_27

    .line 120
    :pswitch_34
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 121
    iput-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_27

    .line 112
    nop

    :pswitch_data_3a
    .packed-switch 0xa
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch
.end method
