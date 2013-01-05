.class Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XDivertUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/XDivertUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XDivertBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertUtility;


# direct methods
.method private constructor <init>(Lcom/android/phone/XDivertUtility;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/XDivertUtility;Lcom/android/phone/XDivertUtility$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;-><init>(Lcom/android/phone/XDivertUtility;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, action:Ljava/lang/String;
    const-string v3, "XDivertUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action intent recieved:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v4}, Lcom/android/phone/XDivertUtility;->access$100(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimPhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/MSimPhoneApp;->getDefaultSubscription()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 138
    .local v2, subscription:I
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 139
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$100(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimPhoneApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 140
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;->this$0:Lcom/android/phone/XDivertUtility;

    iget-object v3, v3, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 141
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;->this$0:Lcom/android/phone/XDivertUtility;

    iget-object v3, v3, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_51
    return-void
.end method
