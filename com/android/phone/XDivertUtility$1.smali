.class Lcom/android/phone/XDivertUtility$1;
.super Landroid/os/Handler;
.source "XDivertUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/XDivertUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertUtility;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertUtility;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 150
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_164

    .line 198
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 200
    :cond_9
    :goto_9
    return-void

    .line 152
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 153
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 155
    .local v1, status:Z
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9

    .line 158
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 159
    .local v2, subscription:I
    const-string v3, "XDivertUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscription = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 166
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v4, v2}, Lcom/android/phone/XDivertUtility;->getSimImsi(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 167
    const-string v3, "XDivertUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM_RECORDS_LOADED mImsiFromSim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v5}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mStoredImsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v5}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_f3

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v4}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 174
    :cond_ad
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    .line 175
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v4}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v2}, Lcom/android/phone/XDivertUtility;->setSimImsi(Ljava/lang/String;I)V

    .line 176
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 188
    :cond_c9
    :goto_c9
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$600(Lcom/android/phone/XDivertUtility;)[Z

    move-result-object v3

    aget-boolean v3, v3, v6

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$600(Lcom/android/phone/XDivertUtility;)[Z

    move-result-object v3

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-nez v3, :cond_9

    .line 189
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/MSimCallNotifier;->getXDivertStatus()Z

    move-result v1

    .line 190
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    goto/16 :goto_9

    .line 177
    :cond_f3
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_c9

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_c9

    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v4}, Lcom/android/phone/XDivertUtility;->access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 181
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$500(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v4, v2}, Lcom/android/phone/XDivertUtility;->getNumber(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 182
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$600(Lcom/android/phone/XDivertUtility;)[Z

    move-result-object v3

    aput-boolean v6, v3, v2

    .line 183
    const-string v3, "XDivertUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored Line Number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v5}, Lcom/android/phone/XDivertUtility;->access$500(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c9

    .line 194
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #status:Z
    .end local v2           #subscription:I
    :pswitch_155
    const-string v3, "XDivertUtility"

    const-string v4, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lcom/android/phone/XDivertUtility$1;->this$0:Lcom/android/phone/XDivertUtility;

    invoke-static {v3}, Lcom/android/phone/XDivertUtility;->access$700(Lcom/android/phone/XDivertUtility;)V

    goto/16 :goto_9

    .line 150
    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_a
        :pswitch_155
    .end packed-switch
.end method
