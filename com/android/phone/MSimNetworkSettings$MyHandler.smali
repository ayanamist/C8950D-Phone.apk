.class Lcom/android/phone/MSimNetworkSettings$MyHandler;
.super Landroid/os/Handler;
.source "MSimNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimNetworkSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimNetworkSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimNetworkSettings;Lcom/android/phone/MSimNetworkSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MSimNetworkSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0xb

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 290
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b5

    .line 291
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 294
    .local v1, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$200(Lcom/android/phone/MSimNetworkSettings;)I

    move-result v2

    .line 300
    .local v2, settingsNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 305
    if-eqz v1, :cond_6a

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x6

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x7

    if-eq v1, v3, :cond_6a

    const/16 v3, 0x8

    if-eq v1, v3, :cond_6a

    const/16 v3, 0x9

    if-eq v1, v3, :cond_6a

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6a

    if-ne v1, v5, :cond_b6

    .line 318
    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 323
    if-eq v1, v2, :cond_a3

    .line 325
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 329
    move v2, v1

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v3, v2}, Lcom/android/phone/MSimNetworkSettings;->access$300(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 339
    :cond_a3
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v3, v1}, Lcom/android/phone/MSimNetworkSettings;->access$400(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 341
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 350
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_b5
    :goto_b5
    return-void

    .line 342
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_b6
    if-ne v1, v5, :cond_be

    .line 344
    const-string v3, "handleGetPreferredNetworkTypeResponse: lte only: no action"

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    goto :goto_b5

    .line 346
    :cond_be
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3}, Lcom/android/phone/MSimNetworkSettings;->access$100(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_b5
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 353
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 355
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_29

    .line 356
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 358
    .local v1, networkMode:I
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v2, v1}, Lcom/android/phone/MSimNetworkSettings;->access$300(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 363
    .end local v1           #networkMode:I
    :goto_1f
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->updatePhone(Lcom/android/internal/telephony/Phone;)V

    .line 365
    return-void

    .line 360
    :cond_29
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1f
.end method

.method private resetNetworkModeToDefault()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MSimNetworkSettings;->access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v0, v2}, Lcom/android/phone/MSimNetworkSettings;->access$300(Lcom/android/phone/MSimNetworkSettings;I)V

    .line 373
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MSimNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MSimNetworkSettings;->access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 375
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 285
    :goto_5
    return-void

    .line 278
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 282
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 276
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
