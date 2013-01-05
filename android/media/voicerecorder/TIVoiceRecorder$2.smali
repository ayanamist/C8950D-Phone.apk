.class Landroid/media/voicerecorder/TIVoiceRecorder$2;
.super Landroid/os/Handler;
.source "TIVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/voicerecorder/TIVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/voicerecorder/TIVoiceRecorder;


# direct methods
.method constructor <init>(Landroid/media/voicerecorder/TIVoiceRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Landroid/media/voicerecorder/TIVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 88
    :cond_5
    :goto_5
    return-void

    .line 74
    :pswitch_6
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/voicerecorder/TIVoiceRecorder;->access$000(Landroid/media/voicerecorder/TIVoiceRecorder;Ljava/lang/String;)V

    goto :goto_5

    .line 79
    :pswitch_12
    const-string v0, "TIVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordHandler->message.arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget v0, v0, Landroid/media/voicerecorder/BaseVoiceRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 82
    iget-object v0, p0, Landroid/media/voicerecorder/TIVoiceRecorder$2;->this$0:Landroid/media/voicerecorder/TIVoiceRecorder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/media/voicerecorder/TIVoiceRecorder;->access$100(Landroid/media/voicerecorder/TIVoiceRecorder;I)V

    goto :goto_5

    .line 72
    nop

    :pswitch_data_3c
    .packed-switch 0x2711
        :pswitch_6
        :pswitch_12
    .end packed-switch
.end method
