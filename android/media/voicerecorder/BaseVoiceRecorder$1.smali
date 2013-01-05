.class Landroid/media/voicerecorder/BaseVoiceRecorder$1;
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
    .line 122
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 126
    const-string v4, "BaseVoiceRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getstate()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v6}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_74

    .line 159
    :cond_23
    :goto_23
    return-void

    .line 133
    :pswitch_24
    const/4 v2, 0x0

    .line 134
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 136
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v4, :cond_5c

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    if-eq v4, v5, :cond_5c

    .line 137
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 142
    :goto_3c
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneBgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-nez v4, :cond_56

    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mPhoneFgRecording:Landroid/media/voicerecorder/RecordingCall;

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v4, v5, :cond_56

    const/4 v4, 0x3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v4, v5, :cond_23

    .line 145
    :cond_56
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->phoneStateChange()V

    goto :goto_23

    .line 139
    :cond_5c
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v4, v4, Landroid/media/voicerecorder/BaseVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_3c

    .line 151
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_65
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 152
    .local v3, r:Landroid/os/AsyncResult;
    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 153
    .local v1, c:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$1;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->recordingCallDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto :goto_23

    .line 127
    nop

    :pswitch_data_74
    .packed-switch 0x65
        :pswitch_24
        :pswitch_65
    .end packed-switch
.end method
