.class Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalInfoTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .registers 3
    .parameter
    .parameter "toneId"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2255
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2256
    iput p2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    .line 2257
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalInfoTonePlayer.run(toneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2263
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2265
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2268
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2270
    :cond_3c
    return-void
.end method
