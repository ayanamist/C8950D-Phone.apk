.class public abstract Landroid/media/voicerecorder/BaseVoiceRecorder;
.super Ljava/lang/Object;
.source "BaseVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;,
        Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;,
        Landroid/media/voicerecorder/BaseVoiceRecorder$VoiceRecordEvent;
    }
.end annotation


# static fields
.field public static final CHANGE_ALL_RECORDINGCALL:I = 0xf

.field public static final CHANGE_BG_RECORDINGCALL:I = 0xe

.field public static final CHANGE_FG_RECORDINGCALL:I = 0xd

.field protected static final DBG:Z = true

.field public static final ERROR:I = 0x3

.field public static final IDLE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BaseVoiceRecorder"

.field protected static final PHONE_DISCONNECT:I = 0x66

.field protected static final PHONE_STATE_CHANGED:I = 0x65

.field public static final QC_RECORDER_TYPE:I = 0x1

.field public static final RECORDING:I = 0x2

.field public static final START_RECORDINGCALL:I = 0x10

.field public static final STOP_ALL_RECORDCALL:I = 0xc

.field public static final STOP_BG_RECORDCALL:I = 0xb

.field public static final STOP_FG_RECORDCALL:I = 0xa

.field public static final TI_RECORDER_TYPE:I


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mEventHandler:Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;

.field protected mHandler:Landroid/os/Handler;

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

.field protected mIsCanRecording:Ljava/lang/Boolean;

.field protected mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

.field protected mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

.field protected mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

.field protected mRecordFilePath:Ljava/lang/String;

.field protected mRecordHandler:Landroid/os/Handler;

.field protected mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    .line 122
    new-instance v0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/BaseVoiceRecorder$1;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;)V

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/BaseVoiceRecorder$2;-><init>(Landroid/media/voicerecorder/BaseVoiceRecorder;)V

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method


# virtual methods
.method protected changeBgRecordingCall()V
    .registers 8

    .prologue
    const v6, 0x7f0c0304

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 484
    const-string v2, "BaseVoiceRecorder"

    const-string v3, "changeBgRecordingCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v2, :cond_33

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v3}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 488
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_63

    .line 489
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 490
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 491
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 527
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_33
    :goto_33
    return-void

    .line 492
    .restart local v1       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_34
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 496
    :try_start_44
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->setupPathFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->start(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_4b} :catch_4e

    .line 504
    :goto_4b
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_33

    .line 497
    :catch_4e
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4b

    .line 507
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_63
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 508
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_33

    .line 509
    :cond_72
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 513
    :try_start_84
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->setupPathFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->start(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_84 .. :try_end_8b} :catch_8e

    .line 521
    :goto_8b
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_33

    .line 514
    :catch_8e
    move-exception v0

    .line 515
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_8b
.end method

.method protected changeFgRecordingCall()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 440
    const-string v1, "BaseVoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeFgRecordingCall [mPhoneFgRecording]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mPhoneFgRecordingState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v3}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_7b

    .line 445
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 446
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 447
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getForegroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 448
    invoke-virtual {p0, v5}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 449
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 450
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 476
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_5c
    :goto_5c
    return-void

    .line 452
    .restart local v0       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_5d
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "This time is status change do not need to stop mPhoneFgRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 455
    :cond_65
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 456
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->pause()V

    .line 457
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5c

    .line 460
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_7b
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 461
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 462
    invoke-virtual {p0, v5}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 463
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 464
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5c

    .line 466
    :cond_a1
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "This time is status change do not need to stop mPhoneFgRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 469
    :cond_a9
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/voicerecorder/RecordingCall;->equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 470
    invoke-virtual {p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->pause()V

    .line 471
    iput-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5c
.end method

.method public getRecordFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    return v0
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public isRecording()Z
    .registers 4

    .prologue
    .line 318
    const-string v0, "BaseVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseVoiceRecorder::isRecording()->mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public abstract pause()V
.end method

.method protected phoneStateChange()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 374
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "VoiceRecord#phoneStateChange() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_15

    :cond_11
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v1, :cond_1d

    .line 376
    :cond_15
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "The mPhoneBgRecording  and mPhoneFgRecording is null or mCM is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_1c
    return-void

    .line 380
    :cond_1d
    const/4 v0, 0x0

    .line 382
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v3, v1, :cond_44

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v4, v1, :cond_44

    .line 385
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 386
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 387
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c

    .line 388
    :cond_44
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v3, v1, :cond_5e

    .line 389
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 390
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 391
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c

    .line 392
    :cond_5e
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v1, :cond_78

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v1

    if-ne v4, v1, :cond_78

    .line 393
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 394
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c

    .line 397
    :cond_78
    const-string v1, "BaseVoiceRecorder"

    const-string v2, "phoneStateChange file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method protected recordingCallDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 408
    const-string v0, "BaseVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordingCallDisconnect [mPhoneFgRecording] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [mPhoneBgRecording]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v0, :cond_8c

    .line 412
    :cond_2f
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 414
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v3, v0, :cond_78

    .line 415
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 420
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 422
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v0}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCall()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v3, v0, :cond_82

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 431
    :cond_77
    :goto_77
    return-void

    .line 417
    :cond_78
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/RecordingCall;->delRecording(Ljava/lang/String;)V

    goto :goto_54

    .line 425
    :cond_82
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/RecordingCall;->delRecording(Ljava/lang/String;)V

    goto :goto_77

    .line 429
    :cond_8c
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "recordingCallDisconnect return[mPhoneFgRecording is null and mPhoneBgRecording is null]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77
.end method

.method public registerForNotifications()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 341
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "registerForNotifications..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_14

    .line 344
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "The call manager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_13
    return-void

    .line 348
    :cond_14
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 349
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_13
.end method

.method public abstract release()V
.end method

.method public setOnVoiceRecorderListener(Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 363
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

    .line 364
    return-void
.end method

.method protected setupPathFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->setupPathFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract start(Ljava/lang/String;)V
.end method

.method protected startRecordingCall()V
    .registers 3

    .prologue
    .line 534
    new-instance v0, Landroid/media/voicerecorder/RecordingCall;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v1}, Landroid/media/voicerecorder/RecordingCall;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    .line 535
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/RecordingCall;->setRecordingCallState(I)V

    .line 536
    return-void
.end method

.method public abstract stop(I)V
.end method

.method public unregisterForNotifications()V
    .registers 3

    .prologue
    .line 326
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "unregisterForNotifications..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_13

    .line 329
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "The call manager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_12
    return-void

    .line 333
    :cond_13
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 334
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    goto :goto_12
.end method
