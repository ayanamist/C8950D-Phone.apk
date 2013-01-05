.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 385
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_16e

    .line 538
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 392
    :sswitch_8
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_7

    .line 396
    :sswitch_10
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 398
    const-string v4, "PhoneApp"

    const-string v5, "Ignoring EVENT_PERSO_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 404
    :cond_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 405
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 406
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneApp;->initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V

    goto :goto_7

    .line 417
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_37
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$000()Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "PhoneApp"

    const-string v5, "- updating in-call notification from handler..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_44
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_7

    .line 422
    :sswitch_4c
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_7

    .line 426
    :sswitch_54
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_7

    .line 430
    :sswitch_5c
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    goto :goto_7

    .line 434
    :sswitch_66
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_7

    .line 443
    :sswitch_6e
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 445
    .local v2, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_9b

    .line 446
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v4, :cond_8a

    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 447
    :cond_8a
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_b5

    .line 449
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 458
    :cond_9b
    :goto_9b
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v2}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 461
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v4, v4, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v4, :cond_7

    .line 462
    const/16 v4, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/PhoneApp$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 453
    :cond_b5
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_9b

    .line 470
    .end local v2           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_bf
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v5, "READY"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 474
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    if-eqz v4, :cond_da

    .line 475
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 476
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iput-object v6, v4, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 478
    :cond_da
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$100(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 479
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$100(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 480
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v4, v6}, Lcom/android/phone/PhoneApp;->access$102(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_7

    .line 492
    :sswitch_f2
    const/4 v1, 0x0

    .line 493
    .local v1, inDockMode:Z
    sget v4, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eqz v4, :cond_f8

    .line 494
    const/4 v1, 0x1

    .line 499
    :cond_f8
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 500
    .restart local v2       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v4, :cond_11c

    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-nez v4, :cond_7

    .line 503
    :cond_11c
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 504
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_7

    .line 511
    .end local v1           #inDockMode:Z
    .end local v2           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_12d
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 512
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget v3, v4, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 516
    .local v3, ttyMode:I
    :goto_139
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_7

    .line 514
    .end local v3           #ttyMode:I
    :cond_14c
    const/4 v3, 0x0

    .restart local v3       #ttyMode:I
    goto :goto_139

    .line 520
    .end local v3           #ttyMode:I
    :sswitch_14e
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v4, p1}, Lcom/android/phone/PhoneApp;->access$200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_7

    .line 524
    :sswitch_155
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v4, p1}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_7

    .line 530
    :sswitch_15c
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->showPrePostPay()V

    goto/16 :goto_7

    .line 534
    :sswitch_165
    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->hidePrePostPay()V

    goto/16 :goto_7

    .line 385
    :sswitch_data_16e
    .sparse-switch
        0x3 -> :sswitch_10
        0x7 -> :sswitch_6e
        0x8 -> :sswitch_bf
        0x9 -> :sswitch_37
        0xa -> :sswitch_4c
        0xb -> :sswitch_54
        0xc -> :sswitch_7
        0xd -> :sswitch_f2
        0xe -> :sswitch_12d
        0xf -> :sswitch_14e
        0x10 -> :sswitch_155
        0x11 -> :sswitch_8
        0x1e -> :sswitch_15c
        0x1f -> :sswitch_165
        0x34 -> :sswitch_5c
        0x35 -> :sswitch_66
    .end sparse-switch
.end method
