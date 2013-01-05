.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 233
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 234
    .local v0, ar:Landroid/os/AsyncResult;
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_15a

    .line 345
    :goto_9
    return-void

    .line 240
    :pswitch_a
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/Phone;

    .line 243
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CallManager;

    .line 250
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v7, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_39

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 252
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_1f

    .line 253
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1f

    .line 256
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_39
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3d
    :goto_3d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 257
    .local v4, cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3d

    .line 258
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 265
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_5d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, bgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6a
    :goto_6a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_84

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 267
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_6a

    .line 268
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6a

    .line 271
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_84
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_88
    :goto_88
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 272
    .restart local v4       #cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_88

    .line 273
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 281
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_a8
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 282
    .local v5, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_b4
    :goto_b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d0

    .line 283
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 284
    .restart local v4       #cn:Lcom/android/internal/telephony/Connection;
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b4

    .line 286
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_b4

    .line 290
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_d0
    sget-boolean v11, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v11, :cond_10a

    .line 291
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11f

    .line 292
    const/4 v10, 0x1

    .line 293
    .local v10, tempisAcitve:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_107

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 294
    .restart local v6       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_104

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v11

    if-eqz v11, :cond_104

    .line 295
    and-int/lit8 v10, v10, 0x0

    goto :goto_e4

    .line 297
    :cond_104
    and-int/lit8 v10, v10, 0x1

    goto :goto_e4

    .line 300
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_107
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->access$102(Z)Z

    .line 317
    .end local v10           #tempisAcitve:Z
    :cond_10a
    :goto_10a
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v11, v12, :cond_143

    .line 320
    sget-boolean v11, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v11, :cond_13e

    .line 323
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->restoreMuteState(I)Ljava/lang/Boolean;

    goto/16 :goto_9

    .line 301
    :cond_11f
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_136

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_10a

    .line 303
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->access$202(Z)Z

    .line 304
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->access$300(Lcom/android/internal/telephony/Phone;)V

    goto :goto_10a

    .line 307
    :cond_136
    const-string v11, "PhoneUtils"

    const-string v12, "Third type call mode ,except GSM and  CDMA!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a

    .line 325
    :cond_13e
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    goto/16 :goto_9

    .line 330
    :cond_143
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->access$400(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_9

    .line 336
    .end local v2           #bgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v3           #cm:Lcom/android/internal/telephony/CallManager;
    .end local v5           #cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v7           #fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_14d
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->access$502(Z)Z

    goto/16 :goto_9

    .line 341
    :pswitch_153
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->access$602(Z)Z

    goto/16 :goto_9

    .line 234
    nop

    :pswitch_data_15a
    .packed-switch -0x1
        :pswitch_a
        :pswitch_14d
        :pswitch_153
    .end packed-switch
.end method
