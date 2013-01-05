.class Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfcommConnectThread"
.end annotation


# static fields
.field private static final ECONNREFUSED:I = -0x6f

.field private static final EINTERRUPT:I = -0x3e8


# instance fields
.field private channel:I

.field private device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 5
    .parameter
    .parameter "device"
    .parameter "channel"
    .parameter "type"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    .line 440
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 441
    iput-object p2, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 442
    iput p3, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->channel:I

    .line 443
    iput p4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->type:I

    .line 444
    return-void
.end method

.method private waitForConnect(Landroid/bluetooth/HeadsetBase;)I
    .registers 7
    .parameter "headset"

    .prologue
    const/16 v2, -0x3e8

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/16 v3, 0x28

    if-ge v0, v3, :cond_3c

    if-nez v1, :cond_3c

    .line 451
    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/bluetooth/HeadsetBase;->waitForAsyncConnect(ILandroid/os/Handler;)I

    move-result v1

    .line 457
    if-ne v1, v2, :cond_2f

    .line 458
    const-string v3, "result: EINTERRUPT, waitForConnect disconnecting"

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 460
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 471
    :goto_2e
    return v2

    .line 466
    :cond_2f
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 467
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    goto :goto_2e

    .line 449
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3c
    move v2, v1

    .line 471
    goto :goto_2e
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 479
    .local v6, timestamp:J
    new-instance v1, Landroid/bluetooth/HeadsetBase;

    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v11, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->channel:I

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I)V

    .line 482
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->waitForConnect(Landroid/bluetooth/HeadsetBase;)I

    move-result v2

    .line 484
    .local v2, result:I
    const/16 v8, -0x3e8

    if-eq v2, v8, :cond_57

    const/4 v8, 0x1

    if-eq v2, v8, :cond_57

    .line 485
    const/16 v8, -0x6f

    if-ne v2, v8, :cond_47

    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-nez v8, :cond_47

    .line 488
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1702(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 489
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 490
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 571
    :cond_46
    :goto_46
    return-void

    .line 493
    :cond_47
    const-string v8, "Bluetooth HSHFP"

    const-string v9, "Trying to connect to rfcomm socket again after 1 sec"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-wide/16 v8, 0x3e8

    :try_start_50
    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_108

    .line 500
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->waitForConnect(Landroid/bluetooth/HeadsetBase;)I

    move-result v2

    .line 502
    :cond_57
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1702(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 505
    const/16 v8, -0x3e8

    if-ne v2, v8, :cond_dc

    .line 509
    const/4 v3, 0x0

    .line 510
    .local v3, retry:Z
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, retry_address:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 512
    .local v5, s:Ljava/lang/StringBuffer;
    const/16 v8, 0x8

    const/16 v9, 0x11

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 513
    const-string v4, ""

    .line 514
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    const-string v8, "00:0D:FD"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 518
    const-wide/16 v8, 0xfa0

    :try_start_91
    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->sleep(J)V

    .line 519
    const/4 v3, 0x1

    .line 520
    const-string v8, "Bluetooth HSHFP"

    const-string v9, "Trying to connect again for S9/S10 Motorola"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 522
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 523
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->waitForConnect(Landroid/bluetooth/HeadsetBase;)I

    move-result v2

    .line 524
    const-string v8, "Bluetooth HSHFP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_d2} :catch_10b

    .line 528
    if-eqz v3, :cond_46

    const/16 v8, -0x3e8

    if-eq v2, v8, :cond_46

    const/16 v8, -0x6f

    if-eq v2, v8, :cond_46

    .line 538
    .end local v3           #retry:Z
    .end local v4           #retry_address:Ljava/lang/String;
    .end local v5           #s:Ljava/lang/StringBuffer;
    :cond_dc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RFCOMM connection attempt took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 541
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    goto/16 :goto_46

    .line 496
    :catch_108
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/InterruptedException;
    goto/16 :goto_46

    .line 525
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v3       #retry:Z
    .restart local v4       #retry_address:Ljava/lang/String;
    .restart local v5       #s:Ljava/lang/StringBuffer;
    :catch_10b
    move-exception v0

    .line 526
    .restart local v0       #e:Ljava/lang/InterruptedException;
    goto/16 :goto_46

    .line 553
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #retry:Z
    .end local v4           #retry_address:Ljava/lang/String;
    .end local v5           #s:Ljava/lang/StringBuffer;
    :cond_10e
    if-nez v2, :cond_113

    .line 554
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 560
    :cond_113
    if-gez v2, :cond_13d

    .line 561
    const-string v8, "Bluetooth HSHFP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "headset.waitForAsyncConnect() error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_46

    .line 564
    :cond_13d
    if-nez v2, :cond_16d

    .line 565
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 566
    const-string v8, "Bluetooth HSHFP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHeadset.waitForAsyncConnect() error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(timeout)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 569
    :cond_16d
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_46
.end method
