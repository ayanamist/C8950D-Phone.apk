.class Lcom/android/phone/BluetoothHandsfree$18;
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
    .line 2747
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 9

    .prologue
    .line 2752
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2755
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2758
    .local v3, phoneType:I
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2759
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2760
    .local v1, number:Ljava/lang/String;
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2762
    .local v4, result:Landroid/bluetooth/AtCommandResult;
    if-nez v1, :cond_24

    .line 2763
    const-string v0, "+CLCC: 1,0,0,0,0,\"\",0"

    .line 2770
    .local v0, args:Ljava/lang/String;
    :goto_20
    invoke-virtual {v4, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2776
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #number:Ljava/lang/String;
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    :goto_23
    return-object v4

    .line 2767
    .restart local v1       #number:Ljava/lang/String;
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CLCC: 1,0,0,0,0,\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #args:Ljava/lang/String;
    goto :goto_20

    .line 2773
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #number:Ljava/lang/String;
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    :cond_46
    const/4 v5, 0x2

    if-ne v3, v5, :cond_50

    .line 2774
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v4

    goto :goto_23

    .line 2775
    :cond_50
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5a

    .line 2776
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v4

    goto :goto_23

    .line 2778
    :cond_5a
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
