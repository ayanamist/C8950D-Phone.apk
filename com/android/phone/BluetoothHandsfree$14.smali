.class Lcom/android/phone/BluetoothHandsfree$14;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 2668
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "AT+BIA command received.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    array-length v1, p1

    if-ge v1, v3, :cond_18

    .line 2670
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Error Processing command output AT+BIA.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2685
    :goto_17
    return-object v1

    .line 2674
    :cond_18
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "AT+BIA command processing successful.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    array-length v1, p1

    if-ge v0, v1, :cond_4c

    const/4 v1, 0x7

    if-ge v0, v1, :cond_4c

    .line 2676
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_41

    .line 2678
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_44

    .line 2679
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    shl-int v2, v3, v0

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3672(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2675
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 2681
    :cond_44
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    shl-int v2, v3, v0

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3676(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_41

    .line 2685
    :cond_4c
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_17
.end method
