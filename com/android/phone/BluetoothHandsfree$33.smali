.class Lcom/android/phone/BluetoothHandsfree$33;
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
    .line 3227
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 5

    .prologue
    .line 3230
    const/4 v0, 0x0

    .line 3231
    .local v0, status:I
    sget-object v1, Lcom/android/phone/BluetoothHandsfree$34;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    .line 3242
    :goto_16
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CPAS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 3233
    :pswitch_2f
    const/4 v0, 0x0

    .line 3234
    goto :goto_16

    .line 3236
    :pswitch_31
    const/4 v0, 0x3

    .line 3237
    goto :goto_16

    .line 3239
    :pswitch_33
    const/4 v0, 0x4

    goto :goto_16

    .line 3231
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_31
        :pswitch_33
    .end packed-switch
.end method
