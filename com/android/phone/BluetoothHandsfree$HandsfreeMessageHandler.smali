.class final Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandsfreeMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    .line 1594
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1595
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1592
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 1599
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_116

    .line 1676
    :cond_5
    :goto_5
    return-void

    .line 1601
    :pswitch_6
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1607
    :try_start_9
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1609
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1610
    monitor-exit v2

    goto :goto_5

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1

    .line 1613
    :pswitch_1c
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1616
    :try_start_1f
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1617
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1618
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Timeout waiting for call to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1620
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1621
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1624
    :cond_50
    monitor-exit v2

    goto :goto_5

    :catchall_52
    move-exception v1

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_1f .. :try_end_54} :catchall_52

    throw v1

    .line 1627
    :pswitch_55
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1630
    :try_start_58
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1631
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1632
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Timeout waiting for voice recognition to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1635
    :cond_74
    monitor-exit v2

    goto :goto_5

    :catchall_76
    move-exception v1

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_76

    throw v1

    .line 1638
    :pswitch_79
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1643
    :try_start_7c
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 1644
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Starting SCO anyway"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1647
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1649
    :cond_bb
    monitor-exit v2

    goto/16 :goto_5

    :catchall_be
    move-exception v1

    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_7c .. :try_end_c0} :catchall_be

    throw v1

    .line 1652
    :pswitch_c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1653
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 1654
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v2, 0xa

    invoke-static {v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5

    .line 1658
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_d8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    monitor-enter v2

    .line 1660
    :try_start_df
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f1

    .line 1664
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1667
    :cond_f1
    monitor-exit v2

    goto/16 :goto_5

    :catchall_f4
    move-exception v1

    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_df .. :try_end_f6} :catchall_f4

    throw v1

    .line 1670
    :pswitch_f7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1673
    :pswitch_106
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1599
    nop

    :pswitch_data_116
    .packed-switch 0x3
        :pswitch_6
        :pswitch_1c
        :pswitch_55
        :pswitch_79
        :pswitch_c1
        :pswitch_d8
        :pswitch_f7
        :pswitch_106
    .end packed-switch
.end method
