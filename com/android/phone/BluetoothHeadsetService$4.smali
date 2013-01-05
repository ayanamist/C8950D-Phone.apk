.class Lcom/android/phone/BluetoothHeadsetService$4;
.super Landroid/os/Handler;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 2
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 581
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    .line 605
    :cond_1c
    :goto_1c
    return-void

    .line 586
    :cond_1d
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_72

    goto :goto_1c

    .line 593
    :pswitch_23
    const-string v2, "Rfcomm connected"

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 595
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/HeadsetBase;

    .line 598
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 601
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2402(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 602
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    goto :goto_1c

    .line 588
    .end local v1           #headset:Landroid/bluetooth/HeadsetBase;
    :pswitch_60
    const-string v2, "Rfcomm error"

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 590
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1c

    .line 586
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_23
        :pswitch_60
    .end packed-switch
.end method
