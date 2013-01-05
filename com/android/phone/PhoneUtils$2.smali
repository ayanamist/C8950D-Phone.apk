.class final Lcom/android/phone/PhoneUtils$2;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1867
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1870
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 1878
    :goto_5
    return-void

    .line 1872
    :pswitch_6
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->access$202(Z)Z

    .line 1873
    const-string v1, "PhoneUtils"

    const-string v2, "Receive EVENT_LINE_CONTROL_INFO. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1875
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$300(Lcom/android/internal/telephony/Phone;)V

    goto :goto_5

    .line 1870
    :pswitch_data_1e
    .packed-switch 0x7d
        :pswitch_6
    .end packed-switch
.end method
