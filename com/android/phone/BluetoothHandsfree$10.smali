.class Lcom/android/phone/BluetoothHandsfree$10;
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
    .line 2547
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 2550
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CMER: 3,0,0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "1"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_23
    const-string v0, "0"

    goto :goto_17
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 10
    .parameter "args"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2555
    array-length v1, p1

    if-ge v1, v7, :cond_e

    .line 2557
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2597
    :goto_d
    return-object v1

    .line 2558
    :cond_e
    aget-object v1, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    aget-object v1, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    aget-object v1, p1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 2560
    const/4 v0, 0x0

    .line 2561
    .local v0, valid:Z
    aget-object v1, p1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 2562
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2563
    const/4 v0, 0x1

    .line 2568
    :cond_45
    :goto_45
    if-eqz v0, :cond_a5

    .line 2569
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9e

    .line 2570
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2571
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2574
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2579
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 2580
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2591
    :cond_6f
    :goto_6f
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_d

    .line 2564
    :cond_75
    aget-object v1, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2565
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2566
    const/4 v0, 0x1

    goto :goto_45

    .line 2583
    :cond_88
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 2588
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_6f

    .line 2593
    :cond_9e
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_d

    .line 2597
    .end local v0           #valid:Z
    :cond_a5
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1, v7}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    goto/16 :goto_d
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 2601
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CMER: (3),(0),(0),(0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
