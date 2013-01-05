.class Lcom/android/phone/BluetoothHeadsetService$2$2;
.super Ljava/lang/Object;
.source "BluetoothHeadsetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHeadsetService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BluetoothHeadsetService$2;

.field final synthetic val$currDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService$2;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iput-object p2, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->val$currDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 332
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 336
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->val$currDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_31

    .line 338
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->val$currDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 341
    :try_start_24
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$2$2;->val$currDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_32

    .line 344
    :cond_31
    :goto_31
    return-void

    .line 342
    :catch_32
    move-exception v0

    goto :goto_31
.end method
