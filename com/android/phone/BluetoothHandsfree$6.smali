.class Lcom/android/phone/BluetoothHandsfree$6;
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
    .line 2388
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 10
    .parameter "args"

    .prologue
    const/16 v7, 0x3b

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2391
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a0

    .line 2392
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_59

    .line 2396
    const-string v3, ">9999"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2397
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2441
    :goto_1f
    return-object v3

    .line 2399
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2c

    .line 2401
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1f

    .line 2405
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4d

    .line 2406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2413
    :goto_42
    :try_start_42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_45} :catch_52

    move-result v2

    .line 2420
    .local v2, number:I
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$7000(Lcom/android/phone/BluetoothHandsfree;I)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_1f

    .line 2409
    .end local v2           #number:I
    :cond_4d
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    .line 2414
    :catch_52
    move-exception v0

    .line 2416
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1f

    .line 2424
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_59
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 2426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_74

    .line 2427
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2430
    :cond_74
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2432
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2434
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2435
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2437
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$7100(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2438
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1f

    .line 2441
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a0
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1f
.end method
