.class public Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;
.super Landroid/os/Handler;
.source "BaseVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/voicerecorder/BaseVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;


# direct methods
.method public constructor <init>(Landroid/media/voicerecorder/BaseVoiceRecorder;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 164
    iput-object p1, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 165
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 166
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_48

    .line 195
    :goto_5
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "EventHandler:handleMessage()->will call record listener callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v0, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

    if-eqz v0, :cond_1b

    .line 197
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    iget-object v0, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mOnVoiceRecorderListener:Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;->onVoiceRecorderEvent(I)V

    .line 198
    :cond_1b
    return-void

    .line 175
    :sswitch_1c
    const-string v0, "BaseVoiceRecorder"

    const-string v1, "EventHandler:handleMessage()->record_event_start_ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    goto :goto_5

    .line 179
    :sswitch_2d
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mIsCanRecording:Ljava/lang/Boolean;

    .line 180
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->release()V

    goto :goto_5

    .line 189
    :sswitch_3c
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    .line 190
    iget-object v0, p0, Landroid/media/voicerecorder/BaseVoiceRecorder$EventHandler;->this$0:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->release()V

    goto :goto_5

    .line 172
    nop

    :sswitch_data_48
    .sparse-switch
        0x5 -> :sswitch_3c
        0x1c -> :sswitch_3c
        0x101 -> :sswitch_3c
        0x102 -> :sswitch_3c
        0x103 -> :sswitch_3c
        0x104 -> :sswitch_3c
        0x121 -> :sswitch_1c
        0x122 -> :sswitch_2d
    .end sparse-switch
.end method
