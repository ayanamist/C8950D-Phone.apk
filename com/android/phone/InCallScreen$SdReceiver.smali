.class Lcom/android/phone/InCallScreen$SdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 5611
    iput-object p1, p0, Lcom/android/phone/InCallScreen$SdReceiver;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 5615
    iget-object v0, p0, Lcom/android/phone/InCallScreen$SdReceiver;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/media/voicerecorder/BaseVoiceRecorder;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 5617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5618
    iget-object v0, p0, Lcom/android/phone/InCallScreen$SdReceiver;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/media/voicerecorder/BaseVoiceRecorder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    .line 5620
    iget-object v0, p0, Lcom/android/phone/InCallScreen$SdReceiver;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2402(Lcom/android/phone/InCallScreen;Z)Z

    .line 5626
    :cond_25
    :goto_25
    return-void

    .line 5622
    :cond_26
    iget-object v0, p0, Lcom/android/phone/InCallScreen$SdReceiver;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2402(Lcom/android/phone/InCallScreen;Z)Z

    goto :goto_25
.end method
