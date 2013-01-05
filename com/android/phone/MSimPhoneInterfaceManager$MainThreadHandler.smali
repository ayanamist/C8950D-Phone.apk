.class final Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 33
    .parameter "msg"

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v28

    .line 172
    .local v28, sub:I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4e4

    .line 438
    :pswitch_f
    const-string v2, "MSimPhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_2b
    return-void

    .line 174
    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 175
    .local v25, request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 176
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v23

    .line 177
    .local v23, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "MSimPhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_HANDLE_PIN_MMI: sub :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 181
    monitor-enter v25

    .line 182
    :try_start_79
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v25

    goto :goto_2b

    :catchall_7e
    move-exception v2

    monitor-exit v25
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_7e

    throw v2

    .line 187
    .end local v23           #phone:Lcom/android/internal/telephony/Phone;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_81
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 188
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 190
    .local v9, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_2b

    .line 194
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_9c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 195
    .local v19, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 196
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_ca

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_ca

    .line 197
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 203
    :goto_c0
    monitor-enter v25

    .line 204
    :try_start_c1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_c7
    move-exception v2

    monitor-exit v25
    :try_end_c9
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_c7

    throw v2

    .line 200
    :cond_ca
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_c0

    .line 209
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-static {v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    goto/16 :goto_2b

    .line 213
    :pswitch_dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-static {v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$100(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    goto/16 :goto_2b

    .line 217
    :pswitch_e6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 218
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v21, 0x0

    .line 219
    .local v21, hungUp:Z
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending call on subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$200(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v23

    .line 222
    .restart local v23       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    .line 223
    .local v24, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_141

    .line 226
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v21

    .line 234
    :goto_12f
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 236
    monitor-enter v25

    .line 237
    :try_start_138
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_13e
    move-exception v2

    monitor-exit v25
    :try_end_140
    .catchall {:try_start_138 .. :try_end_140} :catchall_13e

    throw v2

    .line 227
    :cond_141
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_14b

    .line 229
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v21

    goto :goto_12f

    .line 231
    :cond_14b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    .end local v21           #hungUp:Z
    .end local v23           #phone:Lcom/android/internal/telephony/Phone;
    .end local v24           #phoneType:I
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_166
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 243
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 244
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_2b

    .line 248
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_18b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 249
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 250
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 252
    monitor-enter v25

    .line 253
    :try_start_1a2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 254
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_1a8
    move-exception v2

    monitor-exit v25
    :try_end_1aa
    .catchall {:try_start_1a2 .. :try_end_1aa} :catchall_1a8

    throw v2

    .line 258
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_1ab
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 259
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_2b

    .line 263
    .end local v19           #ar:Landroid/os/AsyncResult;
    :pswitch_1c4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 264
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 265
    .local v30, subscription:I
    const/16 v2, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 266
    .restart local v9       #onCompleted:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v29

    .line 267
    .local v29, subManager:Lcom/android/internal/telephony/SubscriptionManager;
    if-eqz v29, :cond_1ef

    .line 268
    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    goto/16 :goto_2b

    .line 272
    :cond_1ef
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 273
    monitor-enter v25

    .line 274
    :try_start_1f9
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 275
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_1ff
    move-exception v2

    monitor-exit v25
    :try_end_201
    .catchall {:try_start_1f9 .. :try_end_201} :catchall_1ff

    throw v2

    .line 280
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    .end local v29           #subManager:Lcom/android/internal/telephony/SubscriptionManager;
    .end local v30           #subscription:I
    :pswitch_202
    const/16 v27, 0x0

    .line 281
    .local v27, retStatus:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 282
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 284
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_22e

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_22e

    .line 285
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    .line 286
    .local v26, result:Z
    if-eqz v26, :cond_22e

    .line 287
    const/16 v27, 0x1

    .line 290
    .end local v26           #result:Z
    :cond_22e
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 293
    monitor-enter v25

    .line 294
    :try_start_237
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_23d
    move-exception v2

    monitor-exit v25
    :try_end_23f
    .catchall {:try_start_237 .. :try_end_23f} :catchall_23d

    throw v2

    .line 299
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    .end local v27           #retStatus:Z
    :pswitch_240
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 300
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    .line 302
    .local v22, parameters:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 307
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$300(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 314
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v22           #parameters:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_27b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 315
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 316
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2b1

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2b1

    .line 317
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 328
    :cond_2a7
    :goto_2a7
    monitor-enter v25

    :try_start_2a8
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v25

    goto/16 :goto_2b

    :catchall_2ae
    move-exception v2

    monitor-exit v25
    :try_end_2b0
    .catchall {:try_start_2a8 .. :try_end_2b0} :catchall_2ae

    throw v2

    .line 320
    :cond_2b1
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 322
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2a7

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_2a7

    .line 324
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_2a7

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    goto :goto_2a7

    .line 333
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_2ed
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 334
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    .line 336
    .local v20, argument:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 338
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$500(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 345
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v20           #argument:Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_332
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 346
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 347
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_368

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_368

    .line 348
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 363
    :cond_35e
    :goto_35e
    monitor-enter v25

    .line 364
    :try_start_35f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 365
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_365
    move-exception v2

    monitor-exit v25
    :try_end_367
    .catchall {:try_start_35f .. :try_end_367} :catchall_365

    throw v2

    .line 351
    :cond_368
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 354
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_35e

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_35e

    .line 356
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_35e

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    goto :goto_35e

    .line 369
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_3a4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 370
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 372
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v9}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$600(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 376
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_3c5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 377
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 378
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_407

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_407

    .line 379
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 399
    :cond_3fd
    :goto_3fd
    monitor-enter v25

    .line 400
    :try_start_3fe
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_404
    move-exception v2

    monitor-exit v25
    :try_end_406
    .catchall {:try_start_3fe .. :try_end_406} :catchall_404

    throw v2

    .line 382
    :cond_407
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 384
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3fd

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_3fd

    .line 386
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_43e

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    goto :goto_3fd

    .line 391
    :cond_43e
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_3fd

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    goto :goto_3fd

    .line 405
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_455
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 406
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 408
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2, v9}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$700(Lcom/android/phone/MSimPhoneInterfaceManager;ILandroid/os/Message;)V

    goto/16 :goto_2b

    .line 414
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v25           #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_47a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 415
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 416
    .restart local v25       #request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4ac

    .line 417
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 431
    :cond_4a2
    :goto_4a2
    monitor-enter v25

    .line 432
    :try_start_4a3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 433
    monitor-exit v25

    goto/16 :goto_2b

    :catchall_4a9
    move-exception v2

    monitor-exit v25
    :try_end_4ab
    .catchall {:try_start_4a3 .. :try_end_4ab} :catchall_4a9

    throw v2

    .line 420
    :cond_4ac
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    .line 422
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4a2

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_4a2

    .line 424
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_4a2

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I

    goto :goto_4a2

    .line 172
    nop

    :pswitch_data_4e4
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_81
        :pswitch_9c
        :pswitch_d4
        :pswitch_e6
        :pswitch_dd
        :pswitch_166
        :pswitch_18b
        :pswitch_1ab
        :pswitch_1c4
        :pswitch_202
        :pswitch_2ed
        :pswitch_332
        :pswitch_3a4
        :pswitch_3c5
        :pswitch_455
        :pswitch_47a
        :pswitch_f
        :pswitch_f
        :pswitch_240
        :pswitch_27b
    .end packed-switch
.end method
