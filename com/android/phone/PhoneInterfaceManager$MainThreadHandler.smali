.class public Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 31
    .parameter "msg"

    .prologue
    .line 187
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4c0

    .line 455
    const-string v2, "PhoneInterfaceManager"

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

    .line 458
    :goto_23
    return-void

    .line 189
    :pswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 190
    .local v26, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 193
    monitor-enter v26

    .line 194
    :try_start_45
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 195
    monitor-exit v26

    goto :goto_23

    :catchall_4a
    move-exception v2

    monitor-exit v26
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v2

    .line 199
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 200
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 202
    .local v9, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_23

    .line 206
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_68
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 207
    .local v19, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 208
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_95

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_95

    .line 209
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 215
    :goto_8c
    monitor-enter v26

    .line 216
    :try_start_8d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 217
    monitor-exit v26

    goto :goto_23

    :catchall_92
    move-exception v2

    monitor-exit v26
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_92

    throw v2

    .line 212
    :cond_95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_8c

    .line 221
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_23

    .line 225
    :pswitch_a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_23

    .line 229
    :pswitch_b1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 230
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v23, 0x0

    .line 231
    .local v23, hungUp:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v25

    .line 232
    .local v25, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_e6

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v23

    .line 245
    :goto_d4
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 247
    monitor-enter v26

    .line 248
    :try_start_dd
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v26

    goto/16 :goto_23

    :catchall_e3
    move-exception v2

    monitor-exit v26
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_e3

    throw v2

    .line 236
    :cond_e6
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_f6

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v23

    goto :goto_d4

    .line 242
    :cond_f6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v23           #hungUp:Z
    .end local v25           #phoneType:I
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_111
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 254
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 255
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_23

    .line 259
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_136
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 260
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 261
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 263
    monitor-enter v26

    .line 264
    :try_start_14d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit v26

    goto/16 :goto_23

    :catchall_153
    move-exception v2

    monitor-exit v26
    :try_end_155
    .catchall {:try_start_14d .. :try_end_155} :catchall_153

    throw v2

    .line 269
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_156
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;

    .line 270
    .local v27, requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 272
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_23

    .line 277
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v27           #requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    :pswitch_17b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 278
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;

    .line 279
    .restart local v27       #requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->result:Ljava/lang/Object;

    .line 280
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->arg2:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/IOemHookCallback;

    .line 282
    .local v21, cb:Lcom/android/internal/telephony/IOemHookCallback;
    :try_start_19b
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IOemHookCallback;->onOemHookResponse([B)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_19b .. :try_end_1a8} :catch_1aa

    goto/16 :goto_23

    .line 283
    :catch_1aa
    move-exception v22

    .line 284
    .local v22, e:Landroid/os/RemoteException;
    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_23

    .line 289
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v21           #cb:Lcom/android/internal/telephony/IOemHookCallback;
    .end local v22           #e:Landroid/os/RemoteException;
    .end local v27           #requestAsync:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequestAsync;
    :pswitch_1b0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 290
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_23

    .line 294
    .end local v19           #ar:Landroid/os/AsyncResult;
    :pswitch_1c9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 295
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 296
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto/16 :goto_23

    .line 300
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1f0
    const/16 v28, 0x0

    .line 301
    .local v28, retStatus:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 302
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 304
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_20a

    .line 305
    const/16 v28, 0x1

    .line 307
    :cond_20a
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 310
    monitor-enter v26

    .line 311
    :try_start_213
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 312
    monitor-exit v26

    goto/16 :goto_23

    :catchall_219
    move-exception v2

    monitor-exit v26
    :try_end_21b
    .catchall {:try_start_213 .. :try_end_21b} :catchall_219

    throw v2

    .line 316
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v28           #retStatus:Z
    :pswitch_21c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 317
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 319
    .local v24, parameters:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 324
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 331
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v24           #parameters:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_257
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 332
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 333
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_28d

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_28d

    .line 334
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 345
    :cond_283
    :goto_283
    monitor-enter v26

    :try_start_284
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v26

    goto/16 :goto_23

    :catchall_28a
    move-exception v2

    monitor-exit v26
    :try_end_28c
    .catchall {:try_start_284 .. :try_end_28c} :catchall_28a

    throw v2

    .line 337
    :cond_28d
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 339
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_283

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_283

    .line 341
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_283

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_283

    .line 351
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2c9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 352
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 354
    .local v20, argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 356
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Lcom/android/phone/PhoneInterfaceManager;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 363
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v20           #argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_30e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 364
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 365
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_344

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_344

    .line 366
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 381
    :cond_33a
    :goto_33a
    monitor-enter v26

    .line 382
    :try_start_33b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 383
    monitor-exit v26

    goto/16 :goto_23

    :catchall_341
    move-exception v2

    monitor-exit v26
    :try_end_343
    .catchall {:try_start_33b .. :try_end_343} :catchall_341

    throw v2

    .line 369
    :cond_344
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 372
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_33a

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_33a

    .line 374
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_33a

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_33a

    .line 387
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_380
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 388
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 390
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v9}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 394
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3a1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 395
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 396
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3e3

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3e3

    .line 397
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 417
    :cond_3d9
    :goto_3d9
    monitor-enter v26

    .line 418
    :try_start_3da
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v26

    goto/16 :goto_23

    :catchall_3e0
    move-exception v2

    monitor-exit v26
    :try_end_3e2
    .catchall {:try_start_3da .. :try_end_3e2} :catchall_3e0

    throw v2

    .line 400
    :cond_3e3
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 402
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3d9

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_3d9

    .line 404
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_41a

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_3d9

    .line 409
    :cond_41a
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_3d9

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_3d9

    .line 423
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_431
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 424
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 426
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2, v9}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;ILandroid/os/Message;)V

    goto/16 :goto_23

    .line 432
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v26           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_456
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 433
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 434
    .restart local v26       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_488

    .line 435
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 449
    :cond_47e
    :goto_47e
    monitor-enter v26

    .line 450
    :try_start_47f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 451
    monitor-exit v26

    goto/16 :goto_23

    :catchall_485
    move-exception v2

    monitor-exit v26
    :try_end_487
    .catchall {:try_start_47f .. :try_end_487} :catchall_485

    throw v2

    .line 438
    :cond_488
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 440
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_47e

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_47e

    .line 442
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_47e

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_47e

    .line 187
    nop

    :pswitch_data_4c0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_4d
        :pswitch_68
        :pswitch_9f
        :pswitch_b1
        :pswitch_a8
        :pswitch_111
        :pswitch_136
        :pswitch_1b0
        :pswitch_1c9
        :pswitch_1f0
        :pswitch_156
        :pswitch_17b
        :pswitch_2c9
        :pswitch_30e
        :pswitch_380
        :pswitch_3a1
        :pswitch_431
        :pswitch_456
        :pswitch_21c
        :pswitch_257
    .end packed-switch
.end method
