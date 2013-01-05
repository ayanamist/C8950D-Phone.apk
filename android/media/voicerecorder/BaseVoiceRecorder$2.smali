.class Landroid/media/voicerecorder/BaseVoiceRecorder$2;
.super Landroid/os/Handler;
.source "BaseVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/voicerecorder/BaseVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;


# direct methods
.method constructor <init>(Landroid/media/voicerecorder/BaseVoiceRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0x12c

    const/16 v6, 0x10

    const/4 v5, 0x3

    .line 205
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, message:Landroid/os/Message;
    const-string v2, "BaseVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v2, "BaseVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRecordHandler [mPhoneFgRecording]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [mPhoneBgRecording]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [mIsCanRecording]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_158

    .line 271
    :cond_5e
    :goto_5e
    return-void

    .line 212
    :pswitch_5f
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v2, :cond_c2

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v2}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v2

    if-ne v5, v2, :cond_c2

    .line 213
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 214
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeFgRecordingCall()V

    .line 217
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_a5

    .line 218
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    .line 219
    .local v1, sub:I
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v2, :cond_5e

    .line 220
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5e

    .line 223
    .end local v1           #sub:I
    :cond_a5
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v2, :cond_5e

    .line 224
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto :goto_5e

    .line 230
    :cond_c2
    const-string v2, "BaseVoiceRecorder"

    const-string v3, "mPhoneFgRecording is null or mPhoneFgRecordingState is not RECORDING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 234
    :pswitch_ca
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeBgRecordingCall()V

    goto :goto_5e

    .line 237
    :pswitch_d0
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v2, :cond_f8

    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    invoke-virtual {v2}, Landroid/media/voicerecorder/RecordingCall;->getRecordingCallState()I

    move-result v2

    if-ne v5, v2, :cond_f8

    .line 238
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    .line 239
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeFgRecordingCall()V

    .line 240
    iput v6, v0, Landroid/os/Message;->what:I

    .line 241
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5e

    .line 243
    :cond_f8
    const-string v2, "BaseVoiceRecorder"

    const-string v3, "mPhoneFgRecording is null or mPhoneFgRecordingState is not RECORDING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 247
    :pswitch_101
    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_14d

    .line 248
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->changeBgRecordingCall()V

    .line 251
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_135

    .line 252
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    .line 253
    .restart local v1       #sub:I
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 254
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto/16 :goto_5e

    .line 257
    .end local v1           #sub:I
    :cond_135
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 258
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v3, v3, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordingCall:Landroid/media/voicerecorder/RecordingCall;

    iput-object v3, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    goto/16 :goto_5e

    .line 264
    :cond_14d
    iput v6, v0, Landroid/os/Message;->what:I

    .line 265
    iget-object v2, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v2, v2, Landroid/media/voicerecorder/BaseVoiceRecorder;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5e

    .line 210
    :pswitch_data_158
    .packed-switch 0xd
        :pswitch_5f
        :pswitch_ca
        :pswitch_d0
        :pswitch_101
    .end packed-switch
.end method
