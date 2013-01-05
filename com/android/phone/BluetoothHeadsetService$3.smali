.class Lcom/android/phone/BluetoothHeadsetService$3;
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
    .line 385
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 390
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 391
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_46

    .line 410
    :cond_9
    :goto_9
    return-void

    .line 394
    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_9

    .line 400
    :pswitch_10
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 401
    const-string v1, "Bluetooth HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLC timeout, disconnect the headset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1102(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    .line 404
    :try_start_3a
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_9

    .line 405
    :catch_44
    move-exception v1

    goto :goto_9

    .line 391
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
