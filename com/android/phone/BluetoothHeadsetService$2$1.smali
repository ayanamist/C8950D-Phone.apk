.class Lcom/android/phone/BluetoothHeadsetService$2$1;
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


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService$2;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$2$1;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$1;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1102(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    .line 317
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$1;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$2$1;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v1, v1, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 318
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$2$1;->this$1:Lcom/android/phone/BluetoothHeadsetService$2;

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    .line 319
    return-void
.end method
