.class Lcom/android/phone/BluetoothHandsfree$17;
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

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2709
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$17;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$17;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private isValidDtmf(C)Z
    .registers 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 2733
    sparse-switch p1, :sswitch_data_10

    .line 2738
    const/16 v1, 0xe

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 2741
    :goto_d
    :sswitch_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 2733
    :sswitch_data_10
    .sparse-switch
        0x23 -> :sswitch_d
        0x2a -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2712
    array-length v1, p1

    if-lt v1, v3, :cond_3a

    .line 2714
    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_31

    .line 2715
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2719
    .local v0, c:C
    :goto_17
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$17;->isValidDtmf(C)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2723
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$17;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)Lcom/broadcom/bt/app/phone/DTMFUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/app/phone/DTMFUtil;->playDTMF(C)V

    .line 2725
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$17;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 2727
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2730
    .end local v0           #c:C
    :goto_30
    return-object v1

    .line 2717
    :cond_31
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    goto :goto_17

    .line 2730
    .end local v0           #c:C
    :cond_3a
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_30
.end method
